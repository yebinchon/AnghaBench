
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;


 int RFCOMM_FRAME_UIH ;
 scalar_t__ ng_btsocket_rfcomm_fcs2 (scalar_t__*) ;
 scalar_t__ ng_btsocket_rfcomm_fcs3 (scalar_t__*) ;

__attribute__((used)) static int
ng_btsocket_rfcomm_check_fcs(u_int8_t *data, int type, u_int8_t fcs)
{
 if (type != RFCOMM_FRAME_UIH)
  return (ng_btsocket_rfcomm_fcs3(data) != fcs);

 return (ng_btsocket_rfcomm_fcs2(data) != fcs);
}
