
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int EINVAL ;
 int M_NETGRAPH_PARSE ;
 int USHRT_MAX ;
 int bcopy (char*,int * const,int) ;
 int free (char*,int ) ;
 char* ng_get_string_token (char const*,int*,int*,int*) ;

__attribute__((used)) static int
ng_sizedstring_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 char *sval;
 int len;
 int slen;

 if ((sval = ng_get_string_token(s, off, &len, &slen)) == ((void*)0))
  return (EINVAL);
 if (slen > USHRT_MAX) {
  free(sval, M_NETGRAPH_PARSE);
  return (EINVAL);
 }
 *off += len;
 *((u_int16_t *)buf) = (u_int16_t)slen;
 bcopy(sval, buf + 2, slen);
 free(sval, M_NETGRAPH_PARSE);
 *buflen = 2 + slen;
 return (0);
}
