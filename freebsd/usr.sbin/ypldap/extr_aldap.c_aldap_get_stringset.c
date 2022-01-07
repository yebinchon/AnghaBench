
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_type; struct ber_element* be_next; } ;


 scalar_t__ BER_TYPE_OCTETSTRING ;
 int ber_get_string (struct ber_element*,char**) ;
 char** calloc (int,int) ;
 int free (char**) ;
 char* utoa (char*) ;

char **
aldap_get_stringset(struct ber_element *elm)
{
 struct ber_element *a;
 int i;
 char **ret;
 char *s;

 if (elm->be_type != BER_TYPE_OCTETSTRING)
  return ((void*)0);

 for (a = elm, i = 1; i > 0 && a != ((void*)0) && a->be_type ==
     BER_TYPE_OCTETSTRING; a = a->be_next, i++)
  ;
 if (i == 1)
  return ((void*)0);

 if ((ret = calloc(i + 1, sizeof(char *))) == ((void*)0))
  return ((void*)0);

 for (a = elm, i = 0; a != ((void*)0) && a->be_type == BER_TYPE_OCTETSTRING;
     a = a->be_next) {

  ber_get_string(a, &s);
  ret[i] = utoa(s);
  if (ret[i] != ((void*)0))
   i++;

 }
 if (i == 0) {
  free(ret);
  return ((void*)0);
 }
 ret[i] = ((void*)0);

 return ret;
}
