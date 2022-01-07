
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int printf (char*,char*) ;
 char* sbuf_data (struct sbuf*) ;

void
sbuf_putbuf(struct sbuf *sb)
{

 printf("%s", sbuf_data(sb));
}
