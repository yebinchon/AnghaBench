
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct sc_ttysoftc {int st_index; int * st_stat; } ;


 int Giant ;
 int M_DEVBUF ;
 int M_WAITOK ;
 struct sc_ttysoftc* malloc (int,int ,int ) ;
 int sc_ttydevsw ;
 struct tty* tty_alloc_mutex (int *,struct sc_ttysoftc*,int *) ;
 int tty_makedev (struct tty*,int *,char*,int) ;

__attribute__((used)) static struct tty *
sc_alloc_tty(int index, int devnum)
{
 struct sc_ttysoftc *stc;
 struct tty *tp;


 stc = malloc(sizeof(struct sc_ttysoftc), M_DEVBUF, M_WAITOK);
 stc->st_index = index;
 stc->st_stat = ((void*)0);
 tp = tty_alloc_mutex(&sc_ttydevsw, stc, &Giant);


 tty_makedev(tp, ((void*)0), "v%r", devnum);

 return (tp);
}
