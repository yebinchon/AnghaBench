
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_name; } ;
typedef int ifr ;


 char* DISC_IFNAME ;
 int DISC_IFUNIT ;

 int PF_INET ;
 int SIOCIFCREATE ;
 int SOCK_RAW ;
 int bzero (struct ifreq*,int) ;
 int close (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 scalar_t__ kldload (char*) ;
 int snprintf (int ,int,char*,char*,int ) ;
 int socket (int ,int ,int ) ;
 int warn (char*,...) ;

__attribute__((used)) static int
disc_setup(void)
{
 struct ifreq ifr;
 int s;

 if (kldload("if_disc") < 0) {
  switch (errno) {
  case 128:
   break;
  default:
   warn("disc_setup: kldload(if_disc)");
   return (-1);
  }
 }

 s = socket(PF_INET, SOCK_RAW, 0);
 if (s < 0) {
  warn("disc_setup: socket(PF_INET, SOCK_RAW, 0)");
  return (-1);
 }

 bzero(&ifr, sizeof(ifr));
 snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), "%s%d", DISC_IFNAME,
     DISC_IFUNIT);

 if (ioctl(s, SIOCIFCREATE, &ifr) < 0) {
  warn("disc_setup: ioctl(%s, SIOCIFCREATE)", ifr.ifr_name);
  close(s);
  return (-1);
 }

 close(s);
 return (0);
}
