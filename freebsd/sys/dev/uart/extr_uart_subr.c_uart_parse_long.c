
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static long
uart_parse_long(const char **p)
{
 return (strtol(*p, (char**)(uintptr_t)p, 0));
}
