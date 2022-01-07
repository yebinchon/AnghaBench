
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int
is_off_name(const char *file)
{
 int len;

 len = strlen(file);

 return (len >= 3 && file[len - 2] == '-' && file[len - 1] == 'o');
}
