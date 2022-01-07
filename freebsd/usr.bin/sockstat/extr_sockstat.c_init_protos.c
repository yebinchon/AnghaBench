
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endprotoent () ;
 int err (int,char*) ;
 int * getprotoent () ;
 int * malloc (int) ;
 int numprotos ;
 int * protos ;

__attribute__((used)) static void
init_protos(int num)
{
 int proto_count = 0;

 if (num > 0) {
  proto_count = num;
 } else {

  while (getprotoent() != ((void*)0))
   proto_count++;
  endprotoent();
 }

 if ((protos = malloc(sizeof(int) * proto_count)) == ((void*)0))
  err(1, "malloc");
 numprotos = proto_count;
}
