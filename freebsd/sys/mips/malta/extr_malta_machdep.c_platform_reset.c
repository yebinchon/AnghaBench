
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char MALTA_GORESET ;
 int MALTA_SOFTRES ;
 scalar_t__ MIPS_PHYS_TO_KSEG0 (int ) ;

void
platform_reset(void)
{
 char *c;

 c = (char *)MIPS_PHYS_TO_KSEG0(MALTA_SOFTRES);
 *c = MALTA_GORESET;
}
