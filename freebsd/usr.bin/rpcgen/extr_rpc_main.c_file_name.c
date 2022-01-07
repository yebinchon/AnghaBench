
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int access (char*,int ) ;
 char* extendfile (char const*,char const*) ;

__attribute__((used)) static const char *
file_name(const char *file, const char *ext)
{
 char *temp;
 temp = extendfile(file, ext);

 if (access(temp, F_OK) != -1)
  return (temp);
 else
  return (" ");

}
