
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* copy (char const*,unsigned int) ;
 char* strcat (char*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
off_name(const char *file)
{
 char *new;

 new = copy(file, (unsigned int) (strlen(file) + 2));

 return (strcat(new, "-o"));
}
