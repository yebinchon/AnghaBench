
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct child_process {char const** argv; int git_cmd; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 unsigned int VERIFY_PACK_STAT_ONLY ;
 unsigned int VERIFY_PACK_VERBOSE ;
 int ends_with (char*,char*) ;
 int printf (char*,char*) ;
 int run_command (struct child_process*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strbuf_strip_suffix (struct strbuf*,char*) ;

__attribute__((used)) static int verify_one_pack(const char *path, unsigned int flags)
{
 struct child_process index_pack = CHILD_PROCESS_INIT;
 const char *argv[] = {"index-pack", ((void*)0), ((void*)0), ((void*)0) };
 struct strbuf arg = STRBUF_INIT;
 int verbose = flags & VERIFY_PACK_VERBOSE;
 int stat_only = flags & VERIFY_PACK_STAT_ONLY;
 int err;

 if (stat_only)
  argv[1] = "--verify-stat-only";
 else if (verbose)
  argv[1] = "--verify-stat";
 else
  argv[1] = "--verify";





 strbuf_addstr(&arg, path);
 if (strbuf_strip_suffix(&arg, ".idx") ||
     !ends_with(arg.buf, ".pack"))
  strbuf_addstr(&arg, ".pack");
 argv[2] = arg.buf;

 index_pack.argv = argv;
 index_pack.git_cmd = 1;

 err = run_command(&index_pack);

 if (verbose || stat_only) {
  if (err)
   printf("%s: bad\n", arg.buf);
  else {
   if (!stat_only)
    printf("%s: ok\n", arg.buf);
  }
 }
 strbuf_release(&arg);

 return err;
}
