
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rfd; int wfd; int opened; } ;
struct uart_softc {TYPE_1__ tty; } ;
typedef int cap_rights_t ;
typedef int cap_ioctl_t ;


 int CAP_EVENT ;
 int CAP_IOCTL ;
 int CAP_READ ;
 int CAP_WRITE ;
 int EX_OSERR ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int TIOCGETA ;
 int TIOCGWINSZ ;
 int TIOCSETA ;
 int cap_rights_init (int *,int ,int ,int ,int ) ;
 int caph_ioctls_limit (int,int *,int ) ;
 int caph_rights_limit (int,int *) ;
 int close (int) ;
 int errx (int ,char*) ;
 int isatty (int) ;
 int nitems (int *) ;
 int open (char const*,int) ;

__attribute__((used)) static int
uart_tty_backend(struct uart_softc *sc, const char *opts)
{

 cap_rights_t rights;
 cap_ioctl_t cmds[] = { TIOCGETA, TIOCSETA, TIOCGWINSZ };

 int fd;

 fd = open(opts, O_RDWR | O_NONBLOCK);
 if (fd < 0)
  return (-1);

 if (!isatty(fd)) {
  close(fd);
  return (-1);
 }

 sc->tty.rfd = sc->tty.wfd = fd;
 sc->tty.opened = 1;


 cap_rights_init(&rights, CAP_EVENT, CAP_IOCTL, CAP_READ, CAP_WRITE);
 if (caph_rights_limit(fd, &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");
 if (caph_ioctls_limit(fd, cmds, nitems(cmds)) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");


 return (0);
}
