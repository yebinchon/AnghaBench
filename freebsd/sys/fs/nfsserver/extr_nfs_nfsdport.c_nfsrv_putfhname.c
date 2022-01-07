
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int fhandle_t ;



__attribute__((used)) static int
nfsrv_putfhname(fhandle_t *fhp, char *bufp)
{
 int i;
 uint8_t *cp;
 const uint8_t *hexdigits = "0123456789abcdef";

 cp = (uint8_t *)fhp;
 for (i = 0; i < sizeof(*fhp); i++) {
  bufp[2 * i] = hexdigits[(*cp >> 4) & 0xf];
  bufp[2 * i + 1] = hexdigits[*cp++ & 0xf];
 }
 bufp[2 * i] = '\0';
 return (2 * i);
}
