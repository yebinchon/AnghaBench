
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_esp; } ;


 scalar_t__ TF_HAS_STACKREGS (struct trapframe*) ;

__attribute__((used)) static __inline int
get_esp(struct trapframe *tf)
{
 return (TF_HAS_STACKREGS(tf) ? tf->tf_esp : (intptr_t)&tf->tf_esp);
}
