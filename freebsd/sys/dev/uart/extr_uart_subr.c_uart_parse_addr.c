
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_addr_t ;


 int strtoul (char const*,char**,int ) ;

__attribute__((used)) static bus_addr_t
uart_parse_addr(const char **p)
{
 return (strtoul(*p, (char**)(uintptr_t)p, 0));
}
