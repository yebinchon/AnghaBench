
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
struct iconv_xlat {int * d_table; } ;


 int min (size_t,size_t) ;

__attribute__((used)) static int
iconv_xlat_conv(void *d2p, const char **inbuf,
 size_t *inbytesleft, char **outbuf, size_t *outbytesleft,
 int convchar, int casetype)
{
 struct iconv_xlat *dp = (struct iconv_xlat*)d2p;
 const char *src;
 char *dst;
 int n, r;

 if (inbuf == ((void*)0) || *inbuf == ((void*)0) || outbuf == ((void*)0) || *outbuf == ((void*)0))
  return 0;
 if (casetype != 0)
  return -1;
 if (convchar == 1)
  r = n = 1;
 else
  r = n = min(*inbytesleft, *outbytesleft);
 src = *inbuf;
 dst = *outbuf;
 while(r--)
  *dst++ = dp->d_table[(u_char)*src++];
 *inbuf += n;
 *outbuf += n;
 *inbytesleft -= n;
 *outbytesleft -= n;
 return 0;
}
