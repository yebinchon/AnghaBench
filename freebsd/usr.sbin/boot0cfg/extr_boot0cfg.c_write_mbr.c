
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct gctl_req {int dummy; } ;
typedef int ssize_t ;


 int O_RDONLY ;
 int O_WRONLY ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*,...) ;
 int free (char*) ;
 char* g_providername (int) ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 scalar_t__ geom_class_available (char*) ;
 int open (char const*,int,...) ;
 int warn (char*,char const*) ;
 int write (int,int*,int) ;

__attribute__((used)) static void
write_mbr(const char *fname, int flags, u_int8_t *mbr, int mbr_size,
    int disable_dsn)
{
 struct gctl_req *grq;
 const char *errmsg;
 char *pname;
 ssize_t n;
 int fd;

 fd = open(fname, O_WRONLY | flags, 0666);
 if (fd != -1) {
  n = write(fd, mbr, mbr_size);
  close(fd);
  if (n != mbr_size)
   errx(1, "%s: short write", fname);
  return;
 }





 if (flags != 0)
  err(1, "can't open file %s to write backup", fname);


 fd = open(fname, O_RDONLY);
 if (fd == -1) {
  warn("error opening %s", fname);
  return;
 }

 pname = g_providername(fd);
 if (pname == ((void*)0)) {
  warn("error getting providername for %s", fname);
  return;
 }


 if (geom_class_available("PART") != 0) {
  grq = gctl_get_handle();
  gctl_ro_param(grq, "class", -1, "PART");
  gctl_ro_param(grq, "arg0", -1, pname);
  gctl_ro_param(grq, "verb", -1, "bootcode");
  gctl_ro_param(grq, "bootcode", mbr_size, mbr);
  gctl_ro_param(grq, "flags", -1, "C");
  if (disable_dsn)
   gctl_ro_param(grq, "skip_dsn", sizeof(int),
       &disable_dsn);
  errmsg = gctl_issue(grq);
  if (errmsg != ((void*)0) && errmsg[0] != '\0')
   errx(1, "GEOM_PART: write bootcode to %s failed: %s",
       fname, errmsg);
  gctl_free(grq);
 } else
  errx(1, "can't write MBR to %s", fname);
 free(pname);
}
