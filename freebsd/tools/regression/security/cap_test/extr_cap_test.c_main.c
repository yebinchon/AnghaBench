
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_name; } ;


 TYPE_1__* all_tests ;
 int errx (int,char*,char*) ;
 int execute (int,TYPE_1__*) ;
 int printf (char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int test_count ;

int
main(int argc, char *argv[])
{




 if (argc == 1) {
  printf("1..%d\n", test_count);

  for (int i = 0; i < test_count; i++)
   execute(i + 1, all_tests + i);
  return (0);
 }




 printf("1..%d\n", argc - 1);
 for (int i = 1; i < argc; i++)
 {
  int found = 0;
  for (int j = 0; j < test_count; j++) {
   if (strncmp(argv[i], all_tests[j].t_name,
       strlen(argv[i])) == 0) {
    found = 1;
    execute(i, all_tests + j);
    break;
   }
  }

  if (found == 0)
   errx(-1, "No such test '%s'", argv[i]);
 }

 return (0);
}
