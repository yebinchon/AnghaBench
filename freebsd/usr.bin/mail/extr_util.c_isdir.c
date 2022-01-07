
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 scalar_t__ stat (char*,struct stat*) ;

int
isdir(char name[])
{
 struct stat sbuf;

 if (stat(name, &sbuf) < 0)
  return (0);
 return (S_ISDIR(sbuf.st_mode));
}
