
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {void* l_len; void* l_start; int l_whence; } ;
typedef void* off_t ;


 int EOF ;
 int F_FREESP ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int SEEK_SET ;
 void* atoll (int ) ;
 scalar_t__ fcntl (int,int ,struct flock*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ malloc (size_t) ;
 int open (char*,int) ;
 int optarg ;
 int optind ;
 int perror (char*) ;
 int stderr ;
 int usage (char*) ;
 size_t write (int,char*,size_t) ;

int
main(int argc, char *argv[])
{
 char *filename, *buf;
 size_t filesize;
 off_t start_off, off_len;
 int fd, ch;
 struct flock fl;

 while ((ch = getopt(argc, argv, "l:s:n:")) != EOF) {
  switch (ch) {
  case 'l':
   filesize = atoll(optarg);
   break;
  case 's':
   start_off = atoll(optarg);
   break;
  case 'n':
   off_len = atoll(optarg);
   break;
  default:
   usage(argv[0]);
   break;
  }
 }

 if (optind == argc - 1)
  filename = argv[optind];
 else
  usage(argv[0]);

 buf = (char *)malloc(filesize);

 if ((fd = open(filename, O_RDWR|O_CREAT|O_TRUNC)) < 0) {
  perror("open");
  return (1);
 }
 if (write(fd, buf, filesize) < filesize) {
  perror("write");
  return (1);
 }
 fprintf(stderr, "fcntl: F_FREESP not supported\n");
 return (1);


 free(buf);
 return (0);
}
