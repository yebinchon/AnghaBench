
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;


 int CHELSIO_T4_CLEAR_STATS ;
 int EINVAL ;
 int doit (int ,long*) ;
 char* str_to_number (char const*,long*,int *) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
clearstats(int argc, const char *argv[])
{
 char *p;
 long l;
 uint32_t port;

 if (argc != 1) {
  warnx("incorrect number of arguments.");
  return (EINVAL);
 }

 p = str_to_number(argv[0], &l, ((void*)0));
 if (*p) {
  warnx("invalid port id \"%s\"", argv[0]);
  return (EINVAL);
 }
 port = l;

 return doit(CHELSIO_T4_CLEAR_STATS, &port);
}
