
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int IICBB_RESET (int ,int ,int,int*) ;
 int IIC_ENOADDR ;
 int IIC_FASTEST ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 char* device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ printf (char*,char*,...) ;

__attribute__((used)) static int
iicbb_print_child(device_t bus, device_t dev)
{
 int error;
 int retval = 0;
 u_char oldaddr;

 retval += bus_print_child_header(bus, dev);

 error = IICBB_RESET(device_get_parent(bus), IIC_FASTEST, 0, &oldaddr);
 if (error == IIC_ENOADDR) {
  retval += printf(" on %s master-only\n",
     device_get_nameunit(bus));
 } else {

  IICBB_RESET(device_get_parent(bus), IIC_FASTEST, oldaddr, ((void*)0));

  retval += printf(" on %s addr 0x%x\n",
     device_get_nameunit(bus), oldaddr & 0xff);
 }

 return (retval);
}
