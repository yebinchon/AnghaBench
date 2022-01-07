
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raise (int) ;
 int sigchain_pop (int) ;
 int unlock_pack () ;

__attribute__((used)) static void unlock_pack_on_signal(int signo)
{
 unlock_pack();
 sigchain_pop(signo);
 raise(signo);
}
