
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct aic7770_identity {int dummy; } ;
typedef int id ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int CHAR_BIT ;
 struct aic7770_identity* aic7770_find_device (int) ;
 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_write_1 (int ,int ,int,int) ;

__attribute__((used)) static struct aic7770_identity *
ahc_isa_find_device(bus_space_tag_t tag, bus_space_handle_t bsh) {
 uint32_t id;
 u_int id_size;
 int i;

 id = 0;
 id_size = sizeof(id);
 for (i = 0; i < id_size; i++) {
  bus_space_write_1(tag, bsh, 0x80, 0x80 + i);
  id |= bus_space_read_1(tag, bsh, 0x80 + i)
     << ((id_size - i - 1) * CHAR_BIT);
 }

 return (aic7770_find_device(id));
}
