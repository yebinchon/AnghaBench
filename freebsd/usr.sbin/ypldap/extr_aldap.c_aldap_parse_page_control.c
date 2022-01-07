
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ber_element {TYPE_1__* be_next; struct ber_element* be_sub; } ;
struct ber {int fd; int * br_wbuf; } ;
struct aldap_page_control {char* size; int cookie_len; int * cookie; } ;
struct TYPE_2__ {int be_len; } ;


 int ber_free (struct ber*) ;
 int ber_free_elements (struct ber_element*) ;
 struct ber_element* ber_read_elements (struct ber*,int *) ;
 int ber_scanf_elements (struct ber_element*,char*,char**,char**) ;
 int ber_set_readbuf (struct ber*,char*,int) ;
 int free (struct aldap_page_control*) ;
 void* malloc (int) ;
 int memcpy (int *,char*,int) ;

struct aldap_page_control *
aldap_parse_page_control(struct ber_element *control, size_t len)
{
 char *oid, *s;
 char *encoded;
 struct ber b;
 struct ber_element *elm;
 struct aldap_page_control *page;

 b.br_wbuf = ((void*)0);
 b.fd = -1;
 ber_scanf_elements(control, "ss", &oid, &encoded);
 ber_set_readbuf(&b, encoded, control->be_next->be_len);
 elm = ber_read_elements(&b, ((void*)0));

 if ((page = malloc(sizeof(struct aldap_page_control))) == ((void*)0)) {
  if (elm != ((void*)0))
   ber_free_elements(elm);
  ber_free(&b);
  return ((void*)0);
 }

 ber_scanf_elements(elm->be_sub, "is", &page->size, &s);
 page->cookie_len = elm->be_sub->be_next->be_len;

 if ((page->cookie = malloc(page->cookie_len)) == ((void*)0)) {
  if (elm != ((void*)0))
   ber_free_elements(elm);
  ber_free(&b);
  free(page);
  return ((void*)0);
 }
 memcpy(page->cookie, s, page->cookie_len);

 ber_free_elements(elm);
 ber_free(&b);
 return page;
}
