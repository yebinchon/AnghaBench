
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int for_each_reflog_ent (int ,int ,int ) ;
 int fsck_handle_reflog_ent ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_worktree_ref (void*,struct strbuf*,char const*) ;

__attribute__((used)) static int fsck_handle_reflog(const char *logname, const struct object_id *oid,
         int flag, void *cb_data)
{
 struct strbuf refname = STRBUF_INIT;

 strbuf_worktree_ref(cb_data, &refname, logname);
 for_each_reflog_ent(refname.buf, fsck_handle_reflog_ent, refname.buf);
 strbuf_release(&refname);
 return 0;
}
