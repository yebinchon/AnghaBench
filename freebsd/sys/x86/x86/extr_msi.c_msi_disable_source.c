
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsrc {int dummy; } ;


 int PIC_EOI ;
 int lapic_eoi () ;

__attribute__((used)) static void
msi_disable_source(struct intsrc *isrc, int eoi)
{

 if (eoi == PIC_EOI)
  lapic_eoi();
}
