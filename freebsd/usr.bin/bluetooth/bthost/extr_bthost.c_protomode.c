
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {char* p_name; int p_proto; } ;


 int atoi (char const*) ;
 struct protoent* bt_getprotobyname (char const*) ;
 struct protoent* bt_getprotobynumber (int) ;
 int fprintf (int ,char*,char const*) ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static int
protomode(char const *arg, int brief)
{
 struct protoent *pe = ((void*)0);
 int proto;

 if ((proto = atoi(arg)) != 0)
  pe = bt_getprotobynumber(proto);
 else
  pe = bt_getprotobyname(arg);

 if (pe == ((void*)0)) {
  fprintf(stderr, "%s: Unknown Protocol/Service Multiplexor\n", arg);
  return (1);
 }

 if (brief) {
  if (proto)
   printf("%s", pe->p_name);
  else
   printf("%d", pe->p_proto);
 } else {
  printf("Protocol/Service Multiplexor %s has number %d\n",
   pe->p_name, pe->p_proto);
 }

 return (0);
}
