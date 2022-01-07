
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int ;


 scalar_t__ isalpha (char) ;
 int isascii (char) ;
 scalar_t__ isdigit (char) ;
 int isprint (char) ;
 int warnx (char*,char) ;

__attribute__((used)) static char
isvalid_fchar(char c, int pos)
{
 if (isalpha(c)|| c == '/'|| c == '_' || c == '.' || c == '~' ||
     (pos != 0 && isdigit(c))){
  return (c);
 }

 if (c == '\0')
  return (0);

 if (!isascii(c) || !isprint(c))
  warnx("Unexpected character %#2x", (u_int) c);
 else
  warnx("Illegal character '%c'", c);

 return (-1);
}
