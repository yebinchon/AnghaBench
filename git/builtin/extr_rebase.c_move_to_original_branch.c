
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct rebase_options {int head_name; TYPE_2__* onto; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int BUG (char*) ;
 int RESET_HEAD_REFS_ONLY ;
 struct strbuf STRBUF_INIT ;
 int oid_to_hex (int *) ;
 int reset_head (int *,char*,int ,int ,int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ,...) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int move_to_original_branch(struct rebase_options *opts)
{
 struct strbuf orig_head_reflog = STRBUF_INIT, head_reflog = STRBUF_INIT;
 int ret;

 if (!opts->head_name)
  return 0;

 if (!opts->onto)
  BUG("move_to_original_branch without onto");

 strbuf_addf(&orig_head_reflog, "rebase finished: %s onto %s",
      opts->head_name, oid_to_hex(&opts->onto->object.oid));
 strbuf_addf(&head_reflog, "rebase finished: returning to %s",
      opts->head_name);
 ret = reset_head(((void*)0), "", opts->head_name, RESET_HEAD_REFS_ONLY,
    orig_head_reflog.buf, head_reflog.buf);

 strbuf_release(&orig_head_reflog);
 strbuf_release(&head_reflog);
 return ret;
}
