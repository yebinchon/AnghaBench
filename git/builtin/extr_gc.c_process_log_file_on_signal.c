
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int process_log_file () ;
 int raise (int) ;
 int sigchain_pop (int) ;

__attribute__((used)) static void process_log_file_on_signal(int signo)
{
 process_log_file();
 sigchain_pop(signo);
 raise(signo);
}
