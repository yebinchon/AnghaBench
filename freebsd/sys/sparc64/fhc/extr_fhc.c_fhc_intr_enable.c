
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_vector {int iv_mid; int iv_vec; struct fhc_icarg* iv_icarg; } ;
struct fhc_icarg {int fica_memres; } ;


 int FHC_IMAP ;
 int INTMAP_ENABLE (int ,int ) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
fhc_intr_enable(void *arg)
{
 struct intr_vector *iv = arg;
 struct fhc_icarg *fica = iv->iv_icarg;

 bus_write_4(fica->fica_memres, FHC_IMAP,
     INTMAP_ENABLE(iv->iv_vec, iv->iv_mid));
 (void)bus_read_4(fica->fica_memres, FHC_IMAP);
}
