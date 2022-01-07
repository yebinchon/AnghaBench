
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_name; } ;
typedef int ifr ;


 char* DISC_IFNAME ;
 int DISC_IFUNIT ;
 int PF_INET ;
 int SIOCIFDESTROY ;
 int SOCK_RAW ;
 int bzero (struct ifreq*,int) ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int snprintf (int ,int,char*,char*,int ) ;
 int socket (int ,int ,int ) ;
 int warn (char*,...) ;

__attribute__((used)) static void
disc_done(void)
{
 struct ifreq ifr;
 int s;

 s = socket(PF_INET, SOCK_RAW, 0);
 if (s < 0) {
  warn("disc_done: socket(PF_INET, SOCK_RAW, 0)");
  return;
 }

 bzero(&ifr, sizeof(ifr));
 snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), "%s%d", DISC_IFNAME,
     DISC_IFUNIT);

 if (ioctl(s, SIOCIFDESTROY, &ifr) < 0)
  warn("disc_done: ioctl(%s, SIOCIFDESTROY)", ifr.ifr_name);
 close(s);
}
