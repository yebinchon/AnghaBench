
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TDP_NOFAULTING ;
 int TDP_RESETSPUR ;
 int curthread_pflags_set (int) ;

int
vm_fault_disable_pagefaults(void)
{

 return (curthread_pflags_set(TDP_NOFAULTING | TDP_RESETSPUR));
}
