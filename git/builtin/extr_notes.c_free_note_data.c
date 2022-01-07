
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct note_data {int buf; scalar_t__ edit_path; } ;


 int free (scalar_t__) ;
 int strbuf_release (int *) ;
 int unlink_or_warn (scalar_t__) ;

__attribute__((used)) static void free_note_data(struct note_data *d)
{
 if (d->edit_path) {
  unlink_or_warn(d->edit_path);
  free(d->edit_path);
 }
 strbuf_release(&d->buf);
}
