
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uf ;
struct usbcap_filehdr {scalar_t__ major; int minor; int magic; } ;
struct usbcap {scalar_t__ rfd; } ;


 int EXIT_FAILURE ;
 int EX_SOFTWARE ;
 int O_RDONLY ;
 scalar_t__ USBCAP_FILEHDR_MAGIC ;
 int err (int ,char*,...) ;
 int errx (int ,char*,int) ;
 scalar_t__ le32toh (int ) ;
 scalar_t__ open (int ,int ) ;
 int r_arg ;
 int read (scalar_t__,struct usbcap_filehdr*,int) ;
 int uf_minor ;

__attribute__((used)) static void
init_rfile(struct usbcap *p)
{
 struct usbcap_filehdr uf;
 int ret;

 p->rfd = open(r_arg, O_RDONLY);
 if (p->rfd < 0) {
  err(EXIT_FAILURE, "Could not open "
      "'%s' for read", r_arg);
 }
 ret = read(p->rfd, &uf, sizeof(uf));
 if (ret != sizeof(uf)) {
  err(EXIT_FAILURE, "Could not read USB capture "
      "file header");
 }
 if (le32toh(uf.magic) != USBCAP_FILEHDR_MAGIC) {
  errx(EX_SOFTWARE, "Invalid magic field(0x%08x) "
      "in USB capture file header.",
      (unsigned int)le32toh(uf.magic));
 }
 if (uf.major != 0) {
  errx(EX_SOFTWARE, "Invalid major version(%d) "
      "field in USB capture file header.", (int)uf.major);
 }

 uf_minor = uf.minor;

 if (uf.minor != 3 && uf.minor != 2) {
  errx(EX_SOFTWARE, "Invalid minor version(%d) "
      "field in USB capture file header.", (int)uf.minor);
 }
}
