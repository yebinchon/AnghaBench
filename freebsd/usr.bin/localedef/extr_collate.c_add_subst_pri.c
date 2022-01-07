
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 size_t COLLATE_STR_LEN ;
 size_t curr_subst ;
 int fprintf (int ,char*) ;
 int stderr ;
 int * subst_weights ;

__attribute__((used)) static void
add_subst_pri(int32_t ref)
{
 if (curr_subst >= COLLATE_STR_LEN) {
  fprintf(stderr,"substitution string is too long");
  return;
 }
 subst_weights[curr_subst] = ref;
 curr_subst++;
}
