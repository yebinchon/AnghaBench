
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit_extra_header {struct commit_extra_header* next; } ;
struct TYPE_2__ {struct object_id const oid; } ;
struct commit {TYPE_1__ object; } ;


 int IDENT_STRICT ;
 int OBJ_TREE ;
 char* _ (int ) ;
 int add_extra_header (struct strbuf*,struct commit_extra_header*) ;
 int assert_oid_type (struct object_id const*,int ) ;
 int commit_type ;
 int commit_utf8_warn ;
 scalar_t__ do_sign_commit (struct strbuf*,char const*) ;
 int error (char*) ;
 int fprintf (int ,char*) ;
 char* git_author_info (int ) ;
 char const* git_commit_encoding ;
 char const* git_committer_info (int ) ;
 int is_encoding_utf8 (char const*) ;
 scalar_t__ memchr (char const*,char,size_t) ;
 char const* oid_to_hex (struct object_id const*) ;
 struct commit* pop_commit (struct commit_list**) ;
 int stderr ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int verify_utf8 (struct strbuf*) ;
 int write_object_file (int ,int ,int ,struct object_id*) ;

int commit_tree_extended(const char *msg, size_t msg_len,
    const struct object_id *tree,
    struct commit_list *parents, struct object_id *ret,
    const char *author, const char *sign_commit,
    struct commit_extra_header *extra)
{
 int result;
 int encoding_is_utf8;
 struct strbuf buffer;

 assert_oid_type(tree, OBJ_TREE);

 if (memchr(msg, '\0', msg_len))
  return error("a NUL byte in commit log message not allowed.");


 encoding_is_utf8 = is_encoding_utf8(git_commit_encoding);

 strbuf_init(&buffer, 8192);
 strbuf_addf(&buffer, "tree %s\n", oid_to_hex(tree));






 while (parents) {
  struct commit *parent = pop_commit(&parents);
  strbuf_addf(&buffer, "parent %s\n",
       oid_to_hex(&parent->object.oid));
 }


 if (!author)
  author = git_author_info(IDENT_STRICT);
 strbuf_addf(&buffer, "author %s\n", author);
 strbuf_addf(&buffer, "committer %s\n", git_committer_info(IDENT_STRICT));
 if (!encoding_is_utf8)
  strbuf_addf(&buffer, "encoding %s\n", git_commit_encoding);

 while (extra) {
  add_extra_header(&buffer, extra);
  extra = extra->next;
 }
 strbuf_addch(&buffer, '\n');


 strbuf_add(&buffer, msg, msg_len);


 if (encoding_is_utf8 && !verify_utf8(&buffer))
  fprintf(stderr, _(commit_utf8_warn));

 if (sign_commit && do_sign_commit(&buffer, sign_commit)) {
  result = -1;
  goto out;
 }

 result = write_object_file(buffer.buf, buffer.len, commit_type, ret);
out:
 strbuf_release(&buffer);
 return result;
}
