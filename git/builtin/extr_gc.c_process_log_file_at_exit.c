
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int process_log_file () ;
 int stderr ;

__attribute__((used)) static void process_log_file_at_exit(void)
{
 fflush(stderr);
 process_log_file();
}
