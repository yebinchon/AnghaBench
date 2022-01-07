
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {uintptr_t pc; uintptr_t sp; uintptr_t ra; } ;
typedef uintptr_t register_t ;


 scalar_t__ pmc_next_frame (uintptr_t*,uintptr_t*) ;

int
pmc_save_kernel_callchain(uintptr_t *cc, int nframes,
    struct trapframe *tf)
{
 register_t pc, ra, sp;
 int frames = 0;

 pc = tf->pc;
 sp = tf->sp;
 ra = tf->ra;

 cc[frames++] = pc;
 return (frames);
}
