
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_strnwidth (char const*,int,int) ;

__attribute__((used)) static int item_length(const char *s)
{
 return utf8_strnwidth(s, -1, 1);
}
