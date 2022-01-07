
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SIZE_MAX ;
 char* malloc (size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
b64enc(const char *ptext)
{
 static const char base64[] =
     "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
     "abcdefghijklmnopqrstuvwxyz"
     "0123456789+/";
 const char *pt;
 char *ctext, *pc;
 size_t ptlen, ctlen;
 uint32_t t;
 unsigned int j;





 ptlen = strlen(ptext);
 if (ptlen > ((SIZE_MAX - 1) / 4) * 3 - 2)
  return ((void*)0);
 ctlen = 4 * ((ptlen + 2) / 3) + 1;
 if ((ctext = malloc(ctlen)) == ((void*)0))
  return ((void*)0);
 ctext[ctlen - 1] = 0;





 for (pt = ptext, pc = ctext; ptlen; ptlen -= 3, pc += 4) {

  for (t = j = 0; j < 3; j++) {
   t <<= 8;
   if (j < ptlen)
    t += *pt++;
  }


  for (j = 0; j < 4; j++) {
   if (j <= ptlen + 1)
    pc[j] = base64[(t >> 18) & 0x3f];
   else
    pc[j] = '=';
   t <<= 6;
  }


  if (ptlen <= 3)
   break;
 }

 return (ctext);
}
