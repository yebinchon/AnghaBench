
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P_OSREL_MAJOR (int ) ;
 int __FreeBSD_version ;
 int gone_panic (int,int,char const*) ;
 int printf (char*,...) ;

void
_gone_in(int major, const char *msg)
{

 gone_panic(major, P_OSREL_MAJOR(__FreeBSD_version), msg);
 if (P_OSREL_MAJOR(__FreeBSD_version) >= major)
  printf("Obsolete code will removed soon: %s\n", msg);
 else
  printf("Deprecated code (to be removed in FreeBSD %d): %s\n",
      major, msg);
}
