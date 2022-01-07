
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int obsolete_panic ;
 int panic (char*,char const*) ;

__attribute__((used)) static void
gone_panic(int major, int running, const char *msg)
{

 switch (obsolete_panic)
 {
 case 0:
  return;
 case 1:
  if (running < major)
   return;

 default:
  panic("%s", msg);
 }
}
