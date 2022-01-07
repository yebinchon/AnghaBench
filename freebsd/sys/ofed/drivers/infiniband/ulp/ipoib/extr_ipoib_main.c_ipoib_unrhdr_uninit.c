
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int dummy; } ;


 int delete_unrhdr (struct unrhdr*) ;
 struct unrhdr* ipoib_unrhdr ;

__attribute__((used)) static void
ipoib_unrhdr_uninit(void *arg)
{

 if (ipoib_unrhdr != ((void*)0)) {
  struct unrhdr *hdr;

  hdr = ipoib_unrhdr;
  ipoib_unrhdr = ((void*)0);

  delete_unrhdr(hdr);
 }
}
