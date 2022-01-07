
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERBOSE ;
 scalar_t__ boolean (int ) ;
 int t3000_nap () ;
 int tcdrain (int) ;
 int value (int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
t3000_write(int fd, char *cp, int n)
{




 tcdrain(fd);
 t3000_nap();
 for ( ; n-- ; cp++) {
  write(fd, cp, 1);
  tcdrain(fd);
  t3000_nap();
 }
}
