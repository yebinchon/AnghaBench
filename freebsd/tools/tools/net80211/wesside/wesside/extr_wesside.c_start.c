
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;


 int DLT_IEEE802_11_RADIO ;
 int PTW_newattackstate () ;
 int close (int) ;
 int err (int,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int open_bpf (char*,int ) ;
 int own (int) ;
 int printf (char*,int ) ;
 int ptw ;
 int send_ack (int ) ;
 int set_chan (int) ;
 int setup_if (char*) ;
 int tx ;

void start(char *dev) {
 int fd;

 setup_if(dev);

 fd = open_bpf(dev, DLT_IEEE802_11_RADIO);

 ptw = PTW_newattackstate();
 if (!ptw)
  err(1, "PTW_newattackstate()");

 own(fd);
 close(fd);
}
