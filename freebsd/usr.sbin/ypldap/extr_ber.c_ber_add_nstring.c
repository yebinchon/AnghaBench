
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {char* be_val; size_t be_len; int be_free; } ;


 int BER_TYPE_OCTETSTRING ;
 int bcopy (char const*,char*,size_t) ;
 struct ber_element* ber_get_element (int ) ;
 int ber_link_elements (struct ber_element*,struct ber_element*) ;
 char* calloc (int,size_t) ;
 int free (char*) ;

struct ber_element *
ber_add_nstring(struct ber_element *prev, const char *string0, size_t len)
{
 struct ber_element *elm;
 char *string;

 if ((string = calloc(1, len)) == ((void*)0))
  return ((void*)0);
 if ((elm = ber_get_element(BER_TYPE_OCTETSTRING)) == ((void*)0)) {
  free(string);
  return ((void*)0);
 }

 bcopy(string0, string, len);
 elm->be_val = string;
 elm->be_len = len;
 elm->be_free = 1;

 ber_link_elements(prev, elm);

 return elm;
}
