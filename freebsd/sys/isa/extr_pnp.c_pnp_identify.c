
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 scalar_t__ bootverbose ;
 int pnp_isolation_protocol (int ) ;
 int pnp_rd_port ;
 int printf (char*,...) ;

__attribute__((used)) static void
pnp_identify(driver_t *driver, device_t parent)
{
 int num_pnp_devs;


 for (pnp_rd_port = 0x80; (pnp_rd_port < 0xff); pnp_rd_port += 0x10) {
  if (bootverbose)
   printf("pnp_identify: Trying Read_Port at %x\n",
       (pnp_rd_port << 2) | 0x3);

  num_pnp_devs = pnp_isolation_protocol(parent);
  if (num_pnp_devs)
   break;
 }
 if (bootverbose)
  printf("PNP Identify complete\n");
}
