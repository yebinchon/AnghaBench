
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct create_tag_options {scalar_t__ cleanup_mode; int sign; scalar_t__ message_given; scalar_t__ use_editor; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 scalar_t__ CLEANUP_ALL ;
 scalar_t__ CLEANUP_NONE ;
 int IDENT_STRICT ;
 int OBJ_NONE ;
 int OBJ_TAG ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 scalar_t__ advice_nested_tag ;
 int advise (char*,char const*,char const*) ;
 scalar_t__ build_tag_object (struct strbuf*,int ,struct object_id*) ;
 int close (int) ;
 int comment_line_char ;
 int die (char*) ;
 int die_errno (char*,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int git_committer_info (int ) ;
 char* git_pathdup (char*) ;
 int is_null_oid (struct object_id*) ;
 scalar_t__ launch_editor (char*,struct strbuf*,int *) ;
 char* message_advice_nested_tag ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 int oid_to_hex (struct object_id const*) ;
 int open (char*,int,int) ;
 int stderr ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ,char const*,int ) ;
 int strbuf_commented_addf (struct strbuf*,char*,char const*,int ) ;
 int strbuf_insert (struct strbuf*,int ,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_stripspace (struct strbuf*,int) ;
 char* tag_template ;
 char* tag_template_nocleanup ;
 int the_repository ;
 int type_name (int) ;
 int unlink_or_warn (char*) ;
 int write_or_die (int,int ,int ) ;
 int write_tag_body (int,struct object_id*) ;

__attribute__((used)) static void create_tag(const struct object_id *object, const char *object_ref,
         const char *tag,
         struct strbuf *buf, struct create_tag_options *opt,
         struct object_id *prev, struct object_id *result)
{
 enum object_type type;
 struct strbuf header = STRBUF_INIT;
 char *path = ((void*)0);

 type = oid_object_info(the_repository, object, ((void*)0));
 if (type <= OBJ_NONE)
  die(_("bad object type."));

 if (type == OBJ_TAG && advice_nested_tag)
  advise(_(message_advice_nested_tag), tag, object_ref);

 strbuf_addf(&header,
      "object %s\n"
      "type %s\n"
      "tag %s\n"
      "tagger %s\n\n",
      oid_to_hex(object),
      type_name(type),
      tag,
      git_committer_info(IDENT_STRICT));

 if (!opt->message_given || opt->use_editor) {
  int fd;


  path = git_pathdup("TAG_EDITMSG");
  fd = open(path, O_CREAT | O_TRUNC | O_WRONLY, 0600);
  if (fd < 0)
   die_errno(_("could not create file '%s'"), path);

  if (opt->message_given) {
   write_or_die(fd, buf->buf, buf->len);
   strbuf_reset(buf);
  } else if (!is_null_oid(prev)) {
   write_tag_body(fd, prev);
  } else {
   struct strbuf buf = STRBUF_INIT;
   strbuf_addch(&buf, '\n');
   if (opt->cleanup_mode == CLEANUP_ALL)
    strbuf_commented_addf(&buf, _(tag_template), tag, comment_line_char);
   else
    strbuf_commented_addf(&buf, _(tag_template_nocleanup), tag, comment_line_char);
   write_or_die(fd, buf.buf, buf.len);
   strbuf_release(&buf);
  }
  close(fd);

  if (launch_editor(path, buf, ((void*)0))) {
   fprintf(stderr,
   _("Please supply the message using either -m or -F option.\n"));
   exit(1);
  }
 }

 if (opt->cleanup_mode != CLEANUP_NONE)
  strbuf_stripspace(buf, opt->cleanup_mode == CLEANUP_ALL);

 if (!opt->message_given && !buf->len)
  die(_("no tag message?"));

 strbuf_insert(buf, 0, header.buf, header.len);
 strbuf_release(&header);

 if (build_tag_object(buf, opt->sign, result) < 0) {
  if (path)
   fprintf(stderr, _("The tag message has been left in %s\n"),
    path);
  exit(128);
 }
 if (path) {
  unlink_or_warn(path);
  free(path);
 }
}
