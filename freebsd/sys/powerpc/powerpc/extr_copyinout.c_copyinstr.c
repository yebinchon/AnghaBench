
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int ENAMETOOLONG ;
 int fubyte (int ) ;

int
copyinstr(const void *udaddr, void *kaddr, size_t len, size_t *done)
{
 const char *up;
 char *kp;
 size_t l;
 int rv, c;

 kp = kaddr;
 up = udaddr;

 rv = ENAMETOOLONG;

 for (l = 0; len-- > 0; l++) {
  if ((c = fubyte(up++)) < 0) {
   rv = EFAULT;
   break;
  }

  if (!(*kp++ = c)) {
   l++;
   rv = 0;
   break;
  }
 }

 if (done != ((void*)0)) {
  *done = l;
 }

 return (rv);
}
