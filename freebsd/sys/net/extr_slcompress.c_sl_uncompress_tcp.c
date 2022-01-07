
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct slcompress {int dummy; } ;


 int BCOPY (int *,intptr_t,int) ;
 int sl_uncompress_tcp_core (int *,int,int,int ,struct slcompress*,int **,int*) ;

int
sl_uncompress_tcp(u_char **bufp, int len, u_int type, struct slcompress *comp)
{
 u_char *hdr, *cp;
 int hlen, vjlen;

 cp = bufp? *bufp: ((void*)0);
 vjlen = sl_uncompress_tcp_core(cp, len, len, type, comp, &hdr, &hlen);
 if (vjlen < 0)
  return (0);
 if (vjlen == 0)
  return (len);

 cp += vjlen;
 len -= vjlen;
 if ((intptr_t)cp & 3) {
  if (len > 0)
   BCOPY(cp, ((intptr_t)cp &~ 3), len);
  cp = (u_char *)((intptr_t)cp &~ 3);
 }
 cp -= hlen;
 len += hlen;
 BCOPY(hdr, cp, hlen);

 *bufp = cp;
 return (len);
}
