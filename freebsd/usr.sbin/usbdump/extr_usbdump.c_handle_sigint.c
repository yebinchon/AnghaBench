
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int doexit ;

__attribute__((used)) static void
handle_sigint(int sig)
{

 (void)sig;
 doexit = 1;
}
