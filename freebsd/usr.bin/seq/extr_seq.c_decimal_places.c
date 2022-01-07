
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decimal_point ;
 scalar_t__ isdigit (unsigned char) ;
 int strlen (int ) ;
 char* strstr (char const*,int ) ;

__attribute__((used)) static int
decimal_places(const char *number)
{
 int places = 0;
 char *dp;


 if ((dp = strstr(number, decimal_point))) {
  dp += strlen(decimal_point);

  while (isdigit((unsigned char)*dp++))
   places++;
 }
 return (places);
}
