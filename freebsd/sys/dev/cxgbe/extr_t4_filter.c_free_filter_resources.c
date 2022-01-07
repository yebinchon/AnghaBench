
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_entry {int * smt; int * l2te; } ;


 int t4_l2t_release (int *) ;
 int t4_smt_release (int *) ;

__attribute__((used)) static void
free_filter_resources(struct filter_entry *f)
{

 if (f->l2te) {
  t4_l2t_release(f->l2te);
  f->l2te = ((void*)0);
 }
 if (f->smt) {
  t4_smt_release(f->smt);
  f->smt = ((void*)0);
 }
}
