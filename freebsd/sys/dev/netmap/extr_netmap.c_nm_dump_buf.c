
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char P_C (char) ;
 char P_HI (char) ;
 char P_LO (char) ;
 int memset (char*,char,int) ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

const char *
nm_dump_buf(char *p, int len, int lim, char *dst)
{
 static char _dst[8192];
 int i, j, i0;
 static char hex[] ="0123456789abcdef";
 char *o;




 if (!dst)
  dst = _dst;
 if (lim <= 0 || lim > len)
  lim = len;
 o = dst;
 sprintf(o, "buf 0x%p len %d lim %d\n", p, len, lim);
 o += strlen(o);

 for (i = 0; i < lim; ) {
  sprintf(o, "%5d: ", i);
  o += strlen(o);
  memset(o, ' ', 48);
  i0 = i;
  for (j=0; j < 16 && i < lim; i++, j++) {
   o[j*3] = hex[((p[i]) & 0xf0)>>4];
   o[j*3+1] = hex[((p[i]) & 0xf)];
  }
  i = i0;
  for (j=0; j < 16 && i < lim; i++, j++)
   o[j + 48] = ((p[i]) >= 0x20 && (p[i]) <= 0x7e ? (p[i]) : '.');
  o[j+48] = '\n';
  o += j+49;
 }
 *o = '\0';



 return dst;
}
