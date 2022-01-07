
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct isp_nexus {size_t tgt; scalar_t__ lun; int crnseed; struct isp_nexus* next; } ;
struct isp_fc {struct isp_nexus** nexus_hash; struct isp_nexus* nexus_free_list; } ;
typedef scalar_t__ lun_id_t ;
struct TYPE_6__ {struct isp_fc* fc; } ;
struct TYPE_7__ {TYPE_1__ pc; } ;
struct TYPE_8__ {TYPE_2__ isp_osinfo; } ;
typedef TYPE_3__ ispsoftc_t ;
typedef int XS_T ;


 scalar_t__ IS_2100 (TYPE_3__*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NEXUS_HASH (size_t,scalar_t__) ;
 size_t XS_CHANNEL (int *) ;
 scalar_t__ XS_LUN (int *) ;
 size_t XS_TGT (int *) ;
 struct isp_nexus* malloc (int,int ,int) ;

int
isp_fcp_next_crn(ispsoftc_t *isp, uint8_t *crnp, XS_T *cmd)
{
 lun_id_t lun;
 uint32_t chan, tgt;
 struct isp_fc *fc;
 struct isp_nexus *nxp;
 int idx;

 if (IS_2100(isp))
  return (0);

 chan = XS_CHANNEL(cmd);
 tgt = XS_TGT(cmd);
 lun = XS_LUN(cmd);
 fc = &isp->isp_osinfo.pc.fc[chan];
 idx = NEXUS_HASH(tgt, lun);
 nxp = fc->nexus_hash[idx];

 while (nxp) {
  if (nxp->tgt == tgt && nxp->lun == lun)
   break;
  nxp = nxp->next;
 }
 if (nxp == ((void*)0)) {
  nxp = fc->nexus_free_list;
  if (nxp == ((void*)0)) {
   nxp = malloc(sizeof (struct isp_nexus), M_DEVBUF, M_ZERO|M_NOWAIT);
   if (nxp == ((void*)0)) {
    return (-1);
   }
  } else {
   fc->nexus_free_list = nxp->next;
  }
  nxp->tgt = tgt;
  nxp->lun = lun;
  nxp->next = fc->nexus_hash[idx];
  fc->nexus_hash[idx] = nxp;
 }
 if (nxp->crnseed == 0)
  nxp->crnseed = 1;
 *crnp = nxp->crnseed++;
 return (0);
}
