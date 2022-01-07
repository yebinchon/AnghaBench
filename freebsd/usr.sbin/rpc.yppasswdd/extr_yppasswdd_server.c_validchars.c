
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ iscntrl (char) ;
 size_t strlen (char*) ;
 int yp_error (char*) ;

__attribute__((used)) static int
validchars(char *arg)
{
 size_t i;

 for (i = 0; i < strlen(arg); i++) {
  if (iscntrl(arg[i])) {
   yp_error("string contains a control character");
   return(1);
  }
  if (arg[i] == ':') {
   yp_error("string contains a colon");
   return(1);
  }

  if (arg[i] == '\n') {
   arg[i] = '\0';
   return(0);
  }
 }
 return(0);
}
