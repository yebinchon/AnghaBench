
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int dbprog_discid () ;
 int printf (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
cdid(void)
{
 u_int id;

 id = dbprog_discid();
 if (id)
 {
  if (verbose)
   printf ("CDID=");
  printf ("%08x\n",id);
 }
 return id ? 0 : 1;
}
