
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int dummy; } ;


 int msgbuf_addchar (struct msgbuf*,int) ;
 int msgbuf_getchar (struct msgbuf*) ;

void
msgbuf_copy(struct msgbuf *src, struct msgbuf *dst)
{
 int c;

 while ((c = msgbuf_getchar(src)) >= 0)
  msgbuf_addchar(dst, c);
}
