
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* KDB_WHY_UNSET ;
 int breakpoint () ;
 scalar_t__ kdb_active ;
 int * kdb_dbbe ;
 char const* kdb_why ;
 int printf (char*,char const*) ;

void
kdb_enter(const char *why, const char *msg)
{

 if (kdb_dbbe != ((void*)0) && kdb_active == 0) {
  if (msg != ((void*)0))
   printf("KDB: enter: %s\n", msg);
  kdb_why = why;
  breakpoint();
  kdb_why = KDB_WHY_UNSET;
 }
}
