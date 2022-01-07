
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct smb_rq {int sr_flags; } ;
struct smb_cred {int dummy; } ;
struct smb_connobj {int dummy; } ;


 int ENOMEM ;
 int M_SMBRQ ;
 int M_WAITOK ;
 int SMBR_ALLOCED ;
 struct smb_rq* malloc (int,int ,int ) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_init (struct smb_rq*,struct smb_connobj*,int ,struct smb_cred*) ;

int
smb_rq_alloc(struct smb_connobj *layer, u_char cmd, struct smb_cred *scred,
 struct smb_rq **rqpp)
{
 struct smb_rq *rqp;
 int error;

 rqp = malloc(sizeof(*rqp), M_SMBRQ, M_WAITOK);
 if (rqp == ((void*)0))
  return ENOMEM;
 error = smb_rq_init(rqp, layer, cmd, scred);
 rqp->sr_flags |= SMBR_ALLOCED;
 if (error) {
  smb_rq_done(rqp);
  return error;
 }
 *rqpp = rqp;
 return 0;
}
