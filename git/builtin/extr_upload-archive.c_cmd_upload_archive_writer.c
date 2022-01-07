
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int argv; int argc; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int MAX_ARGS ;
 int argv_array_push (struct argv_array*,char*) ;
 int die (char*,...) ;
 int enter_repo (char const*,int ) ;
 int init_archivers () ;
 char* packet_read_line (int ,int *) ;
 int starts_with (char*,char const*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int the_repository ;
 int upload_archive_usage ;
 int usage (int ) ;
 int write_archive (int ,int ,char const*,int ,int *,int) ;

int cmd_upload_archive_writer(int argc, const char **argv, const char *prefix)
{
 struct argv_array sent_argv = ARGV_ARRAY_INIT;
 const char *arg_cmd = "argument ";

 if (argc != 2 || !strcmp(argv[1], "-h"))
  usage(upload_archive_usage);

 if (!enter_repo(argv[1], 0))
  die("'%s' does not appear to be a git repository", argv[1]);

 init_archivers();


 argv_array_push(&sent_argv, "git-upload-archive");
 for (;;) {
  char *buf = packet_read_line(0, ((void*)0));
  if (!buf)
   break;
  if (sent_argv.argc > MAX_ARGS)
   die("Too many options (>%d)", MAX_ARGS - 1);

  if (!starts_with(buf, arg_cmd))
   die("'argument' token or flush expected");
  argv_array_push(&sent_argv, buf + strlen(arg_cmd));
 }


 return write_archive(sent_argv.argc, sent_argv.argv, prefix,
        the_repository, ((void*)0), 1);
}
