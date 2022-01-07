
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fd; } ;


 int close (scalar_t__) ;
 int exit (int ) ;
 int kill_crack () ;
 int time_print (char*) ;
 TYPE_1__ weplog ;

void cleanup(int x) {
 time_print("\nDying...\n");

 if (weplog.fd)
  close(weplog.fd);

 kill_crack();

 exit(0);
}
