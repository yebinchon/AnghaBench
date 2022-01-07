
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int kbytes (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
sizefile(const char *file)
{
 struct stat sb;

 if (stat(file, &sb) < 0)
  return (-1);
 return (kbytes(sb.st_size));
}
