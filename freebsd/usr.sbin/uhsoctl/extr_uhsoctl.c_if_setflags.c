
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_flagshigh; int ifr_name; } ;


 int AF_INET ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int SOCK_DGRAM ;
 int close (int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;
 int warn (char*) ;

__attribute__((used)) static int
if_setflags(const char *ifnam, int flags)
{
 struct ifreq ifr;
 int fd, error;
 unsigned int oflags = 0;

 memset(&ifr, 0, sizeof(struct ifreq));
 strlcpy(ifr.ifr_name, ifnam, sizeof(ifr.ifr_name));

 fd = socket(AF_INET, SOCK_DGRAM, 0);
 if (fd < 0)
  return (-1);

 error = ioctl(fd, SIOCGIFFLAGS, &ifr);
 if (error == 0) {
  oflags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
 }

 if (flags < 0)
  oflags &= ~(-flags);
 else
  oflags |= flags;

 ifr.ifr_flags = oflags & 0xffff;
 ifr.ifr_flagshigh = oflags >> 16;

 error = ioctl(fd, SIOCSIFFLAGS, &ifr);
 if (error != 0)
  warn("ioctl SIOCSIFFLAGS");

 close(fd);
 return (error);
}
