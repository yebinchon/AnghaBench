
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int SWITCH_ROM (int ) ;
 int StackPush (int ,int ) ;
 int bank_stack ;

void PushBank(UINT8 b)
{
  StackPush(bank_stack, b);
  SWITCH_ROM(b);
}
