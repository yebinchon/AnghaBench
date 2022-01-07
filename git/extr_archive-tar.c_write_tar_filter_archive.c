
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct child_process {char const** argv; int use_shell; int in; } ;
struct archiver_args {int compression_level; } ;
struct archiver {int data; } ;


 int BUG (char*) ;
 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int close (int) ;
 int die (int ,char const*) ;
 int die_errno (int ,...) ;
 scalar_t__ dup2 (int,int) ;
 scalar_t__ finish_command (struct child_process*) ;
 scalar_t__ start_command (struct child_process*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int write_tar_archive (struct archiver const*,struct archiver_args*) ;

__attribute__((used)) static int write_tar_filter_archive(const struct archiver *ar,
        struct archiver_args *args)
{
 struct strbuf cmd = STRBUF_INIT;
 struct child_process filter = CHILD_PROCESS_INIT;
 const char *argv[2];
 int r;

 if (!ar->data)
  BUG("tar-filter archiver called with no filter defined");

 strbuf_addstr(&cmd, ar->data);
 if (args->compression_level >= 0)
  strbuf_addf(&cmd, " -%d", args->compression_level);

 argv[0] = cmd.buf;
 argv[1] = ((void*)0);
 filter.argv = argv;
 filter.use_shell = 1;
 filter.in = -1;

 if (start_command(&filter) < 0)
  die_errno(_("unable to start '%s' filter"), argv[0]);
 close(1);
 if (dup2(filter.in, 1) < 0)
  die_errno(_("unable to redirect descriptor"));
 close(filter.in);

 r = write_tar_archive(ar, args);

 close(1);
 if (finish_command(&filter) != 0)
  die(_("'%s' filter reported error"), argv[0]);

 strbuf_release(&cmd);
 return r;
}
