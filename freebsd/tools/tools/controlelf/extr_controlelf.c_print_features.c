
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* alias; char* desc; } ;


 TYPE_1__* featurelist ;
 size_t nitems (TYPE_1__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_features(void)
{
 size_t i;

 printf("Known features are:\n");
 for (i = 0; i < nitems(featurelist); ++i)
  printf("%s\t\t %s\n", featurelist[i].alias,
      featurelist[i].desc);
}
