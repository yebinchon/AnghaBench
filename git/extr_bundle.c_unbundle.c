
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct child_process {char const** argv; int in; int no_stdout; int git_cmd; } ;
struct bundle_header {int dummy; } ;


 int BUNDLE_VERBOSE ;
 struct child_process CHILD_PROCESS_INIT ;
 int _ (char*) ;
 int error (int ) ;
 scalar_t__ run_command (struct child_process*) ;
 scalar_t__ verify_bundle (struct repository*,struct bundle_header*,int ) ;

int unbundle(struct repository *r, struct bundle_header *header,
      int bundle_fd, int flags)
{
 const char *argv_index_pack[] = {"index-pack",
      "--fix-thin", "--stdin", ((void*)0), ((void*)0)};
 struct child_process ip = CHILD_PROCESS_INIT;

 if (flags & BUNDLE_VERBOSE)
  argv_index_pack[3] = "-v";

 if (verify_bundle(r, header, 0))
  return -1;
 ip.argv = argv_index_pack;
 ip.in = bundle_fd;
 ip.no_stdout = 1;
 ip.git_cmd = 1;
 if (run_command(&ip))
  return error(_("index-pack died"));
 return 0;
}
