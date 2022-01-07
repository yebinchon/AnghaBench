
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_devinfo {int dummy; } ;


 int DELAY (int) ;
 int SKBD_CMD_RESET ;

 int SKBD_RSP_RESET ;
 int uart_poll (struct uart_devinfo*) ;
 int uart_putc (struct uart_devinfo*,int ) ;

__attribute__((used)) static int
sunkbd_probe_keyboard(struct uart_devinfo *di)
{
 int c, id, ltries, tries;

 for (tries = 5; tries != 0; tries--) {
  uart_putc(di, SKBD_CMD_RESET);
  for (ltries = 1000; ltries != 0; ltries--) {
   if (uart_poll(di) == SKBD_RSP_RESET)
    break;
   DELAY(1000);
  }
  if (ltries == 0)
   continue;
  id = -1;
  for (ltries = 1000; ltries != 0; ltries--) {
   switch (c = uart_poll(di)) {
   case -1:
    break;
   case 128:
    return (id);
   default:
    id = c;
   }
   DELAY(1000);
  }
 }
 return (-1);
}
