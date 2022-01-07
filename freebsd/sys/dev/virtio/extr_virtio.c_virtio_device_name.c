
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct virtio_ident {char const* name; scalar_t__ devid; } ;


 struct virtio_ident* virtio_ident_table ;

const char *
virtio_device_name(uint16_t devid)
{
 struct virtio_ident *ident;

 for (ident = virtio_ident_table; ident->name != ((void*)0); ident++) {
  if (ident->devid == devid)
   return (ident->name);
 }

 return (((void*)0));
}
