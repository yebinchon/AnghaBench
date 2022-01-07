
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct isp_fc {int def_wwnn; int def_wwpn; } ;
struct TYPE_6__ {int isp_dev; } ;
typedef TYPE_1__ ispsoftc_t ;
struct TYPE_7__ {int isp_wwnn_nvram; int isp_wwpn_nvram; } ;


 TYPE_4__* FCPARAM (TYPE_1__*,int) ;
 struct isp_fc* ISP_FC_PC (TYPE_1__*,int) ;
 int device_get_unit (int ) ;

uint64_t
isp_default_wwn(ispsoftc_t * isp, int chan, int isactive, int iswwnn)
{
 uint64_t seed;
 struct isp_fc *fc = ISP_FC_PC(isp, chan);


 seed = iswwnn ? fc->def_wwnn : fc->def_wwpn;
 if (seed)
  return (seed);


 if (isactive) {
  seed = iswwnn ? FCPARAM(isp, chan)->isp_wwnn_nvram :
      FCPARAM(isp, chan)->isp_wwpn_nvram;
  if (seed)
   return (seed);
 }


 if (chan > 0) {
  seed = iswwnn ? ISP_FC_PC(isp, 0)->def_wwnn :
      ISP_FC_PC(isp, 0)->def_wwpn;
  if (seed == 0) {
   seed = iswwnn ? FCPARAM(isp, 0)->isp_wwnn_nvram :
       FCPARAM(isp, 0)->isp_wwpn_nvram;
  }
 }


 if (seed == 0) {
  seed = 0x400000007F000000ull + device_get_unit(isp->isp_dev);
  if (!iswwnn)
   seed ^= 0x0100000000000000ULL;
 }


 if (!iswwnn && chan > 0) {





  seed ^= 0x0100000000000000ULL;
  seed ^= ((uint64_t) (chan + 1) & 0xf) << 56;
  seed ^= ((uint64_t) ((chan + 1) >> 4) & 0xf) << 52;
 }
 return (seed);
}
