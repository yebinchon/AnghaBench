
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_data {scalar_t__ data; int len; int member_0; } ;
struct stat {int st_size; int member_0; } ;


 int CHELSIO_T4_LOAD_FW ;
 int EINVAL ;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int doit (int ,struct t4_data*) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ mmap (int ,int ,int ,int ,int,int ) ;
 int munmap (scalar_t__,int ) ;
 int open (char const*,int ) ;
 int warn (char*,...) ;
 int warnx (char*) ;

__attribute__((used)) static int
loadfw(int argc, const char *argv[])
{
 int rc, fd;
 struct t4_data data = {0};
 const char *fname = argv[0];
 struct stat st = {0};

 if (argc != 1) {
  warnx("loadfw: incorrect number of arguments.");
  return (EINVAL);
 }

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

 data.len = st.st_size;
 data.data = mmap(0, data.len, PROT_READ, MAP_PRIVATE, fd, 0);
 if (data.data == MAP_FAILED) {
  warn("mmap");
  close(fd);
  return (errno);
 }

 rc = doit(CHELSIO_T4_LOAD_FW, &data);
 munmap(data.data, data.len);
 close(fd);
 return (rc);
}
