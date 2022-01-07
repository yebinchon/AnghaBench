
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE2_PROCESS_INFO_STARTUP ;
 int attr_start () ;
 int cmd_main (int,char const**) ;
 int git_resolve_executable_dir (char const*) ;
 int git_setup_gettext () ;
 int initialize_the_repository () ;
 int restore_sigpipe_to_default () ;
 int sanitize_stdfds () ;
 int trace2_cmd_exit (int) ;
 int trace2_cmd_start (char const**) ;
 int trace2_collect_process_info (int ) ;
 int trace2_initialize () ;
 int trace2_initialize_clock () ;

int main(int argc, const char **argv)
{
 int result;

 trace2_initialize_clock();






 sanitize_stdfds();
 restore_sigpipe_to_default();

 git_resolve_executable_dir(argv[0]);

 git_setup_gettext();

 initialize_the_repository();

 attr_start();

 trace2_initialize();
 trace2_cmd_start(argv);
 trace2_collect_process_info(TRACE2_PROCESS_INFO_STARTUP);

 result = cmd_main(argc, argv);

 trace2_cmd_exit(result);

 return result;
}
