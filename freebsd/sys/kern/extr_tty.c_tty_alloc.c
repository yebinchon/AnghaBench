
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttydevsw {int dummy; } ;
struct tty {int dummy; } ;


 struct tty* tty_alloc_mutex (struct ttydevsw*,void*,int *) ;

struct tty *
tty_alloc(struct ttydevsw *tsw, void *sc)
{

 return (tty_alloc_mutex(tsw, sc, ((void*)0)));
}
