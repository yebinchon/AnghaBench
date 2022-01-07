
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_name; } ;
typedef int ifr ;
typedef int buf ;


 int D (char*,char*) ;
 int IFF_NO_PI ;
 int IFF_TAP ;
 size_t IFNAMSIZ ;
 int O_RDWR ;
 char* TAP_CLONEDEV ;
 int TUNSETIFF ;
 int close (int) ;
 int errno ;
 int ioctl (int,int ,void*) ;
 int memcpy (int ,char*,size_t) ;
 int memset (struct ifreq*,int ,int) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int strcpy (char*,int ) ;
 char* strerror (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
tap_alloc(char *dev)
{
 struct ifreq ifr;
 int fd, err;
 char *clonedev = TAP_CLONEDEV;

 (void)err;
 (void)dev;
 if( (fd = open(clonedev, O_RDWR)) < 0 ) {
  return fd;
 }
 D("%s open successful", clonedev);


 memset(&ifr, 0, sizeof(ifr));


 ifr.ifr_flags = IFF_TAP | IFF_NO_PI;

 if (*dev) {



  size_t len = strlen(dev);
  if (len > IFNAMSIZ) {
   D("%s too long", dev);
   return -1;
  }
  memcpy(ifr.ifr_name, dev, len);
 }


 if( (err = ioctl(fd, TUNSETIFF, (void *) &ifr)) < 0 ) {
  D("failed to to a TUNSETIFF: %s", strerror(errno));
  close(fd);
  return err;
 }





 strcpy(dev, ifr.ifr_name);
 D("new name is %s", dev);




 return fd;
}
