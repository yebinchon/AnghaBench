
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ch_mem_range {int len; int buf; } ;


 int CHELSIO_LOAD_BOOT ;
 int MAX_BOOT_IMAGE_SIZE ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ doit (char const*,int ,struct ch_mem_range*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int malloc (int) ;
 int open (char const*,int ) ;
 int read (int,int ,int) ;

__attribute__((used)) static int
load_boot(int argc, char *argv[], int start_arg, const char *iff_name)
{
 int fd, len;
 struct ch_mem_range op;
 const char *fname = argv[start_arg];

 if (argc != start_arg + 1) return -1;

 fd = open(fname, O_RDONLY);
 if (fd < 0)
  err(1, "load boot image");

 op.buf = malloc(MAX_BOOT_IMAGE_SIZE + 1);
 if (!op.buf)
  err(1, "load boot image");

 len = read(fd, op.buf, MAX_BOOT_IMAGE_SIZE + 1);
 if (len < 0)
  err(1, "load boot image");
  if (len > MAX_BOOT_IMAGE_SIZE)
  errx(1, "boot image too large");

 op.len = len;

 if (doit(iff_name, CHELSIO_LOAD_BOOT, &op) < 0)
  err(1, "load boot image");

 close(fd);
 return 0;
}
