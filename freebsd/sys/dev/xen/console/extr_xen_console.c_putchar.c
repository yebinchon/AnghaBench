
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct putchar_arg {int* buf; int n_next; int size; } ;


 int HYPERVISOR_console_write (char*,int) ;

__attribute__((used)) static void
putchar(int c, void *arg)
{
 struct putchar_arg *pca;

 pca = (struct putchar_arg *)arg;

 if (pca->buf == ((void*)0)) {




  HYPERVISOR_console_write((char *)&c, 1);
 } else {
  pca->buf[pca->n_next++] = c;
  if ((pca->size == pca->n_next) || (c = '\0')) {

   HYPERVISOR_console_write(pca->buf, pca->n_next);
   pca->n_next = 0;
  }
 }
}
