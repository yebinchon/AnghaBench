
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
typedef int FILE ;


 int DEC (char) ;
 int bcopy (char*,char*,int) ;
 int fgets (char*,int,int *) ;
 int sscanf (char*,char*,unsigned int*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int decode(FILE *fd, char *buffer, int len)
{
 int n, pos = 0, tpos;
 char *bp, *p;
 char tbuffer[3];
 char temp[128];



 do {
  if (!fgets(temp, sizeof(temp), fd))
   return(0);
 } while (strncmp(temp, "begin ", 6));
 sscanf(temp, "begin %o %s", (unsigned *)&n, temp);
 bp = buffer;
 for (;;) {
  if (!fgets(p = temp, sizeof(temp), fd))
   return(0);
  if ((n = (((*p) - ' ') & 0x3f)) <= 0)
   break;
  for (++p; n > 0; p += 4, n -= 3) {
   tpos = 0;
   if (n >= 3) {
    tbuffer[tpos++] = (((p[0]) - ' ') & 0x3f)<<2 | (((p[1]) - ' ') & 0x3f)>>4;
    tbuffer[tpos++] = (((p[1]) - ' ') & 0x3f)<<4 | (((p[2]) - ' ') & 0x3f)>>2;
    tbuffer[tpos++] = (((p[2]) - ' ') & 0x3f)<<6 | (((p[3]) - ' ') & 0x3f);
   }
   else {
    if (n >= 1) {
     tbuffer[tpos++] =
      (((p[0]) - ' ') & 0x3f)<<2 | (((p[1]) - ' ') & 0x3f)>>4;
    }
    if (n >= 2) {
     tbuffer[tpos++] =
      (((p[1]) - ' ') & 0x3f)<<4 | (((p[2]) - ' ') & 0x3f)>>2;
    }
    if (n >= 3) {
     tbuffer[tpos++] =
      (((p[2]) - ' ') & 0x3f)<<6 | (((p[3]) - ' ') & 0x3f);
    }
   }
   if (tpos == 0)
    continue;
   if (tpos + pos > len) {
    tpos = len - pos;




    pos++;
   }
   bcopy(tbuffer, bp, tpos);
   pos += tpos;
   bp += tpos;
   if (pos > len)
    return(pos);
  }
 }
 if (!fgets(temp, sizeof(temp), fd) || strcmp(temp, "end\n"))
  return(0);
 return(pos);
}
