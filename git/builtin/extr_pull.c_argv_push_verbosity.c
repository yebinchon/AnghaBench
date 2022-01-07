
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int argv_array_push (struct argv_array*,char*) ;
 int opt_verbosity ;

__attribute__((used)) static void argv_push_verbosity(struct argv_array *arr)
{
 int verbosity;

 for (verbosity = opt_verbosity; verbosity > 0; verbosity--)
  argv_array_push(arr, "-v");

 for (verbosity = opt_verbosity; verbosity < 0; verbosity++)
  argv_array_push(arr, "-q");
}
