
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buf ;
typedef int __register_t ;


 int boot_parse_cmdline (char*) ;
 int boothowto ;
 int freeenv (char*) ;
 scalar_t__ getenv_uint (char*,int*) ;
 char* kern_getenv (char*) ;
 int kern_setenv (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 char* strsep (char**,char*) ;
 int xlp_hw_thread_mask ;

__attribute__((used)) static void
xlp_bootargs_init(__register_t arg)
{
 char buf[2048];
 char *p, *v, *n;
 uint32_t mask;




 if (arg & 1) {
  xlp_hw_thread_mask = arg;
  return;
 }

 p = (void *)(intptr_t)arg;
 while (*p != '\0') {
  strlcpy(buf, p, sizeof(buf));
  v = buf;
  n = strsep(&v, "=");
  if (v == ((void*)0))
   kern_setenv(n, "1");
  else
   kern_setenv(n, v);
  p += strlen(p) + 1;
 }


 if (getenv_uint("cpumask", &mask) != 0)
  xlp_hw_thread_mask = mask;


 v = kern_getenv("bootargs");
 if (v != ((void*)0)) {
  strlcpy(buf, v, sizeof(buf));
  boothowto |= boot_parse_cmdline(buf);
  freeenv(v);
 }
}
