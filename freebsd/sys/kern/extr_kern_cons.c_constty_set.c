
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int KASSERT (int ,char*) ;
 int M_TTYCONS ;
 int M_WAITOK ;
 int callout_init (int *,int ) ;
 int * consbuf ;
 int conscallout ;
 int consmsgbuf ;
 int consmsgbuf_size ;
 struct tty* constty ;
 int constty_timeout (int *) ;
 int * malloc (int,int ,int ) ;
 int msgbuf_init (int *,int *,int) ;

void
constty_set(struct tty *tp)
{
 int size;

 KASSERT(tp != ((void*)0), ("constty_set: NULL tp"));
 if (consbuf == ((void*)0)) {
  size = consmsgbuf_size;
  consbuf = malloc(size, M_TTYCONS, M_WAITOK);
  msgbuf_init(&consmsgbuf, consbuf, size);
  callout_init(&conscallout, 0);
 }
 constty = tp;
 constty_timeout(((void*)0));
}
