
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int cpath ;


 int PATH_MAX ;
 int SPIGENIOC_GET_CLOCK_SPEED ;
 int SPIGENIOC_GET_SPI_MODE ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int ioctl (int,int ,int*) ;
 int realpath (char const*,char*) ;
 int stderr ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
get_info(int hdev, const char *dev_name)
{
 uint32_t fmode, fspeed;
 int err;
 char temp_buf[PATH_MAX], cpath[PATH_MAX];

 if (!realpath(dev_name, cpath))
  strlcpy(cpath, temp_buf, sizeof(cpath));

 err = ioctl(hdev, SPIGENIOC_GET_SPI_MODE, &fmode);

 if (err == 0)
  err = ioctl(hdev, SPIGENIOC_GET_CLOCK_SPEED, &fspeed);

 if (err == 0) {
  fprintf(stderr,
          "Device name:   %s\n"
          "Device mode:   %d\n"
          "Device speed:  %d\n",
          cpath, fmode, fspeed);
 }
 else
  fprintf(stderr, "Unable to query info (err=%d), errno=%d\n",
      err, errno);

 return err;
}
