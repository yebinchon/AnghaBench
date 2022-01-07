
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* ifname; } ;


 int ARGV_APPEND (char const**,int,char*) ;
 TYPE_1__ ctx_ ;
 scalar_t__ exec_command (int,char const**) ;
 int printf (char*) ;

__attribute__((used)) static void
tap_cleanup(int signo)
{
 const char *av[8];
 int ac = 0;

 (void)signo;





 ARGV_APPEND(av, ac, "ip");
 ARGV_APPEND(av, ac, "link");
 ARGV_APPEND(av, ac, "del");
 ARGV_APPEND(av, ac, ctx_.ifname);

 ARGV_APPEND(av, ac, ((void*)0));
 if (exec_command(ac, av)) {
  printf("Failed to destroy tap interface\n");
 }
}
