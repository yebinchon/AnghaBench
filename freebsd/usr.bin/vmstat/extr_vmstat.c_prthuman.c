
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int fmt ;


 int HN_AUTOSCALE ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 int humanize_number (char*,int,scalar_t__,char*,int ,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int xo_attr (char*,char*,int ) ;
 int xo_emit (char*,int,char*) ;
 int xo_errx (int,char*) ;

__attribute__((used)) static void
prthuman(const char *name, uint64_t val, int size, int flags)
{
 char buf[10];
 char fmt[128];

 snprintf(fmt, sizeof(fmt), "{:%s/%%*s}", name);

 if (size < 5 || size > 9)
  xo_errx(1, "doofus");
 flags |= HN_NOSPACE | HN_DECIMAL;
 humanize_number(buf, size, val, "", HN_AUTOSCALE, flags);
 xo_attr("value", "%ju", (uintmax_t) val);
 xo_emit(fmt, size, buf);
}
