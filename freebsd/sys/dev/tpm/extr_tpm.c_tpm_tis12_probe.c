
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int TPM_ACCESS ;
 int TPM_ACCESS_ACTIVE_LOCALITY ;
 int TPM_ACCESS_REQUEST_USE ;
 int TPM_ACCESS_VALID ;
 int TPM_CAPBITS ;
 int TPM_CAPSREQ ;
 int TPM_ID ;
 int TPM_INTF_CAPABILITIES ;
 int TPM_INTF_INT_EDGE_RISING ;
 int TPM_INTF_INT_LEVEL_LOW ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int) ;
 int printf (char*,int,int ) ;

int
tpm_tis12_probe(bus_space_tag_t bt, bus_space_handle_t bh)
{
 u_int32_t r;
 u_int8_t save, reg;

 r = bus_space_read_4(bt, bh, TPM_INTF_CAPABILITIES);
 if (r == 0xffffffff)
  return 0;




 if ((r & TPM_CAPSREQ) != TPM_CAPSREQ ||
     !(r & (TPM_INTF_INT_EDGE_RISING | TPM_INTF_INT_LEVEL_LOW))) {



  return 0;
 }

 save = bus_space_read_1(bt, bh, TPM_ACCESS);
 bus_space_write_1(bt, bh, TPM_ACCESS, TPM_ACCESS_REQUEST_USE);
 reg = bus_space_read_1(bt, bh, TPM_ACCESS);
 if ((reg & TPM_ACCESS_VALID) && (reg & TPM_ACCESS_ACTIVE_LOCALITY) &&
     bus_space_read_4(bt, bh, TPM_ID) != 0xffffffff)
  return 1;

 bus_space_write_1(bt, bh, TPM_ACCESS, save);
 return 0;
}
