
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stdin ;
typedef int register_t ;
typedef int phandle_t ;
typedef int name ;
typedef char ihandle_t ;
typedef int * bus_space_tag_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef int bus_addr_t ;


 int ENXIO ;
 int IO_KBD ;
 int IO_KBDSIZE ;
 int KBD_DATA_PORT ;
 int KBD_STATUS_PORT ;
 scalar_t__ OF_decode_addr (int,int,int*,int*) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_instance_to_package (char) ;
 int OF_parent (int) ;
 int * X86_BUS_SPACE_IO ;
 int * atkbdc_bst_store ;
 int atkbdc_setup (int ,int *,scalar_t__,scalar_t__) ;
 int * atkbdc_softc ;
 int bus_space_map (int *,int,int ,int ,scalar_t__*) ;
 int bus_space_read_1 (int *,scalar_t__,int ) ;
 int bus_space_subregion (int *,scalar_t__,int,int,scalar_t__*) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int resource_int_value (char*,int ,char*,int*) ;
 scalar_t__ sparc64_fake_bustag (int,int,int *) ;
 scalar_t__ strcmp (char*,char*) ;

int
atkbdc_configure(void)
{
 bus_space_tag_t tag;
 bus_space_handle_t h0;
 bus_space_handle_t h1;

 volatile int i;
 register_t flags;
 int port0;
 int port1;




 tag = X86_BUS_SPACE_IO;
 port0 = IO_KBD;
 resource_int_value("atkbdc", 0, "port", &port0);
 port1 = IO_KBD + KBD_STATUS_PORT;




 h0 = (bus_space_handle_t)port0;
 h1 = (bus_space_handle_t)port1;
 flags = intr_disable();
 for (i = 0; i != 65535; i++) {
  if ((bus_space_read_1(tag, h1, 0) & 0x2) == 0)
   break;
 }
 intr_restore(flags);
 if (i == 65535)
                return ENXIO;


 return atkbdc_setup(atkbdc_softc[0], tag, h0, h1);
}
