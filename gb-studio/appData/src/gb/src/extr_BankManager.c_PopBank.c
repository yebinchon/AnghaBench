
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REFRESH_BANK ;
 int StackPop (int ) ;
 int bank_stack ;

void PopBank()
{
  StackPop(bank_stack);
  REFRESH_BANK;
}
