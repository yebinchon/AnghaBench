
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSTOP ;
 int linux_to_bsd_signal (int) ;

__attribute__((used)) static __inline int
map_signum(int signum)
{

 signum = linux_to_bsd_signal(signum);
 return ((signum == SIGSTOP)? 0 : signum);
}
