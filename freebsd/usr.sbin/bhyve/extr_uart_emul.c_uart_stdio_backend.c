
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opened; int rfd; int wfd; } ;
struct uart_softc {TYPE_1__ tty; } ;
typedef int cap_rights_t ;
typedef int cap_ioctl_t ;


 int CAP_EVENT ;
 int CAP_IOCTL ;
 int CAP_READ ;
 int EX_OSERR ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TIOCGETA ;
 int TIOCGWINSZ ;
 int TIOCSETA ;
 int cap_rights_init (int *,int ,int ,int ) ;
 int caph_ioctls_limit (int ,int *,int ) ;
 int caph_rights_limit (int ,int *) ;
 int errx (int ,char*) ;
 scalar_t__ fcntl (int ,int ,int ) ;
 int nitems (int *) ;
 int uart_stdio ;

__attribute__((used)) static int
uart_stdio_backend(struct uart_softc *sc)
{

 cap_rights_t rights;
 cap_ioctl_t cmds[] = { TIOCGETA, TIOCSETA, TIOCGWINSZ };


 if (uart_stdio)
  return (-1);

 sc->tty.rfd = STDIN_FILENO;
 sc->tty.wfd = STDOUT_FILENO;
 sc->tty.opened = 1;

 if (fcntl(sc->tty.rfd, F_SETFL, O_NONBLOCK) != 0)
  return (-1);
 if (fcntl(sc->tty.wfd, F_SETFL, O_NONBLOCK) != 0)
  return (-1);


 cap_rights_init(&rights, CAP_EVENT, CAP_IOCTL, CAP_READ);
 if (caph_rights_limit(sc->tty.rfd, &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");
 if (caph_ioctls_limit(sc->tty.rfd, cmds, nitems(cmds)) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");


 uart_stdio = 1;

 return (0);
}
