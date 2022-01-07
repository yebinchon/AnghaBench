
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_watch {int dummy; } ;
struct xctrl_shutdown_reason {int (* handler ) () ;int name; } ;


 int M_XENSTORE ;
 int XST_NIL ;
 int free (char*,int ) ;
 int nitems (struct xctrl_shutdown_reason*) ;
 int printf (char*) ;
 int strcmp (char*,int ) ;
 int stub1 () ;
 struct xctrl_shutdown_reason* xctrl_shutdown_reasons ;
 int xs_read (int ,char*,char*,int*,void**) ;
 int xs_write (int ,char*,char*,char*) ;

__attribute__((used)) static void
xctrl_on_watch_event(struct xs_watch *watch, const char **vec, unsigned int len)
{
 const struct xctrl_shutdown_reason *reason;
 const struct xctrl_shutdown_reason *last_reason;
 char *result;
 int error;
 int result_len;

 error = xs_read(XST_NIL, "control", "shutdown",
   &result_len, (void **)&result);
 if (error != 0)
  return;


 error = xs_write(XST_NIL, "control", "shutdown", "");
 if (error != 0)
  printf("unable to ack shutdown request, proceeding anyway\n");

 reason = xctrl_shutdown_reasons;
 last_reason = reason + nitems(xctrl_shutdown_reasons);
 while (reason < last_reason) {

  if (!strcmp(result, reason->name)) {
   reason->handler();
   break;
  }
  reason++;
 }

 free(result, M_XENSTORE);
}
