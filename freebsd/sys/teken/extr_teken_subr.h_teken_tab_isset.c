
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* t_tabstops; } ;
typedef TYPE_1__ teken_t ;


 unsigned int T_NUMCOL ;

__attribute__((used)) static inline int
teken_tab_isset(const teken_t *t, unsigned int col)
{
 unsigned int b, o;

 if (col >= T_NUMCOL)
  return ((col % 8) == 0);

 b = col / (sizeof(unsigned int) * 8);
 o = col % (sizeof(unsigned int) * 8);

 return (t->t_tabstops[b] & (1U << o));
}
