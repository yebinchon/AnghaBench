
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int fchmod (int,int) ;
 int * fdopen (int,char*) ;
 int mkstemp (char*) ;

__attribute__((used)) static FILE *
mktempmode(char *tmp, int mode)
{
 int fd = mkstemp(tmp);
 if (fd < 0) return (((void*)0));
 fchmod(fd, mode & (S_IRWXU|S_IRWXG|S_IRWXO));
 return (fdopen(fd, "wb"));
}
