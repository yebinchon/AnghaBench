
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {char* alias; char* desc; int value; } ;
typedef int Elf ;


 TYPE_1__* featurelist ;
 int get_file_features (int *,int,int,int*,int *) ;
 unsigned long nitems (TYPE_1__*) ;
 int printf (char*,...) ;

__attribute__((used)) static bool
print_file_features(Elf *elf, int phcount, int fd, char *filename)
{
 u_int32_t features;
 unsigned long i;

 if (!get_file_features(elf, phcount, fd, &features, ((void*)0))) {
  return (0);
 }

 printf("File '%s' features:\n", filename);
 for (i = 0; i < nitems(featurelist); ++i) {
  printf("%s\t\t'%s' is ", featurelist[i].alias,
      featurelist[i].desc);

  if ((featurelist[i].value & features) == 0)
   printf("un");

  printf("set.\n");
 }
 return (1);
}
