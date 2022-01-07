
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct merge_remote_desc {TYPE_1__* obj; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_4__ {struct object_id oid; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {struct object_id oid; } ;


 scalar_t__ FF_NO ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ fast_forward ;
 int git_path_merge_head (int ) ;
 int git_path_merge_mode (int ) ;
 struct merge_remote_desc* merge_remote_util (struct commit*) ;
 int oid_to_hex (struct object_id*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int the_repository ;
 int write_file_buf (int ,int ,int ) ;

__attribute__((used)) static void write_merge_heads(struct commit_list *remoteheads)
{
 struct commit_list *j;
 struct strbuf buf = STRBUF_INIT;

 for (j = remoteheads; j; j = j->next) {
  struct object_id *oid;
  struct commit *c = j->item;
  struct merge_remote_desc *desc;

  desc = merge_remote_util(c);
  if (desc && desc->obj) {
   oid = &desc->obj->oid;
  } else {
   oid = &c->object.oid;
  }
  strbuf_addf(&buf, "%s\n", oid_to_hex(oid));
 }
 write_file_buf(git_path_merge_head(the_repository), buf.buf, buf.len);

 strbuf_reset(&buf);
 if (fast_forward == FF_NO)
  strbuf_addstr(&buf, "no-ff");
 write_file_buf(git_path_merge_mode(the_repository), buf.buf, buf.len);
 strbuf_release(&buf);
}
