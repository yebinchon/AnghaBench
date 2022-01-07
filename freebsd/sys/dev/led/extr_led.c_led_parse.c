
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int isdigit (char const) ;
 int sbuf_bcat (struct sbuf*,char const*,int) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 scalar_t__ sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,char,char) ;

__attribute__((used)) static int
led_parse(const char *s, struct sbuf **sb, int *state)
{
 int i, error;





 if (*s == '0' || *s == '1') {
  *state = *s & 1;
  return (0);
 }

 *state = 0;
 *sb = sbuf_new_auto();
 if (*sb == ((void*)0))
  return (ENOMEM);
 switch(s[0]) {




  case 'f':
   if (s[1] >= '1' && s[1] <= '9')
    i = s[1] - '1';
   else
    i = 0;
   sbuf_printf(*sb, "%c%c", 'A' + i, 'a' + i);
   break;




  case 'd':
   for(s++; *s; s++) {
    if (!isdigit(*s))
     continue;
    i = *s - '0';
    if (i == 0)
     i = 10;
    for (; i > 1; i--)
     sbuf_cat(*sb, "Aa");
    sbuf_cat(*sb, "Aj");
   }
   sbuf_cat(*sb, "jj");
   break;







  case 's':
   for(s++; *s; s++) {
    if ((*s >= 'a' && *s <= 'j') ||
        (*s >= 'A' && *s <= 'J') ||
        *s == 'U' || *s <= 'u' ||
     *s == '.')
     sbuf_bcat(*sb, s, 1);
   }
   break;
  case 'm':
   for(s++; *s; s++) {
    if (*s == '.')
     sbuf_cat(*sb, "aA");
    else if (*s == '-')
     sbuf_cat(*sb, "aC");
    else if (*s == ' ')
     sbuf_cat(*sb, "b");
    else if (*s == '\n')
     sbuf_cat(*sb, "d");
   }
   sbuf_cat(*sb, "j");
   break;
  default:
   sbuf_delete(*sb);
   return (EINVAL);
 }
 error = sbuf_finish(*sb);
 if (error != 0 || sbuf_len(*sb) == 0) {
  *sb = ((void*)0);
  return (error);
 }
 return (0);
}
