
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct nbpcb {int dummy; } ;



__attribute__((used)) static int
nb_intr(struct nbpcb *nbp, struct proc *p)
{
 return 0;
}
