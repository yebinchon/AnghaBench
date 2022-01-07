
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct glxsb_session {int * ses_octx; TYPE_1__* ses_axf; int * ses_ictx; } ;
struct TYPE_2__ {int ctxsize; } ;


 int M_GLXSB ;
 int bzero (int *,int ) ;
 int free (int *,int ) ;

void
glxsb_hash_free(struct glxsb_session *ses)
{

 if (ses->ses_ictx != ((void*)0)) {
  bzero(ses->ses_ictx, ses->ses_axf->ctxsize);
  free(ses->ses_ictx, M_GLXSB);
  ses->ses_ictx = ((void*)0);
 }
 if (ses->ses_octx != ((void*)0)) {
  bzero(ses->ses_octx, ses->ses_axf->ctxsize);
  free(ses->ses_octx, M_GLXSB);
  ses->ses_octx = ((void*)0);
 }
}
