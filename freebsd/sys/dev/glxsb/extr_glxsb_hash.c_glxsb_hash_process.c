
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_session {int dummy; } ;
struct cryptop {int crp_flags; int crp_buf; } ;
struct cryptodesc {int crd_flags; int crd_klen; int crd_key; } ;


 int CRD_F_KEY_EXPLICIT ;
 int glxsb_authcompute (struct glxsb_session*,struct cryptodesc*,int ,int ) ;
 int glxsb_hash_key_setup (struct glxsb_session*,int ,int ) ;

int
glxsb_hash_process(struct glxsb_session *ses, struct cryptodesc *maccrd,
    struct cryptop *crp)
{
 int error;

 if ((maccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0)
  glxsb_hash_key_setup(ses, maccrd->crd_key, maccrd->crd_klen);

 error = glxsb_authcompute(ses, maccrd, crp->crp_buf, crp->crp_flags);
 return (error);
}
