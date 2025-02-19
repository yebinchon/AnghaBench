
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct child_process {char const** argv; int out; int git_cmd; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int close (int) ;
 int die (int ,...) ;
 scalar_t__ finish_command (struct child_process*) ;
 scalar_t__ get_oid (int ,struct object_id*) ;
 scalar_t__ start_command (struct child_process*) ;
 int strbuf_read (struct strbuf*,int,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static int save_state(struct object_id *stash)
{
 int len;
 struct child_process cp = CHILD_PROCESS_INIT;
 struct strbuf buffer = STRBUF_INIT;
 const char *argv[] = {"stash", "create", ((void*)0)};
 int rc = -1;

 cp.argv = argv;
 cp.out = -1;
 cp.git_cmd = 1;

 if (start_command(&cp))
  die(_("could not run stash."));
 len = strbuf_read(&buffer, cp.out, 1024);
 close(cp.out);

 if (finish_command(&cp) || len < 0)
  die(_("stash failed"));
 else if (!len)
  goto out;
 strbuf_setlen(&buffer, buffer.len-1);
 if (get_oid(buffer.buf, stash))
  die(_("not a valid object: %s"), buffer.buf);
 rc = 0;
out:
 strbuf_release(&buffer);
 return rc;
}
