
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;

__attribute__((used)) static unsigned char
hexchar_to_byte(unsigned char c)
{

 if (isdigit(c))
  return (c - '0');

 return (isupper(c) ? c - 'A' + 10 : c - 'a' + 10);
}
