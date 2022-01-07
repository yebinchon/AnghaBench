
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int ENOMEM ;
 int M_NETGRAPH_PARSE ;
 int free (char* const,int ) ;
 char* ng_encode_string (char const* const,int const) ;
 int ng_parse_append (char**,int*,char*,char* const) ;

__attribute__((used)) static int
ng_sizedstring_unparse(const struct ng_parse_type *type,
 const u_char *data, int *off, char *cbuf, int cbuflen)
{
 const char *const raw = (const char *)data + *off + 2;
 const int slen = *((const u_int16_t *)(data + *off));
 char *const s = ng_encode_string(raw, slen);
 int error;

 if (s == ((void*)0))
  return (ENOMEM);
 if ((error = ng_parse_append(&cbuf, &cbuflen, "%s", s)) != 0) {
  free(s, M_NETGRAPH_PARSE);
  return (error);
 }
 free(s, M_NETGRAPH_PARSE);
 *off += slen + 2;
 return (0);
}
