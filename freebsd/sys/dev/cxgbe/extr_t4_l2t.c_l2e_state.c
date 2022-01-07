
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_entry {int state; int wr_list; } ;







 int STAILQ_EMPTY (int *) ;

__attribute__((used)) static char
l2e_state(const struct l2t_entry *e)
{
 switch (e->state) {
 case 128: return 'V';
 case 131: return 'S';
 case 129: return 'W';
 case 132: return STAILQ_EMPTY(&e->wr_list) ? 'R' : 'A';
 case 130: return 'X';
 default: return 'U';
 }
}
