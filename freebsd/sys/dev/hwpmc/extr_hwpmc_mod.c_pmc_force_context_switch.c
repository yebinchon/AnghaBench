
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pause (char*,int) ;

__attribute__((used)) static void
pmc_force_context_switch(void)
{

 pause("pmcctx", 1);
}
