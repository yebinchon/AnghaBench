
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISEXP (unsigned char) ;
 scalar_t__ ISSIGN (unsigned char) ;
 int decimal_point ;
 scalar_t__ isdigit (unsigned char) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;

__attribute__((used)) static int
numeric(const char *s)
{
 int seen_decimal_pt, decimal_pt_len;


 if (ISSIGN((unsigned char)*s))
  s++;

 seen_decimal_pt = 0;
 decimal_pt_len = strlen(decimal_point);
 while (*s) {
  if (!isdigit((unsigned char)*s)) {
   if (!seen_decimal_pt &&
       strncmp(s, decimal_point, decimal_pt_len) == 0) {
    s += decimal_pt_len;
    seen_decimal_pt = 1;
    continue;
   }
   if (ISEXP((unsigned char)*s)) {
    s++;
    if (ISSIGN((unsigned char)*s) ||
        isdigit((unsigned char)*s)) {
     s++;
     continue;
    }
   }
   break;
  }
  s++;
 }
 return (*s == '\0');
}
