
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_fstypename; } ;


 scalar_t__ fstatfs (int,struct statfs*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
trymmap(int fd)
{
 return (0);
}
