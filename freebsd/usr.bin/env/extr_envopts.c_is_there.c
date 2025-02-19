
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int) ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 int env_verbosity ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ getuid () ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;

__attribute__((used)) static int
is_there(char *candidate)
{
        struct stat fin;


        if (access(candidate, X_OK) == 0 &&
            stat(candidate, &fin) == 0 &&
            S_ISREG(fin.st_mode) &&
            (getuid() != 0 ||
            (fin.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH)) != 0)) {
                if (env_verbosity > 1)
   fprintf(stderr, "#env   matched:\t'%s'\n", candidate);
                return (1);
        }
        return (0);
}
