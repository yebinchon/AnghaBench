
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_vardefn {int name; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
bhnd_nvram_find_vardefn_compare(const void *key, const void *rhs)
{
 const struct bhnd_nvram_vardefn *r = rhs;

 return (strcmp((const char *)key, r->name));
}
