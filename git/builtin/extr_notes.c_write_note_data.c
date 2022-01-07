
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int len; int buf; } ;
struct note_data {scalar_t__ edit_path; TYPE_1__ buf; } ;


 int _ (char*) ;
 int blob_type ;
 int error (int ,...) ;
 int exit (int) ;
 scalar_t__ write_object_file (int ,int ,int ,struct object_id*) ;

__attribute__((used)) static void write_note_data(struct note_data *d, struct object_id *oid)
{
 if (write_object_file(d->buf.buf, d->buf.len, blob_type, oid)) {
  error(_("unable to write note object"));
  if (d->edit_path)
   error(_("the note contents have been left in %s"),
    d->edit_path);
  exit(128);
 }
}
