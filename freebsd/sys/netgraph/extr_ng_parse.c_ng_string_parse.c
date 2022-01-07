
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int EINVAL ;
 int M_NETGRAPH_PARSE ;
 int bcopy (char*,int * const,int) ;
 int free (char*,int ) ;
 char* ng_get_string_token (char const*,int*,int*,int*) ;

__attribute__((used)) static int
ng_string_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 char *sval;
 int len;
 int slen;

 if ((sval = ng_get_string_token(s, off, &len, &slen)) == ((void*)0))
  return (EINVAL);
 *off += len;
 bcopy(sval, buf, slen + 1);
 free(sval, M_NETGRAPH_PARSE);
 *buflen = slen + 1;
 return (0);
}
