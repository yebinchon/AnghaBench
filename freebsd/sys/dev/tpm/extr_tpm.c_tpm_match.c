
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_attach_args {int ia_iosize; int ia_maddr; int ia_msize; int ia_iobase; int ia_iot; int ia_memt; } ;
struct cfdata {scalar_t__ cf_unit; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int TPM_SIZE ;
 scalar_t__ bus_space_map (int ,int,int ,int ,int *) ;
 int bus_space_unmap (int ,int ,int ) ;
 scalar_t__ tpm_legacy_probe (int ,int ) ;
 int tpm_tis12_probe (int ,int ) ;

int
tpm_match(device_t parent, void *match, void *aux)
{
 struct isa_attach_args *ia = aux;
 struct cfdata *cf = match;
 bus_space_tag_t bt = ia->ia_memt;
 bus_space_handle_t bh;
 int rv;


 if (cf->cf_unit)
  return 0;

 if (tpm_legacy_probe(ia->ia_iot, ia->ia_iobase)) {
  ia->ia_iosize = 2;
  return 1;
 }

 if (ia->ia_maddr == -1)
  return 0;

 if (bus_space_map(bt, ia->ia_maddr, TPM_SIZE, 0, &bh))
  return 0;

 if ((rv = tpm_tis12_probe(bt, bh))) {
  ia->ia_iosize = 0;
  ia->ia_msize = TPM_SIZE;
 }

 bus_space_unmap(bt, bh, TPM_SIZE);
 return rv;
}
