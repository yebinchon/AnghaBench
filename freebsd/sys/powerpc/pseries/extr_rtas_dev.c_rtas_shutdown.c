
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cell_t ;


 int RB_HALT ;
 int rtas_call_method (int,int,int,int*,...) ;
 int rtas_token_lookup (char*) ;

__attribute__((used)) static void
rtas_shutdown(void *arg, int howto)
{
 cell_t token, status;

 if (howto & RB_HALT) {
  token = rtas_token_lookup("power-off");
  if (token == -1)
   return;

  rtas_call_method(token, 2, 1, 0, 0, &status);
 } else {
  token = rtas_token_lookup("system-reboot");
  if (token == -1)
   return;

  rtas_call_method(token, 0, 1, &status);
 }
}
