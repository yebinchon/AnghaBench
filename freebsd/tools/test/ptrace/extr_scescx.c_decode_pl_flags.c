
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_lwpinfo {unsigned int pl_flags; } ;
typedef int flags ;
typedef int decode ;
typedef int de ;
typedef int c ;


 int NBBY ;
 int snprintf (char*,int,char*,unsigned int) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static const char *
decode_pl_flags(struct ptrace_lwpinfo *lwpinfo)
{
 static char c[128];
 static struct decode_tag {
  int flag;
  const char *desc;
 } decode[] = {
  { 133, "SA" },
  { 138, "BOUND" },
  { 132, "SCE" },
  { 131, "SCX" },
  { 136, "EXEC" },
  { 130, "SI" },
  { 134, "FORKED" },
  { 137, "CHILD" },
  { 139, "LWPBORN" },
  { 135, "LWPEXITED" },
  { 129, "VFORKED" },
  { 128, "VFORKDONE" },
 };
 char de[32];
 unsigned first, flags, i;

 c[0] = '\0';
 first = 1;
 flags = lwpinfo->pl_flags;
 for (i = 0; i < sizeof(decode) / sizeof(decode[0]); i++) {
  if ((flags & decode[i].flag) != 0) {
   if (first)
    first = 0;
   else
    strlcat(c, ",", sizeof(c));
   strlcat(c, decode[i].desc, sizeof(c));
   flags &= ~decode[i].flag;
  }
 }
 for (i = 0; i < sizeof(flags) * NBBY; i++) {
  if ((flags & (1 << i)) != 0) {
   if (first)
    first = 0;
   else
    strlcat(c, ",", sizeof(c));
   snprintf(de, sizeof(de), "<%d>", i);
   strlcat(c, de, sizeof(c));
  }
 }
 return (c);
}
