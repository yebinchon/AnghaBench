
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bail_internal (int,int,int ) ;

__attribute__((used)) static void
bail(int sec, int eval)
{
 bail_internal(sec, eval, 0);
}
