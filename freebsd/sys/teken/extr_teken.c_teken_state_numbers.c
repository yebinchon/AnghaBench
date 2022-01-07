
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t t_curnum; int t_stateflags; char* t_nums; } ;
typedef TYPE_1__ teken_t ;
typedef char teken_char_t ;


 int TS_FIRSTDIGIT ;
 size_t T_NUMSIZE ;
 int UINT_MAX ;
 int teken_assert (int) ;
 int teken_state_init ;
 int teken_state_switch (TYPE_1__*,int ) ;

__attribute__((used)) static int
teken_state_numbers(teken_t *t, teken_char_t c)
{

 teken_assert(t->t_curnum < T_NUMSIZE);

 if (c >= '0' && c <= '9') {
  if (t->t_stateflags & TS_FIRSTDIGIT) {

   t->t_stateflags &= ~TS_FIRSTDIGIT;
   t->t_nums[t->t_curnum] = c - '0';
  } else if (t->t_nums[t->t_curnum] < UINT_MAX / 100) {
   t->t_nums[t->t_curnum] =
       t->t_nums[t->t_curnum] * 10 + c - '0';
  }
  return (1);
 } else if (c == ';') {
  if (t->t_stateflags & TS_FIRSTDIGIT)
   t->t_nums[t->t_curnum] = 0;


  if (++t->t_curnum == T_NUMSIZE) {
   teken_state_switch(t, teken_state_init);
   return (1);
  }

  t->t_stateflags |= TS_FIRSTDIGIT;
  return (1);
 } else {
  if (t->t_stateflags & TS_FIRSTDIGIT && t->t_curnum > 0) {

   t->t_nums[t->t_curnum] = 0;
   t->t_curnum++;
  } else if ((t->t_stateflags & TS_FIRSTDIGIT) == 0) {

   t->t_curnum++;
  }
 }

 return (0);
}
