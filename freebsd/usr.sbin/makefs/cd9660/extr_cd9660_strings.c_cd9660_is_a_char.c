
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isupper (unsigned char) ;

__attribute__((used)) static inline int
cd9660_is_a_char(char c)
{
 return (isupper((unsigned char)c)
   || c == '_'
   || (c >= '%' && c <= '?')
   || (c >= ' ' && c <= '\"'));
}
