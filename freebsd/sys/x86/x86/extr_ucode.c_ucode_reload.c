
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCPU_GET (int ) ;
 int cpuid ;
 int ucode_load_ap (int ) ;

void
ucode_reload(void)
{

 ucode_load_ap(PCPU_GET(cpuid));
}
