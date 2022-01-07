
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nd_opt {int opt_list; } ;
struct nd_optlist {int dummy; } ;


 struct nd_optlist* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct nd_optlist*,int ) ;
 int free (struct nd_optlist*) ;
 int nol_next ;

__attribute__((used)) static void
free_ndopts(union nd_opt *ndopts)
{
 struct nd_optlist *nol;

 while ((nol = TAILQ_FIRST(&ndopts->opt_list)) != ((void*)0)) {
  TAILQ_REMOVE(&ndopts->opt_list, nol, nol_next);
  free(nol);
 }
}
