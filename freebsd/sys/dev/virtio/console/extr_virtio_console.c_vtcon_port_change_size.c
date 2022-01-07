
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct winsize {void* ws_row; void* ws_col; } ;
struct vtcon_port {struct tty* vtcport_tty; } ;
struct tty {int dummy; } ;


 int bzero (struct winsize*,int) ;
 int tty_set_winsize (struct tty*,struct winsize*) ;

__attribute__((used)) static void
vtcon_port_change_size(struct vtcon_port *port, uint16_t cols, uint16_t rows)
{
 struct tty *tp;
 struct winsize sz;

 tp = port->vtcport_tty;

 if (tp == ((void*)0))
  return;

 bzero(&sz, sizeof(struct winsize));
 sz.ws_col = cols;
 sz.ws_row = rows;

 tty_set_winsize(tp, &sz);
}
