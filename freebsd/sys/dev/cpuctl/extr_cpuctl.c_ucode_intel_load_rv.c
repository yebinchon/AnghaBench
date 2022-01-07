
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucode_update_data {scalar_t__ cpu; int ptr; int ret; } ;


 scalar_t__ PCPU_GET (int ) ;
 int cpuid ;
 int ucode_intel_load (int ,int,int *,int *) ;

__attribute__((used)) static void
ucode_intel_load_rv(void *arg)
{
 struct ucode_update_data *d;

 d = arg;
 if (PCPU_GET(cpuid) == d->cpu)
  d->ret = ucode_intel_load(d->ptr, 1, ((void*)0), ((void*)0));
}
