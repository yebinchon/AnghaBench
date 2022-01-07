
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raise (int) ;
 int remove_junk () ;
 int sigchain_pop (int) ;

__attribute__((used)) static void remove_junk_on_signal(int signo)
{
 remove_junk();
 sigchain_pop(signo);
 raise(signo);
}
