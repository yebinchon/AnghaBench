
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_sec; } ;
struct smbiod {int iod_sleeptimo; int iod_evlock; int iod_rqlock; scalar_t__ iod_id; int iod_p; int iod_evlist; int iod_rqlist; int iod_lastrqsent; TYPE_1__ iod_pingtimo; struct smb_vc* iod_vc; int iod_state; } ;
struct smb_vc {struct smbiod* vc_iod; } ;


 int M_SMBIOD ;
 int M_WAITOK ;
 int RFNOWAIT ;
 int SMBERROR (char*,int) ;
 int SMBIOD_PING_TIMO ;
 int SMBIOD_SLEEP_TIMO ;
 int SMBIOD_ST_NOTCONN ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int free (struct smbiod*,int ) ;
 int getnanotime (int *) ;
 int hz ;
 int kproc_create (int ,struct smbiod*,int *,int ,int ,char*,scalar_t__) ;
 int smb_iod_next ;
 int smb_iod_thread ;
 int smb_sl_destroy (int *) ;
 int smb_sl_init (int *,char*) ;
 struct smbiod* smb_zmalloc (int,int ,int ) ;

int
smb_iod_create(struct smb_vc *vcp)
{
 struct smbiod *iod;
 int error;

 iod = smb_zmalloc(sizeof(*iod), M_SMBIOD, M_WAITOK);
 iod->iod_id = smb_iod_next++;
 iod->iod_state = SMBIOD_ST_NOTCONN;
 iod->iod_vc = vcp;
 iod->iod_sleeptimo = hz * SMBIOD_SLEEP_TIMO;
 iod->iod_pingtimo.tv_sec = SMBIOD_PING_TIMO;
 getnanotime(&iod->iod_lastrqsent);
 vcp->vc_iod = iod;
 smb_sl_init(&iod->iod_rqlock, "90rql");
 TAILQ_INIT(&iod->iod_rqlist);
 smb_sl_init(&iod->iod_evlock, "90evl");
 STAILQ_INIT(&iod->iod_evlist);
 error = kproc_create(smb_iod_thread, iod, &iod->iod_p,
     RFNOWAIT, 0, "smbiod%d", iod->iod_id);
 if (error) {
  SMBERROR("can't start smbiod: %d", error);
  vcp->vc_iod = ((void*)0);
  smb_sl_destroy(&iod->iod_rqlock);
  smb_sl_destroy(&iod->iod_evlock);
  free(iod, M_SMBIOD);
  return error;
 }
 return 0;
}
