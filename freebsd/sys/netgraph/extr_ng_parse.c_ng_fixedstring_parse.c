
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {struct ng_parse_fixedstring_info* info; } ;
struct ng_parse_fixedstring_info {int bufSize; } ;


 int E2BIG ;
 int EINVAL ;
 int M_NETGRAPH_PARSE ;
 int bcopy (char*,int * const,int) ;
 int bzero (int * const,int) ;
 int free (char*,int ) ;
 char* ng_get_string_token (char const*,int*,int*,int*) ;

__attribute__((used)) static int
ng_fixedstring_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 const struct ng_parse_fixedstring_info *const fi = type->info;
 char *sval;
 int len;
 int slen;

 if ((sval = ng_get_string_token(s, off, &len, &slen)) == ((void*)0))
  return (EINVAL);
 if (slen + 1 > fi->bufSize) {
  free(sval, M_NETGRAPH_PARSE);
  return (E2BIG);
 }
 *off += len;
 bcopy(sval, buf, slen);
 free(sval, M_NETGRAPH_PARSE);
 bzero(buf + slen, fi->bufSize - slen);
 *buflen = fi->bufSize;
 return (0);
}
