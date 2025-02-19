
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int outbuf ;
typedef int inbuf ;


 int MAXPATHLEN ;
 int b64_pton (char*,unsigned char*,int) ;
 int checkend (char*,char*,char*) ;
 int fwrite (unsigned char*,int,int,int ) ;
 int get_line (char*,int) ;
 scalar_t__ isalnum (char) ;
 int outfp ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
base64_decode(void)
{
 int n, count, count4;
 char inbuf[MAXPATHLEN + 1], *p;
 unsigned char outbuf[MAXPATHLEN * 4];
 char leftover[MAXPATHLEN + 1];

 leftover[0] = '\0';
 for (;;) {
  strcpy(inbuf, leftover);
  switch (get_line(inbuf + strlen(inbuf),
      sizeof(inbuf) - strlen(inbuf))) {
  case 0:
   return (0);
  case 1:
   return (1);
  }

  count = 0;
  count4 = -1;
  p = inbuf;
  while (*p != '\0') {




   if (isalnum(*p) || *p == '+' || *p == '/' || *p == '=')
    count++;
   if (count % 4 == 0)
    count4 = p - inbuf;
   p++;
  }

  strcpy(leftover, inbuf + count4 + 1);
  inbuf[count4 + 1] = 0;

  n = b64_pton(inbuf, outbuf, sizeof(outbuf));

  if (n < 0)
   break;
  fwrite(outbuf, 1, n, outfp);
 }
 return (checkend(inbuf, "====", "error decoding base64 input stream"));
}
