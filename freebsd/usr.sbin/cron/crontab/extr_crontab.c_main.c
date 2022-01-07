
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR_EXIT ;
 int LC_ALL ;
 int OK_EXIT ;
 int Option ;
 int Pid ;
 char* ProgramName ;
 int RealUser ;
 int User ;
 int allowed (int ) ;
 int delete_cmd () ;
 int edit_cmd () ;
 int exit (int) ;
 int getpid () ;
 int list_cmd () ;
 int log_it (int ,int ,char*,char*) ;





 int parse_args (int,char**) ;
 int replace_cmd () ;
 int set_cron_cwd () ;
 int set_cron_uid () ;
 int setlinebuf (int ) ;
 int setlocale (int ,char*) ;
 int stderr ;
 int warnx (char*,int ) ;

int
main(int argc, char *argv[])
{
 int exitstatus;

 Pid = getpid();
 ProgramName = argv[0];
 parse_args(argc, argv);
 set_cron_uid();
 set_cron_cwd();
 if (!allowed(User)) {
  warnx("you (%s) are not allowed to use this program", User);
  log_it(RealUser, Pid, "AUTH", "crontab command not allowed");
  exit(ERROR_EXIT);
 }
 exitstatus = OK_EXIT;
 switch (Option) {
 case 130: list_cmd();
    break;
 case 132: delete_cmd();
    break;
 case 131: edit_cmd();
    break;
 case 129: if (replace_cmd() < 0)
     exitstatus = ERROR_EXIT;
    break;
 case 128:
    break;
 }
 exit(exitstatus);

}
