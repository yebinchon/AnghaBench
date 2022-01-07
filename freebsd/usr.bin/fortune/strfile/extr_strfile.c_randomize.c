
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int off_t ;
struct TYPE_2__ {scalar_t__ str_numstr; int str_flags; } ;


 int STR_RANDOM ;
 int * Seekpts ;
 TYPE_1__ Tbl ;
 scalar_t__ arc4random_uniform (scalar_t__) ;

void
randomize(void)
{
 uint32_t cnt, i;
 off_t tmp;
 off_t *sp;

 Tbl.str_flags |= STR_RANDOM;
 cnt = Tbl.str_numstr;





 for (sp = Seekpts; cnt > 0; cnt--, sp++) {
  i = arc4random_uniform(cnt);
  tmp = sp[0];
  sp[0] = sp[i];
  sp[i] = tmp;
 }
}
