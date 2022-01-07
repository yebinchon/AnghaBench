
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_intsrc {int msi_vector; int msi_cpu; } ;
struct intsrc {int dummy; } ;


 int apic_enable_vector (int ,int ) ;

__attribute__((used)) static void
msi_enable_intr(struct intsrc *isrc)
{
 struct msi_intsrc *msi = (struct msi_intsrc *)isrc;

 apic_enable_vector(msi->msi_cpu, msi->msi_vector);
}
