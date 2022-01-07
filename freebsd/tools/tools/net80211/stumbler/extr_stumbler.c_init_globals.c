
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chan; scalar_t__ locked; } ;


 int PF_INET ;
 int SOCK_DGRAM ;
 TYPE_1__ chaninfo ;
 int exit (int) ;
 int ioctl_s ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;

void init_globals() {
 ioctl_s = socket(PF_INET, SOCK_DGRAM, 0);
 if (ioctl_s == -1) {
  perror("socket()");
  exit(1);
 }

 chaninfo.locked = 0;
 chaninfo.chan = 0;
}
