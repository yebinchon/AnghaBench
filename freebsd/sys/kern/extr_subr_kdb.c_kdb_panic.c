
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,char const*) ;
 int printf (char*) ;

void
kdb_panic(const char *msg)
{

 printf("KDB: panic\n");
 panic("%s", msg);
}
