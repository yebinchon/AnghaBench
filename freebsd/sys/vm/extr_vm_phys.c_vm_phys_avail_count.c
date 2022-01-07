
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHYS_AVAIL_ENTRIES ;
 int panic (char*,int) ;
 scalar_t__* phys_avail ;

__attribute__((used)) static int
vm_phys_avail_count(void)
{
 int i;

 for (i = 0; phys_avail[i + 1]; i += 2)
  continue;
 if (i > PHYS_AVAIL_ENTRIES)
  panic("Improperly terminated phys_avail %d entries", i);

 return (i);
}
