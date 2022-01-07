
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int n_type; int n_name; struct name* n_flink; } ;
struct header {int * h_bcc; int * h_cc; int * h_to; } ;


 int GBCC ;
 int GCC ;
 int GDEL ;
 int GMASK ;
 int GTO ;
 void* cat (int *,int ) ;
 int nalloc (int ,int) ;

void
fixhead(struct header *hp, struct name *tolist)
{
 struct name *np;

 hp->h_to = ((void*)0);
 hp->h_cc = ((void*)0);
 hp->h_bcc = ((void*)0);
 for (np = tolist; np != ((void*)0); np = np->n_flink) {

  if (np->n_type & GDEL)
   continue;
  if ((np->n_type & GMASK) == GTO)
   hp->h_to =
       cat(hp->h_to, nalloc(np->n_name, np->n_type));
  else if ((np->n_type & GMASK) == GCC)
   hp->h_cc =
       cat(hp->h_cc, nalloc(np->n_name, np->n_type));
  else if ((np->n_type & GMASK) == GBCC)
   hp->h_bcc =
       cat(hp->h_bcc, nalloc(np->n_name, np->n_type));
 }
}
