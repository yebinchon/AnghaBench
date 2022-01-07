
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_stateflags; } ;
typedef TYPE_1__ teken_t ;
typedef char teken_char_t ;


 int TS_8BIT ;

__attribute__((used)) static teken_char_t
teken_scs_uk_national(const teken_t *t, teken_char_t c)
{


 if (c == '#')
  return (t->t_stateflags & TS_8BIT ? 0x9c : 0xa3);
 return (c);
}
