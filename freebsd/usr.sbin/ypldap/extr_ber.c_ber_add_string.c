
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;


 struct ber_element* ber_add_nstring (struct ber_element*,char const*,int ) ;
 int strlen (char const*) ;

struct ber_element *
ber_add_string(struct ber_element *prev, const char *string)
{
 return ber_add_nstring(prev, string, strlen(string));
}
