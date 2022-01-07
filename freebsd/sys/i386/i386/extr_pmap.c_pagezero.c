
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPUCLASS_686 ;
 int CPUID_SSE2 ;
 int PAGE_SIZE ;
 int bzero (void*,int ) ;
 scalar_t__ cpu_class ;
 int cpu_feature ;
 int i686_pagezero (void*) ;
 int sse2_pagezero (void*) ;

__attribute__((used)) static __inline void
pagezero(void *page)
{
  bzero(page, PAGE_SIZE);
}
