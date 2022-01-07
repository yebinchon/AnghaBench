
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {unsigned long be_encoding; } ;


 int BER_CLASS_UNIVERSAL ;
 int BER_TYPE_DEFAULT ;
 int ber_set_header (struct ber_element*,int ,int ) ;
 struct ber_element* calloc (int,int) ;

struct ber_element *
ber_get_element(unsigned long encoding)
{
 struct ber_element *elm;

 if ((elm = calloc(1, sizeof(*elm))) == ((void*)0))
  return ((void*)0);

 elm->be_encoding = encoding;
 ber_set_header(elm, BER_CLASS_UNIVERSAL, BER_TYPE_DEFAULT);

 return elm;
}
