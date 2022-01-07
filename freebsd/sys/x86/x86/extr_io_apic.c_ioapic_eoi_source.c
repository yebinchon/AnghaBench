
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsrc {int dummy; } ;


 int _ioapic_eoi_source (struct intsrc*,int ) ;

__attribute__((used)) static void
ioapic_eoi_source(struct intsrc *isrc)
{

 _ioapic_eoi_source(isrc, 0);
}
