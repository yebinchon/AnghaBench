
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uf ;
struct usbcap_filehdr {int minor; scalar_t__ major; int magic; } ;
struct usbcap {scalar_t__ wfd; } ;


 int EXIT_FAILURE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int USBCAP_FILEHDR_MAGIC ;
 int err (int ,char*,...) ;
 int htole32 (int ) ;
 int memset (struct usbcap_filehdr*,int ,int) ;
 scalar_t__ open (int ,int,int) ;
 int w_arg ;
 int write (scalar_t__,void const*,int) ;

__attribute__((used)) static void
init_wfile(struct usbcap *p)
{
 struct usbcap_filehdr uf;
 int ret;

 p->wfd = open(w_arg, O_CREAT | O_TRUNC | O_WRONLY, S_IRUSR | S_IWUSR);
 if (p->wfd < 0) {
  err(EXIT_FAILURE, "Could not open "
      "'%s' for write", w_arg);
 }
 memset(&uf, 0, sizeof(uf));
 uf.magic = htole32(USBCAP_FILEHDR_MAGIC);
 uf.major = 0;
 uf.minor = 3;
 ret = write(p->wfd, (const void *)&uf, sizeof(uf));
 if (ret != sizeof(uf)) {
  err(EXIT_FAILURE, "Could not write "
      "USB capture header");
 }
}
