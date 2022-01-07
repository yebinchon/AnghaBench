
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q_length; int q_max; } ;
union mfi_statrequest {int ms_item; TYPE_1__ ms_qstat; } ;


 int MFIIO_STATS ;
 int O_RDWR ;
 int atoi (char*) ;
 int bzero (union mfi_statrequest*,int) ;
 int close (int) ;
 int errno ;
 int ioctl (int,int ,union mfi_statrequest*) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 char* strerror (int ) ;
 int usage () ;

int
main(int argc, char **argv)
{
 union mfi_statrequest sr;
 int fd, retval, queue;

 if (argc != 2)
  usage();

 fd = open("/dev/mfi0", O_RDWR);
 if (fd == -1) {
  printf("couldn't open mfi0: %s\n", strerror(errno));
  return (-1);
 }

 queue = atoi(argv[1]);
 printf("Getting stats for queue %d\n", queue);
 bzero(&sr, sizeof(union mfi_statrequest));
 sr.ms_item = queue;
 retval = ioctl(fd, MFIIO_STATS, &sr);
 if (retval == -1) {
  printf("error on ioctl: %s\n", strerror(errno));
  return (-1);
 }

 printf("length= %d, max= %d\n",sr.ms_qstat.q_length, sr.ms_qstat.q_max);

 close(fd);
 return 0;
}
