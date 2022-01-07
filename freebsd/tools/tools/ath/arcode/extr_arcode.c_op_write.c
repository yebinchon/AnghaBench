
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct athregrec {int reg; int val; } ;


 int printf (char*,int,int) ;

__attribute__((used)) static void
op_write(struct athregrec *a)
{
        printf("write\t%.8x = %.8x\n", a->reg, a->val);
}
