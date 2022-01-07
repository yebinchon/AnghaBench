
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tqg_smp_started ;

__attribute__((used)) static void
tqg_record_smp_started(void *arg)
{
 tqg_smp_started = 1;
}
