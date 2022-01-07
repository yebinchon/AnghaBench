
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* isoName; char* name; } ;


 TYPE_1__* allCountries ;
 int nitems (TYPE_1__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
cclist()
{
 int i;

 printf("\nCountry codes:\n");
 for (i = 0; i < nitems(allCountries); i++)
  printf("%2s %-15.15s%s",
   allCountries[i].isoName,
   allCountries[i].name,
   ((i+1)%4) == 0 ? "\n" : " ");
 printf("\n");
}
