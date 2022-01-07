
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct smb_t2rq {int t2_flags; } ;
struct smb_cred {int dummy; } ;
struct smb_connobj {int dummy; } ;


 int ENOMEM ;
 int M_SMBRQ ;
 int M_WAITOK ;
 int SMBT2_ALLOCED ;
 struct smb_t2rq* malloc (int,int ,int ) ;
 int smb_t2_done (struct smb_t2rq*) ;
 int smb_t2_init (struct smb_t2rq*,struct smb_connobj*,int ,struct smb_cred*) ;

int
smb_t2_alloc(struct smb_connobj *layer, u_short setup, struct smb_cred *scred,
 struct smb_t2rq **t2pp)
{
 struct smb_t2rq *t2p;
 int error;

 t2p = malloc(sizeof(*t2p), M_SMBRQ, M_WAITOK);
 if (t2p == ((void*)0))
  return ENOMEM;
 error = smb_t2_init(t2p, layer, setup, scred);
 t2p->t2_flags |= SMBT2_ALLOCED;
 if (error) {
  smb_t2_done(t2p);
  return error;
 }
 *t2pp = t2p;
 return 0;
}
