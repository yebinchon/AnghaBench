
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;
typedef scalar_t__ ssize_t ;


 int teken_funcs_respond (int const*,char*,scalar_t__) ;
 scalar_t__ teken_subr_do_cpr (int const*,unsigned int,char*) ;

__attribute__((used)) static void
teken_subr_device_status_report(const teken_t *t, unsigned int cmd)
{
 char response[19] = "\x1B[?";
 ssize_t len;

 len = teken_subr_do_cpr(t, cmd, response + 3);
 if (len < 0)
  return;

 teken_funcs_respond(t, response, len + 3);
}
