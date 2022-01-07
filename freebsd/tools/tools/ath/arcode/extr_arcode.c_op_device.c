
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct athregrec {int reg; int val; } ;


 int printf (char*,int,int) ;

__attribute__((used)) static void
op_device(struct athregrec *a)
{
        printf("device\t0x%x/0x%x\n", a->reg, a->val);
}
