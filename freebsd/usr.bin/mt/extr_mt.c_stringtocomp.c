
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct compression_types {int comp_number; scalar_t__ name; } ;


 struct compression_types* comp_types ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (scalar_t__,char const*,size_t) ;

__attribute__((used)) static u_int32_t
stringtocomp(const char *s)
{
 const struct compression_types *ct;
 size_t l = strlen(s);

 for (ct = comp_types; ct->name; ct++)
  if (strncasecmp(ct->name, s, l) == 0)
   break;

 return(ct->comp_number);
}
