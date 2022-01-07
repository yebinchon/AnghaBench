
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int teken_funcs_respond (int const*,char const*,int) ;
 int teken_printf (char*) ;

__attribute__((used)) static void
teken_subr_primary_device_attributes(const teken_t *t, unsigned int request)
{

 if (request == 0) {
  const char response[] = "\x1B[?1;2c";

  teken_funcs_respond(t, response, sizeof response - 1);
 } else {
  teken_printf("Unknown DA1\n");
 }
}
