
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curthread_pflags_restore (int) ;

void
vm_fault_enable_pagefaults(int save)
{

 curthread_pflags_restore(save);
}
