
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct ifreq {int ifr_name; } ;
struct ifaddrs {int ifa_flags; TYPE_2__* ifa_addr; int ifa_name; struct ifaddrs* ifa_next; } ;
typedef int in_addr_t ;
typedef int ifr ;
struct TYPE_4__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int BIOCSETIF ;
 scalar_t__ ENOENT ;
 int IFF_LOOPBACK ;
 int IFNAMSIZ ;
 int O_RDWR ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 int freeifaddrs (struct ifaddrs*) ;
 int getifaddrs (struct ifaddrs**) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int open (char*,int ) ;
 int strerror (scalar_t__) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int
open_lobpf(in_addr_t *addrp)
{
 struct ifreq ifr;
 struct ifaddrs *ifa, *ifap;
 int error, fd;

 fd = open("/dev/bpf0", O_RDWR);
 if (fd < 0 && errno == ENOENT)
  atf_tc_skip("no BPF device available");
 ATF_REQUIRE_MSG(fd >= 0, "open(/dev/bpf0): %s", strerror(errno));

 error = getifaddrs(&ifap);
 ATF_REQUIRE(error == 0);
 for (ifa = ifap; ifa != ((void*)0); ifa = ifa->ifa_next)
  if ((ifa->ifa_flags & IFF_LOOPBACK) != 0 &&
      ifa->ifa_addr->sa_family == AF_INET)
   break;
 if (ifa == ((void*)0))
  atf_tc_skip("no loopback address found");

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, ifa->ifa_name, IFNAMSIZ);
 error = ioctl(fd, BIOCSETIF, &ifr);
 ATF_REQUIRE_MSG(error == 0, "ioctl(BIOCSETIF): %s", strerror(errno));

 *addrp = ((struct sockaddr_in *)(void *)ifa->ifa_addr)->sin_addr.s_addr;

 freeifaddrs(ifap);

 return (fd);
}
