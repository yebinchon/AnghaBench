
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_val; } ;
struct TYPE_4__ {int chan; int last_hop; TYPE_1__ ireq; } ;


 int SIOCS80211 ;
 TYPE_2__ chaninfo ;
 int die (int,char*) ;
 int display_chan () ;
 int gettimeofday (int *,int *) ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int ioctl_s ;

void set_chan(int c) {
        chaninfo.ireq.i_val = c;

        if (ioctl(ioctl_s, SIOCS80211, &chaninfo.ireq) == -1)
                die(1, "ioctl(SIOCS80211) [chan]");

 chaninfo.chan = c;

 if (gettimeofday(&chaninfo.last_hop, ((void*)0)) == -1)
  die(1, "gettimeofday()");

 display_chan();
}
