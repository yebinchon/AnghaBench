
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int teken_funcs_post_input (int *) ;
 int teken_funcs_pre_input (int *) ;
 int teken_input_byte (int *,int ) ;

void
teken_input(teken_t *t, const void *buf, size_t len)
{
 const char *c = buf;

 teken_funcs_pre_input(t);
 while (len-- > 0)
  teken_input_byte(t, *c++);
 teken_funcs_post_input(t);
}
