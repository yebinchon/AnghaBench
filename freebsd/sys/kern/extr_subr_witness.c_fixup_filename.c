
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *
fixup_filename(const char *file)
{

 if (file == ((void*)0))
  return (((void*)0));
 while (strncmp(file, "../", 3) == 0)
  file += 3;
 return (file);
}
