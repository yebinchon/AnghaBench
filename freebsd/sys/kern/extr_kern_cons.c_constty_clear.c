
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_TTYCONS ;
 int callout_stop (int *) ;
 int cnputc (int) ;
 int * consbuf ;
 int conscallout ;
 int consmsgbuf ;
 int * constty ;
 int free (int *,int ) ;
 int msgbuf_getchar (int *) ;

void
constty_clear(void)
{
 int c;

 constty = ((void*)0);
 if (consbuf == ((void*)0))
  return;
 callout_stop(&conscallout);
 while ((c = msgbuf_getchar(&consmsgbuf)) != -1)
  cnputc(c);
 free(consbuf, M_TTYCONS);
 consbuf = ((void*)0);
}
