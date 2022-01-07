
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ exitnow ;
 int f_print (int ,char*,char const*) ;
 int fout ;
 scalar_t__ mtflag ;
 scalar_t__ timerflag ;

__attribute__((used)) static void
print_return(const char *space)
{
 if (exitnow)
  f_print(fout, "%sexit(0);\n", space);
 else {
  if (timerflag) {
   if (mtflag)
    f_print(fout, "%spthread_mutex_lock(&_svcstate_lock);\n", space);
    f_print(fout, "%s_rpcsvcstate = _SERVED;\n", space);
   if (mtflag)
    f_print(fout, "%spthread_mutex_unlock(&_svcstate_lock);\n", space);
  }
  f_print(fout, "%sreturn;\n", space);
 }
}
