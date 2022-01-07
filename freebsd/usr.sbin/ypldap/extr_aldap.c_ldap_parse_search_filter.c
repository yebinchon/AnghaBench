
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;


 int EINVAL ;
 int ber_free_elements (struct ber_element*) ;
 int ber_link_elements (struct ber_element*,int *) ;
 int errno ;
 struct ber_element* ldap_do_parse_search_filter (struct ber_element*,char**) ;

__attribute__((used)) static struct ber_element *
ldap_parse_search_filter(struct ber_element *ber, char *filter)
{
 struct ber_element *elm;
 char *cp;

 cp = filter;

 if (cp == ((void*)0) || *cp == '\0') {
  errno = EINVAL;
  return (((void*)0));
 }

 if ((elm = ldap_do_parse_search_filter(ber, &cp)) == ((void*)0))
  return (((void*)0));

 if (*cp != '\0') {
  ber_free_elements(elm);
  ber_link_elements(ber, ((void*)0));
  errno = EINVAL;
  return (((void*)0));
 }

 return (elm);
}
