
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfile {int dummy; } ;


 int CTL_KERN ;
 int KERN_FILE ;
 int errx (int,char*) ;
 int * kd ;
 struct xfile* malloc (size_t) ;
 int sysctl (int*,int,struct xfile*,size_t*,int *,int ) ;
 int warn (char*) ;

__attribute__((used)) static int
getfiles(struct xfile **abuf, size_t *alen)
{
 struct xfile *buf;
 size_t len;
 int mib[2];





 if (kd != ((void*)0))
  errx(1, "files on dead kernel, not implemented");

 mib[0] = CTL_KERN;
 mib[1] = KERN_FILE;
 if (sysctl(mib, 2, ((void*)0), &len, ((void*)0), 0) == -1) {
  warn("sysctl: KERN_FILE");
  return (-1);
 }
 if ((buf = malloc(len)) == ((void*)0))
  errx(1, "malloc");
 if (sysctl(mib, 2, buf, &len, ((void*)0), 0) == -1) {
  warn("sysctl: KERN_FILE");
  return (-1);
 }
 *abuf = buf;
 *alen = len;
 return (0);
}
