
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int FILE ;


 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;

__attribute__((used)) static int
fsize(FILE *file)
{
 struct stat sb;

 if (fstat(fileno(file), &sb) == 0)
  return sb.st_size;
 else
  return -1;
}
