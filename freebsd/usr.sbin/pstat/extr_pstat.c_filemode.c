
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct xfile {size_t xf_type; int xf_flag; int xf_count; int xf_msgcount; scalar_t__ xf_offset; scalar_t__ xf_data; scalar_t__ xf_file; } ;
typedef int dtypes ;
struct TYPE_2__ {int n_value; } ;


 int FAPPEND ;
 int FASYNC ;
 int FREAD ;
 int FWRITE ;
 size_t NL_MAXFILES ;
 size_t NL_NFILES ;
 int err (int,char*) ;
 int errx (int,char*,int ) ;
 char* fhdr32 ;
 char* fhdr64 ;
 int free (struct xfile*) ;
 int getfiles (struct xfile**,size_t*) ;
 int * kd ;
 int kvm_geterr (int *) ;
 int kvm_read (int *,int ,int*,int) ;
 TYPE_1__* nl ;
 int printf (char*,...) ;
 int sysctlbyname (char*,int*,size_t*,int ,int ) ;
 scalar_t__ totalflag ;

__attribute__((used)) static void
filemode(void)
{
 struct xfile *fp, *buf;
 char flagbuf[16], *fbp;
 int maxf, openf;
 size_t len;
 static char const * const dtypes[] = { "???", "inode", "socket",
     "pipe", "fifo", "kqueue", "crypto" };
 int i;
 int wid;

 if (kd != ((void*)0)) {
  if (kvm_read(kd, nl[NL_MAXFILES].n_value,
   &maxf, sizeof maxf) != sizeof maxf ||
      kvm_read(kd, nl[NL_NFILES].n_value,
   &openf, sizeof openf) != sizeof openf)
   errx(1, "kvm_read(): %s", kvm_geterr(kd));
 } else {
  len = sizeof(int);
  if (sysctlbyname("kern.maxfiles", &maxf, &len, 0, 0) == -1 ||
      sysctlbyname("kern.openfiles", &openf, &len, 0, 0) == -1)
   err(1, "sysctlbyname()");
 }

 if (totalflag) {
  (void)printf("%3d/%3d files\n", openf, maxf);
  return;
 }
 if (getfiles(&buf, &len) == -1)
  return;
 openf = len / sizeof *fp;

 (void)printf("%d/%d open files\n", openf, maxf);
 printf(sizeof(uintptr_t) == 4 ? fhdr32 : fhdr64);
 wid = (int)sizeof(uintptr_t) * 2;
 for (fp = (struct xfile *)buf, i = 0; i < openf; ++fp, ++i) {
  if ((size_t)fp->xf_type >= sizeof(dtypes) / sizeof(dtypes[0]))
   continue;
  (void)printf("%*jx", wid, (uintmax_t)(uintptr_t)fp->xf_file);
  (void)printf(" %-6.6s", dtypes[fp->xf_type]);
  fbp = flagbuf;
  if (fp->xf_flag & FREAD)
   *fbp++ = 'R';
  if (fp->xf_flag & FWRITE)
   *fbp++ = 'W';
  if (fp->xf_flag & FAPPEND)
   *fbp++ = 'A';
  if (fp->xf_flag & FASYNC)
   *fbp++ = 'I';
  *fbp = '\0';
  (void)printf(" %4s %3d", flagbuf, fp->xf_count);
  (void)printf(" %3d", fp->xf_msgcount);
  (void)printf(" %*jx", wid, (uintmax_t)(uintptr_t)fp->xf_data);
  (void)printf(" %*jx\n", (int)sizeof(fp->xf_offset) * 2,
      (uintmax_t)fp->xf_offset);
 }
 free(buf);
}
