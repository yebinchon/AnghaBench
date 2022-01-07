
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct smb_t2rq {int t2_setupcount; int t2_fid; int t2_vc; struct smb_cred* t2_cred; int * t2_setup; int * t2_setupdata; struct smb_connobj* t2_source; } ;
struct smb_cred {int dummy; } ;
struct smb_connobj {int dummy; } ;


 int bzero (struct smb_t2rq*,int) ;
 int smb_rq_getenv (struct smb_connobj*,int *,int *) ;

int
smb_t2_init(struct smb_t2rq *t2p, struct smb_connobj *source, u_short setup,
 struct smb_cred *scred)
{
 int error;

 bzero(t2p, sizeof(*t2p));
 t2p->t2_source = source;
 t2p->t2_setupcount = 1;
 t2p->t2_setupdata = t2p->t2_setup;
 t2p->t2_setup[0] = setup;
 t2p->t2_fid = 0xffff;
 t2p->t2_cred = scred;
 error = smb_rq_getenv(source, &t2p->t2_vc, ((void*)0));
 if (error)
  return error;
 return 0;
}
