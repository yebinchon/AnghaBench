
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jobspec_hdr {int dummy; } ;
struct jobspec {struct jobspec* matcheduser; struct jobspec* fmtoutput; } ;


 int STAILQ_EMPTY (struct jobspec_hdr*) ;
 struct jobspec* STAILQ_FIRST (struct jobspec_hdr*) ;
 int STAILQ_REMOVE_HEAD (struct jobspec_hdr*,int ) ;
 int free (struct jobspec*) ;
 int nextjs ;

void
free_jobspec(struct jobspec_hdr *js_hdr)
{
 struct jobspec *jsinf;

 while (!STAILQ_EMPTY(js_hdr)) {
  jsinf = STAILQ_FIRST(js_hdr);
  STAILQ_REMOVE_HEAD(js_hdr, nextjs);
  if (jsinf->fmtoutput)
   free(jsinf->fmtoutput);
  if (jsinf->matcheduser)
   free(jsinf->matcheduser);
  free(jsinf);
 }
}
