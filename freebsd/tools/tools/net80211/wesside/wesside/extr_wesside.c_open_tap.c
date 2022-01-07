
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_rdev; } ;
struct ifreq {int ifr_mtu; int ifr_flags; int ifr_flagshigh; int ifr_name; } ;
typedef int ifr ;


 unsigned int IFF_UP ;
 int O_RDWR ;
 int PF_INET ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int SIOCSIFMTU ;
 int SOCK_DGRAM ;
 int S_IFCHR ;
 int TAP_DEV ;
 int close (int) ;
 int devname (int ,int ) ;
 int errno ;
 int exit (int) ;
 int fstat (int,struct stat*) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int open (int ,int ) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int socket (int ,int ,int ) ;
 int strcpy (int ,int ) ;
 char* strerror (int ) ;
 int tapdev ;
 int tapfd ;
 int time_print (char*,int ) ;

void open_tap() {
 struct stat st;
 int s;
 struct ifreq ifr;
 unsigned int flags;

 tapfd = open(TAP_DEV, O_RDWR);
 if (tapfd == -1) {
  printf("Can't open tap: %s\n", strerror(errno));
  exit(1);
 }
 if(fstat(tapfd, &st) == -1) {
  perror("fstat()");
  exit(1);
 }


 strcpy(tapdev, devname(st.st_rdev, S_IFCHR));

 s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s == -1) {
  perror("socket()");
  exit(1);
 }


 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, tapdev);
 ifr.ifr_mtu = 1500;
 if (ioctl(s, SIOCSIFMTU, &ifr) == -1) {
  perror("ioctl(SIOCSIFMTU)");
  exit(1);
 }


 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, tapdev);
 if (ioctl(s, SIOCGIFFLAGS, &ifr) == -1) {
  perror("ioctl(SIOCGIFFLAGS)");
  exit(1);
 }

 flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
 flags |= IFF_UP;

 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, tapdev);
 ifr.ifr_flags = flags & 0xffff;
 ifr.ifr_flagshigh = flags >> 16;
 if (ioctl(s, SIOCSIFFLAGS, &ifr) == -1) {
  perror("ioctl(SIOCSIFFLAGS)");
  exit(1);
 }

 close(s);
 time_print("Opened tap device: %s\n", tapdev);
}
