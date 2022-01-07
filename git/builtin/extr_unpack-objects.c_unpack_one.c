
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {int offset; } ;
 int consumed_bytes ;
 int error (char*,int) ;
 int exit (int) ;
 unsigned char* fill (int) ;
 int has_errors ;
 TYPE_1__* obj_list ;
 int recover ;
 int unpack_delta_entry (int,unsigned long,unsigned int) ;
 int unpack_non_delta_entry (int,unsigned long,unsigned int) ;
 int use (int) ;

__attribute__((used)) static void unpack_one(unsigned nr)
{
 unsigned shift;
 unsigned char *pack;
 unsigned long size, c;
 enum object_type type;

 obj_list[nr].offset = consumed_bytes;

 pack = fill(1);
 c = *pack;
 use(1);
 type = (c >> 4) & 7;
 size = (c & 15);
 shift = 4;
 while (c & 0x80) {
  pack = fill(1);
  c = *pack;
  use(1);
  size += (c & 0x7f) << shift;
  shift += 7;
 }

 switch (type) {
 case 132:
 case 128:
 case 133:
 case 129:
  unpack_non_delta_entry(type, size, nr);
  return;
 case 130:
 case 131:
  unpack_delta_entry(type, size, nr);
  return;
 default:
  error("bad object type %d", type);
  has_errors = 1;
  if (recover)
   return;
  exit(1);
 }
}
