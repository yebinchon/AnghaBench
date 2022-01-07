
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int len; int buf; } ;
struct note_data {TYPE_1__ buf; int edit_path; scalar_t__ given; scalar_t__ use_editor; } ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int close (int) ;
 int copy_obj_to_fd (int,struct object_id const*) ;
 int die (char*) ;
 int die_errno (char*,int ) ;
 int git_pathdup (char*) ;
 scalar_t__ launch_editor (int ,TYPE_1__*,int *) ;
 char* note_template ;
 int open (int ,int,int) ;
 int strbuf_add_commented_lines (struct strbuf*,char*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (TYPE_1__*) ;
 int strbuf_stripspace (TYPE_1__*,int) ;
 int strlen (char*) ;
 int write_commented_object (int,struct object_id const*) ;
 int write_or_die (int,int ,int ) ;

__attribute__((used)) static void prepare_note_data(const struct object_id *object, struct note_data *d,
  const struct object_id *old_note)
{
 if (d->use_editor || !d->given) {
  int fd;
  struct strbuf buf = STRBUF_INIT;


  d->edit_path = git_pathdup("NOTES_EDITMSG");
  fd = open(d->edit_path, O_CREAT | O_TRUNC | O_WRONLY, 0600);
  if (fd < 0)
   die_errno(_("could not create file '%s'"), d->edit_path);

  if (d->given)
   write_or_die(fd, d->buf.buf, d->buf.len);
  else if (old_note)
   copy_obj_to_fd(fd, old_note);

  strbuf_addch(&buf, '\n');
  strbuf_add_commented_lines(&buf, "\n", strlen("\n"));
  strbuf_add_commented_lines(&buf, _(note_template), strlen(_(note_template)));
  strbuf_addch(&buf, '\n');
  write_or_die(fd, buf.buf, buf.len);

  write_commented_object(fd, object);

  close(fd);
  strbuf_release(&buf);
  strbuf_reset(&d->buf);

  if (launch_editor(d->edit_path, &d->buf, ((void*)0))) {
   die(_("please supply the note contents using either -m or -F option"));
  }
  strbuf_stripspace(&d->buf, 1);
 }
}
