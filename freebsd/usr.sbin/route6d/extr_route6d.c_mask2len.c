
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in6_addr {int dummy; } ;


 int MASKLEN (int,int) ;

__attribute__((used)) static int
mask2len(const struct in6_addr *addr, int lenlim)
{
 int i = 0, j;
 const u_char *p = (const u_char *)addr;

 for (j = 0; j < lenlim; j++, p++) {
  if (*p != 0xff)
   break;
  i += 8;
 }
 if (j < lenlim) {
  switch (*p) {

  case 0xfe: do { i += 7; break; } while (0); break;
  case 0xfc: do { i += 6; break; } while (0); break;
  case 0xf8: do { i += 5; break; } while (0); break;
  case 0xf0: do { i += 4; break; } while (0); break;
  case 0xe0: do { i += 3; break; } while (0); break;
  case 0xc0: do { i += 2; break; } while (0); break;
  case 0x80: do { i += 1; break; } while (0); break;

  }
 }
 return i;
}
