
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct stat {int st_flags; } ;


 int err (int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static u_long
getflags(char *fpathp)
{
 struct stat sb;

 if (stat(fpathp, &sb) < 0)
  err(-1, "stat(%s)", fpathp);

 return (sb.st_flags);
}
