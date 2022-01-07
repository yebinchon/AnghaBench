
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_internet_password () ;
 int delete_internet_password () ;
 int die (char const*) ;
 int find_internet_password () ;
 int read_credential () ;
 int strcmp (char const*,char*) ;

int main(int argc, const char **argv)
{
 const char *usage =
  "usage: git credential-osxkeychain <get|store|erase>";

 if (!argv[1])
  die(usage);

 read_credential();

 if (!strcmp(argv[1], "get"))
  find_internet_password();
 else if (!strcmp(argv[1], "store"))
  add_internet_password();
 else if (!strcmp(argv[1], "erase"))
  delete_internet_password();


 return 0;
}
