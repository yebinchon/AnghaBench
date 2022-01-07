
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ksw_used; int ksw_devname; } ;


 int CONVERT (int ) ;
 int dlen ;
 TYPE_1__* kvmsw ;
 int kvnsw ;
 int strlen (int ) ;
 int ulen ;

__attribute__((used)) static void
calclens(void)
{
 int i, n;
 int len;

 dlen = sizeof("Disk");
 for (i = 0; i < kvnsw; ++i) {
  len = strlen(kvmsw[i].ksw_devname);
  if (dlen < len)
   dlen = len;
 }

 ulen = sizeof("Used");
 for (n = CONVERT(kvmsw[kvnsw].ksw_used), len = 2; n /= 10; ++len);
 if (ulen < len)
  ulen = len;
}
