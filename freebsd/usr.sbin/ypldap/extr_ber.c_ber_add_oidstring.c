
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_oid {int dummy; } ;
struct ber_element {int dummy; } ;


 struct ber_element* ber_add_oid (struct ber_element*,struct ber_oid*) ;
 int ber_string2oid (char const*,struct ber_oid*) ;

struct ber_element *
ber_add_oidstring(struct ber_element *prev, const char *oidstr)
{
 struct ber_oid o;

 if (ber_string2oid(oidstr, &o) == -1)
  return (((void*)0));

 return (ber_add_oid(prev, &o));
}
