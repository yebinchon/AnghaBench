
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int id ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_addr_t ;


 scalar_t__ TPM_ID ;
 int bcmp (char*,char*,int) ;
 scalar_t__ bus_space_map (int ,int,int,int ,int *) ;
 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_unmap (int ,int ,int) ;
 int bus_space_write_1 (int ,int ,int,int) ;
 int printf (char*,char*,char,char,char,char) ;
 int tpm_enabled ;
 char tpm_legacy_in (int ,int ,scalar_t__) ;

int
tpm_legacy_probe(bus_space_tag_t iot, bus_addr_t iobase)
{
 bus_space_handle_t ioh;
 u_int8_t r, v;
 int i, rv = 0;
 char id[8];

 if (!tpm_enabled || iobase == -1)
  return 0;

 if (bus_space_map(iot, iobase, 2, 0, &ioh))
  return 0;

 v = bus_space_read_1(iot, ioh, 0);
 if (v == 0xff) {
  bus_space_unmap(iot, ioh, 2);
  return 0;
 }
 r = bus_space_read_1(iot, ioh, 1);

 for (i = sizeof(id); i--; )
  id[i] = tpm_legacy_in(iot, ioh, TPM_ID + i);
 if (!bcmp(&id[4], "ATML", 4))
  rv = 1;

 if (!rv) {
  bus_space_write_1(iot, ioh, r, 1);
  bus_space_write_1(iot, ioh, v, 0);
 }
 bus_space_unmap(iot, ioh, 2);

 return rv;
}
