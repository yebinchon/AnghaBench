
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_val; } ;
struct TYPE_4__ {int chan; TYPE_1__ ireq; int s; } ;


 int SIOCS80211 ;
 TYPE_2__ chaninfo ;
 int exit (int) ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int perror (char*) ;

void set_chan(int c) {
 if (c == chaninfo.chan)
  return;

 chaninfo.ireq.i_val = c;

 if (ioctl(chaninfo.s, SIOCS80211, &chaninfo.ireq) == -1) {
  perror("ioctl(SIOCS80211) [chan]");
  exit(1);
 }
 chaninfo.chan = c;
}
