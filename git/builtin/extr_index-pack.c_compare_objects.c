
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct compare_data {unsigned long buf_size; TYPE_2__* entry; int buf; int st; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ idx; } ;


 int _ (char*) ;
 int die (int ,int ) ;
 int free (int ) ;
 scalar_t__ memcmp (unsigned char const*,int ,scalar_t__) ;
 int oid_to_hex (int *) ;
 scalar_t__ read_istream (int ,int ,unsigned long) ;
 int xmalloc (unsigned long) ;

__attribute__((used)) static int compare_objects(const unsigned char *buf, unsigned long size,
      void *cb_data)
{
 struct compare_data *data = cb_data;

 if (data->buf_size < size) {
  free(data->buf);
  data->buf = xmalloc(size);
  data->buf_size = size;
 }

 while (size) {
  ssize_t len = read_istream(data->st, data->buf, size);
  if (len == 0)
   die(_("SHA1 COLLISION FOUND WITH %s !"),
       oid_to_hex(&data->entry->idx.oid));
  if (len < 0)
   die(_("unable to read %s"),
       oid_to_hex(&data->entry->idx.oid));
  if (memcmp(buf, data->buf, len))
   die(_("SHA1 COLLISION FOUND WITH %s !"),
       oid_to_hex(&data->entry->idx.oid));
  size -= len;
  buf += len;
 }
 return 0;
}
