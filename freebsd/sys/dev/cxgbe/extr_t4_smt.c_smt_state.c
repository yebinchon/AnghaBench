
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_entry {int state; } ;





__attribute__((used)) static char
smt_state(const struct smt_entry *e)
{
 switch (e->state) {
 case 128: return 'X';
 case 129: return 'E';
 default: return 'U';
 }
}
