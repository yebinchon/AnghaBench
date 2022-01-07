
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;



UINT8 StackPop(UINT8 * stack)
{
  return stack[(stack[0]--)];
}
