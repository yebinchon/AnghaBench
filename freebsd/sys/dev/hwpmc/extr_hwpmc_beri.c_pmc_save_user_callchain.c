
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;



int
pmc_save_user_callchain(uintptr_t *cc, int nframes,
    struct trapframe *tf)
{

 return (0);
}
