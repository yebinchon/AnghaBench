
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;





 int ng_parse_get_token (char const*,int*,int*) ;

__attribute__((used)) static int
ng_parse_skip_value(const char *s, int off0, int *lenp)
{
 int len, nbracket, nbrace;
 int off = off0;

 len = nbracket = nbrace = 0;
 do {
  switch (ng_parse_get_token(s, &off, &len)) {
  case 130:
   nbracket++;
   break;
  case 131:
   nbrace++;
   break;
  case 128:
   if (nbracket-- == 0)
    return (EINVAL);
   break;
  case 129:
   if (nbrace-- == 0)
    return (EINVAL);
   break;
  case 132:
   return (EINVAL);
  default:
   break;
  }
  off += len;
 } while (nbracket > 0 || nbrace > 0);
 *lenp = off - off0;
 return (0);
}
