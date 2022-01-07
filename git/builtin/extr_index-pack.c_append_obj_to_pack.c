
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash; } ;
struct TYPE_4__ {TYPE_1__ oid; int crc32; scalar_t__ offset; } ;
struct object_entry {unsigned long size; int hdr_size; int type; int real_type; TYPE_2__ idx; } ;
struct hashfile {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int crc32_begin (struct hashfile*) ;
 int crc32_end (struct hashfile*) ;
 int hashcpy (int ,unsigned char const*) ;
 int hashflush (struct hashfile*) ;
 int hashwrite (struct hashfile*,unsigned char*,int) ;
 int nr_objects ;
 struct object_entry* objects ;
 scalar_t__ write_compressed (struct hashfile*,void*,unsigned long) ;

__attribute__((used)) static struct object_entry *append_obj_to_pack(struct hashfile *f,
          const unsigned char *sha1, void *buf,
          unsigned long size, enum object_type type)
{
 struct object_entry *obj = &objects[nr_objects++];
 unsigned char header[10];
 unsigned long s = size;
 int n = 0;
 unsigned char c = (type << 4) | (s & 15);
 s >>= 4;
 while (s) {
  header[n++] = c | 0x80;
  c = s & 0x7f;
  s >>= 7;
 }
 header[n++] = c;
 crc32_begin(f);
 hashwrite(f, header, n);
 obj[0].size = size;
 obj[0].hdr_size = n;
 obj[0].type = type;
 obj[0].real_type = type;
 obj[1].idx.offset = obj[0].idx.offset + n;
 obj[1].idx.offset += write_compressed(f, buf, size);
 obj[0].idx.crc32 = crc32_end(f);
 hashflush(f);
 hashcpy(obj->idx.oid.hash, sha1);
 return obj;
}
