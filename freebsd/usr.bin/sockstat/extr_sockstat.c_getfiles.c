
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int xf_size; } ;


 scalar_t__ ENOMEM ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 TYPE_1__* malloc (size_t) ;
 size_t nxfiles ;
 TYPE_1__* realloc (TYPE_1__*,size_t) ;
 int sysctlbyname (char*,TYPE_1__*,size_t*,int ,int ) ;
 TYPE_1__* xfiles ;

__attribute__((used)) static void
getfiles(void)
{
 size_t len, olen;

 olen = len = sizeof(*xfiles);
 if ((xfiles = malloc(len)) == ((void*)0))
  err(1, "malloc()");
 while (sysctlbyname("kern.file", xfiles, &len, 0, 0) == -1) {
  if (errno != ENOMEM || len != olen)
   err(1, "sysctlbyname()");
  olen = len *= 2;
  if ((xfiles = realloc(xfiles, len)) == ((void*)0))
   err(1, "realloc()");
 }
 if (len > 0 && xfiles->xf_size != sizeof(*xfiles))
  errx(1, "struct xfile size mismatch");
 nxfiles = len / sizeof(*xfiles);
}
