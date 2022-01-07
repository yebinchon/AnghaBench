
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct dmar_unit {int dummy; } ;
typedef int device_t ;


 int nb_no_ir (struct dmar_unit*,int ) ;
 int pci_get_revid (int ) ;

__attribute__((used)) static void
nb_5500_no_ir_rev13(struct dmar_unit *unit, device_t nb)
{
 u_int rev_no;

 rev_no = pci_get_revid(nb);
 if (rev_no <= 0x13)
  nb_no_ir(unit, nb);
}
