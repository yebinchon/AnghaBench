
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int buf ;


 int errx (int,char*,int ) ;
 int fname ;
 size_t readx (int,char*,size_t,int) ;
 int writex (int,char*,size_t) ;

__attribute__((used)) static void
copy(int fdi, int fdo, size_t nbyte, off_t offset)
{
    char buf[8192];
    size_t n;

    while (nbyte) {
 if ((n = sizeof(buf)) > nbyte)
     n = nbyte;
 if (readx(fdi, buf, n, offset) != n)
     errx(2, "%s: Short read", fname);
 writex(fdo, buf, n);
 nbyte -= n;
 offset = -1;
    }
}
