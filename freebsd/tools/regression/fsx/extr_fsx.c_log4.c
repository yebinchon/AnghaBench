
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_CLOSEOPEN ;
 int OP_INVALIDATE ;
 scalar_t__ closeopen ;
 int do_log4 (int,int,int,int) ;
 scalar_t__ invl ;

void
log4(int operation, int arg0, int arg1, int arg2)
{
 do_log4(operation, arg0, arg1, arg2);
 if (closeopen)
  do_log4(OP_CLOSEOPEN, 0, 0, 0);
 if (invl)
  do_log4(OP_INVALIDATE, 0, 0, 0);
}
