
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;
typedef int cap_rights_t ;
typedef int cap_ioctl_t ;


 int BVM_CONS_SIG ;
 int CAP_EVENT ;
 int CAP_IOCTL ;
 int CAP_READ ;
 int CAP_WRITE ;
 int EX_OSERR ;
 int STDIN_FILENO ;
 int TIOCGETA ;
 int TIOCGWINSZ ;
 int TIOCSETA ;
 int cap_rights_init (int *,int ,int ,int ,int ) ;
 int caph_ioctls_limit (int ,int *,int ) ;
 int caph_rights_limit (int ,int *) ;
 int errx (int ,char*) ;
 int nitems (int *) ;
 int ttyopen () ;
 int ttyread () ;
 int ttywrite (int) ;

__attribute__((used)) static int
console_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
  uint32_t *eax, void *arg)
{
 static int opened;

 cap_rights_t rights;
 cap_ioctl_t cmds[] = { TIOCGETA, TIOCSETA, TIOCGWINSZ };


 if (bytes == 2 && in) {
  *eax = BVM_CONS_SIG;
  return (0);
 }





 if (bytes == 1 && in) {
  *eax = 0xff;
  return (0);
 }

 if (bytes != 4)
  return (-1);

 if (!opened) {

  cap_rights_init(&rights, CAP_EVENT, CAP_IOCTL, CAP_READ,
      CAP_WRITE);
  if (caph_rights_limit(STDIN_FILENO, &rights) == -1)
   errx(EX_OSERR, "Unable to apply rights for sandbox");
  if (caph_ioctls_limit(STDIN_FILENO, cmds, nitems(cmds)) == -1)
   errx(EX_OSERR, "Unable to apply rights for sandbox");

  ttyopen();
  opened = 1;
 }

 if (in)
  *eax = ttyread();
 else
  ttywrite(*eax);

 return (0);
}
