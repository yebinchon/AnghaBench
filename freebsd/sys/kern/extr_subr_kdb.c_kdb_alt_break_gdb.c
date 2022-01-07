
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kdb_alt_break_internal (int,int*,int) ;

int
kdb_alt_break_gdb(int key, int *state)
{

 return (kdb_alt_break_internal(key, state, 1));
}
