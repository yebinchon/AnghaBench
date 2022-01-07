
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;


 int ETHER_ADDR_LEN ;
 int _set (void**) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int memset (void**,int,int) ;
 char* strsep (char**,char*) ;
 void* strtol (char*,char**,int) ;

__attribute__((used)) static void
set(char *eaddrstr)
{
 uint8_t eaddr[ETHER_ADDR_LEN];
 char *p;
 long l;
 int i;

 memset(eaddr, 0x00, ETHER_ADDR_LEN);
 i = 0;
 while ((p = strsep(&eaddrstr, ":")) != ((void*)0) && i < ETHER_ADDR_LEN) {
  errno = 0;
  l = strtol(p, (char **)((void*)0), 16);
  if (l == 0 && errno != 0)
   errx(1, "Failed to parse Ethernet address given: %s\n", p);
  if (l < 0x00 || l > 0xff)
   errx(1, "Failed to parse Ethernet address given: %lx\n", l);
  eaddr[i++] = strtol(p, (char **)((void*)0), 16);
 }

 if (i != ETHER_ADDR_LEN)
  errx(1, "Failed to parse Ethernet address given\n");

 _set(eaddr);
 exit(0);
}
