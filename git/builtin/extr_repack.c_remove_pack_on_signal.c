
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raise (int) ;
 int remove_temporary_files () ;
 int sigchain_pop (int) ;

__attribute__((used)) static void remove_pack_on_signal(int signo)
{
 remove_temporary_files();
 sigchain_pop(signo);
 raise(signo);
}
