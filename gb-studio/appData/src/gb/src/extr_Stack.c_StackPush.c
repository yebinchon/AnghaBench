
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;



void StackPush(UINT8 * stack, UINT8 elem)
{
  stack[++stack[0]] = elem;
}
