
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oid; } ;
struct object_entry {TYPE_1__ idx; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {TYPE_2__ idx; } ;


 int BUG (char*) ;
 TYPE_3__* DELTA (struct object_entry*) ;
 unsigned long DELTA_SIZE (struct object_entry*) ;
 char* _ (char*) ;
 int die (char*,int ) ;
 void* diff_delta (void*,unsigned long,void*,unsigned long,unsigned long*,int ) ;
 int free (void*) ;
 int oid_to_hex (int *) ;
 void* read_object_file (int *,int*,unsigned long*) ;

__attribute__((used)) static void *get_delta(struct object_entry *entry)
{
 unsigned long size, base_size, delta_size;
 void *buf, *base_buf, *delta_buf;
 enum object_type type;

 buf = read_object_file(&entry->idx.oid, &type, &size);
 if (!buf)
  die(_("unable to read %s"), oid_to_hex(&entry->idx.oid));
 base_buf = read_object_file(&DELTA(entry)->idx.oid, &type,
        &base_size);
 if (!base_buf)
  die("unable to read %s",
      oid_to_hex(&DELTA(entry)->idx.oid));
 delta_buf = diff_delta(base_buf, base_size,
          buf, size, &delta_size, 0);





 if (!delta_buf || delta_size != DELTA_SIZE(entry))
  BUG("delta size changed");
 free(buf);
 free(base_buf);
 return delta_buf;
}
