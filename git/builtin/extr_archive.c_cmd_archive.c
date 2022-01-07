
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUFSIZ ;
 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT_FILENAME (char,char*,char const**,int ) ;
 struct option OPT_STRING (int ,char*,char const**,int ,int ) ;
 int PARSE_OPT_KEEP_ALL ;
 int _IOLBF ;
 int create_output_file (char const*) ;
 int init_archivers () ;
 int parse_options (int,char const**,char const*,struct option*,int *,int ) ;
 int run_remote_archiver (int,char const**,char const*,char const*,char const*) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int the_repository ;
 int write_archive (int,char const**,char const*,int ,char const*,int ) ;

int cmd_archive(int argc, const char **argv, const char *prefix)
{
 const char *exec = "git-upload-archive";
 const char *output = ((void*)0);
 const char *remote = ((void*)0);
 struct option local_opts[] = {
  OPT_FILENAME('o', "output", &output,
        N_("write the archive to this file")),
  OPT_STRING(0, "remote", &remote, N_("repo"),
   N_("retrieve the archive from remote repository <repo>")),
  OPT_STRING(0, "exec", &exec, N_("command"),
   N_("path to the remote git-upload-archive command")),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, local_opts, ((void*)0),
        PARSE_OPT_KEEP_ALL);

 init_archivers();

 if (output)
  create_output_file(output);

 if (remote)
  return run_remote_archiver(argc, argv, remote, exec, output);

 setvbuf(stderr, ((void*)0), _IOLBF, BUFSIZ);

 return write_archive(argc, argv, prefix, the_repository, output, 0);
}
