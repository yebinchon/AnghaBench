
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_vector {int iv_mid; struct fhc_icarg* iv_icarg; } ;
struct fhc_icarg {int fica_memres; } ;


 int FHC_IMAP ;
 int INTMAP_TID (int ,int ) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
fhc_intr_assign(void *arg)
{
 struct intr_vector *iv = arg;
 struct fhc_icarg *fica = iv->iv_icarg;

 bus_write_4(fica->fica_memres, FHC_IMAP, INTMAP_TID(
     bus_read_4(fica->fica_memres, FHC_IMAP), iv->iv_mid));
 (void)bus_read_4(fica->fica_memres, FHC_IMAP);
}
