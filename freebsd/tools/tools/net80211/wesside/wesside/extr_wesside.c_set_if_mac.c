
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_len; int sa_data; int sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; int ifr_name; } ;
typedef int ifr ;


 int AF_LINK ;
 int PF_INET ;
 int SIOCSIFLLADDR ;
 int SOCK_DGRAM ;
 int close (int) ;
 int exit (int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (struct ifreq*,int ,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int strcpy (int ,unsigned char*) ;

void set_if_mac(unsigned char* mac, unsigned char *name) {
 int s;
 struct ifreq ifr;

 s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s == -1) {
  perror("socket()");
  exit(1);
 }

 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, name);

 ifr.ifr_addr.sa_family = AF_LINK;
 ifr.ifr_addr.sa_len = 6;
 memcpy(ifr.ifr_addr.sa_data, mac, 6);

 if (ioctl(s, SIOCSIFLLADDR, &ifr) == -1) {
  perror("ioctl(SIOCSIFLLADDR)");
  exit(1);
 }

 close(s);
}
