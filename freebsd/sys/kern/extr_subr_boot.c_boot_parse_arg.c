
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_PROBE ;



 int SETENV (char*,char*) ;
 char* kargs ;
 char* opts ;
 void* strchr (char const*,char) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 char const* sw ;

int
boot_parse_arg(char *v)
{
 char *n;
 int howto;
 howto = 0;
 if (*v == '-') {
  while (*v != '\0') {
   v++;
   switch (*v) {
   case 'a': howto |= 138; break;
   case 'C': howto |= 137; break;
   case 'd': howto |= 134; break;
   case 'D': howto |= 133; break;
   case 'm': howto |= 132; break;
   case 'g': howto |= 135; break;
   case 'h': howto |= 130; break;
   case 'p': howto |= 131; break;
   case 'P': howto |= RB_PROBE; break;
   case 'r': howto |= 136; break;
   case 's': howto |= 129; break;
   case 'S': SETENV("comconsole_speed", v + 1); v += strlen(v); break;
   case 'v': howto |= 128; break;
   }
  }
 } else {
  n = strsep(&v, "=");
  if (v == ((void*)0))
   SETENV(n, "1");
  else
   SETENV(n, v);
 }

 return (howto);
}
