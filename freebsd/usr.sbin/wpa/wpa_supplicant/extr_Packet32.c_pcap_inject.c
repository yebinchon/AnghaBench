
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int dummy; } ;
typedef int pcap_t ;
typedef int ifr ;
typedef int device ;
typedef int caddr_t ;


 int BIOCGETIF ;
 int BIOCSETIF ;
 scalar_t__ EBUSY ;
 int O_RDWR ;
 int bzero (char*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int ioctl (int,int ,int ) ;
 int open (char*,int ) ;
 int pcap_fileno (int *) ;
 int snprintf (char*,int,char*,int ) ;
 int write (int,void const*,size_t) ;

int
pcap_inject(pcap_t *p, const void *buf, size_t len)
{
 int fd;
 int res, n = 0;
 char device[sizeof "/dev/bpf0000000000"];
 struct ifreq ifr;




 do {
  (void)snprintf(device, sizeof(device), "/dev/bpf%d", n++);
  fd = open(device, O_RDWR);
 } while (fd < 0 && errno == EBUSY);

 if (fd == -1)
  return(-1);

 bzero((char *)&ifr, sizeof(ifr));
 ioctl(pcap_fileno(p), BIOCGETIF, (caddr_t)&ifr);
 ioctl(fd, BIOCSETIF, (caddr_t)&ifr);

 res = write(fd, buf, len);

 close(fd);

 return(res);
}
