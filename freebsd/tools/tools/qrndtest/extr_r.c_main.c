
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int (* rndfun_t ) () ;
struct TYPE_2__ {int (* rndfun ) () ;int * name; } ;


 int printf (char*,unsigned int,int,int,int,int) ;
 TYPE_1__* rndfuns ;
 scalar_t__ strcasecmp (int *,char*) ;

int
main(int argc, char *argv[])
{
 uint64_t vals[4] = {};
 uint64_t avg;
 unsigned int i;
 rndfun_t f;

 if (argc == 1)
  f = rndfuns[0].rndfun;
 else {
  for (i = 0; rndfuns[i].name != ((void*)0); i++) {
   if (strcasecmp(rndfuns[i].name, argv[1]) == 0)
    break;
  }
  if (rndfuns[i].name == ((void*)0))
   return 1;
  f = rndfuns[i].rndfun;
 }

 for (;;) {
  vals[f() % 4]++;
  if (((i++) % (4*1024*1024)) == 0) {
   avg = vals[0] + vals[1] + vals[2] + vals[3];
   avg /= 4;
   printf("%d: %ld %ld %ld %ld\n", i, vals[0] - avg, vals[1] - avg, vals[2] - avg, vals[3] - avg);
  }
 }
 return 0;
}
