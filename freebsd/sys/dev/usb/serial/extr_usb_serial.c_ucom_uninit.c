
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int dummy; } ;


 int DPRINTF (char*) ;
 int delete_unrhdr (struct unrhdr*) ;
 int mtx_destroy (int *) ;
 int ucom_mtx ;
 struct unrhdr* ucom_unrhdr ;

__attribute__((used)) static void
ucom_uninit(void *arg)
{
 struct unrhdr *hdr;
 hdr = ucom_unrhdr;
 ucom_unrhdr = ((void*)0);

 DPRINTF("\n");

 if (hdr != ((void*)0))
  delete_unrhdr(hdr);

 mtx_destroy(&ucom_mtx);
}
