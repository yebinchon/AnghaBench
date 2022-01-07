
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
struct TYPE_2__ {int locked; } ;


 int DLT_IEEE802_11_RADIO ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int bpf_input () ;
 scalar_t__ bpf_s ;
 int chanhop (struct timeval*) ;
 TYPE_1__ chaninfo ;
 int check_seen (struct timeval*) ;
 int die (int,char*) ;
 int hopfreq ;
 int open_bpf (char*,int) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int setup_if (char*) ;
 int user_input () ;

void own(char* ifname) {
 int rd;
 fd_set fds;
 struct timeval tv;
 int dlt = DLT_IEEE802_11_RADIO;

 hopfreq = 1000;

 setup_if(ifname);
 open_bpf(ifname, dlt);

 while(1) {

  if (!chaninfo.locked)
   chanhop(&tv);
  else {
   tv.tv_sec = 1;
   tv.tv_usec = 0;
  }


  check_seen(&tv);

  FD_ZERO(&fds);
  FD_SET(0, &fds);
  FD_SET(bpf_s, &fds);

  rd = select(bpf_s+1, &fds,((void*)0) , ((void*)0), &tv);
  if (rd == -1)
   die(1, "select()");
  if (FD_ISSET(0, &fds))
   user_input();
  if (FD_ISSET(bpf_s, &fds))
   bpf_input();
 }
}
