
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_bootrom {int pf_offset; long pfidx_addr; scalar_t__ data; int len; int member_0; } ;
struct stat {int st_size; int member_0; } ;


 int CHELSIO_T4_LOAD_BOOT ;
 int EINVAL ;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int doit (int ,struct t4_bootrom*) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ mmap (int ,int ,int ,int ,int,int ) ;
 int munmap (scalar_t__,int ) ;
 int open (char const*,int ) ;
 char* str_to_number (char const*,long*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int warn (char*,...) ;
 int warnx (char*) ;

__attribute__((used)) static int
loadboot(int argc, const char *argv[])
{
 int rc, fd;
 long l;
 char *p;
 struct t4_bootrom br = {0};
 const char *fname = argv[0];
 struct stat st = {0};

 if (argc == 1) {
  br.pf_offset = 0;
  br.pfidx_addr = 0;
 } else if (argc == 3) {
  if (!strcmp(argv[1], "pf"))
   br.pf_offset = 0;
  else if (!strcmp(argv[1], "offset"))
   br.pf_offset = 1;
  else
   return (EINVAL);

  p = str_to_number(argv[2], &l, ((void*)0));
  if (*p)
   return (EINVAL);
  br.pfidx_addr = l;
 } else {
  warnx("loadboot: incorrect number of arguments.");
  return (EINVAL);
 }

 if (strcmp(fname, "clear") == 0)
  return (doit(CHELSIO_T4_LOAD_BOOT, &br));

 fd = open(fname, O_RDONLY);
 if (fd < 0) {
  warn("open(%s)", fname);
  return (errno);
 }

 if (fstat(fd, &st) < 0) {
  warn("fstat");
  close(fd);
  return (errno);
 }

 br.len = st.st_size;
 br.data = mmap(0, br.len, PROT_READ, MAP_PRIVATE, fd, 0);
 if (br.data == MAP_FAILED) {
  warn("mmap");
  close(fd);
  return (errno);
 }

 rc = doit(CHELSIO_T4_LOAD_BOOT, &br);
 munmap(br.data, br.len);
 close(fd);
 return (rc);
}
