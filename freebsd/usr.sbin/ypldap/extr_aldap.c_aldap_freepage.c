
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aldap_page_control {struct aldap_page_control* cookie; } ;


 int free (struct aldap_page_control*) ;

void
aldap_freepage(struct aldap_page_control *page)
{
 free(page->cookie);
 free(page);
}
