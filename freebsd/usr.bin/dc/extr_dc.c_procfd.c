
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 int EISDIR ;
 scalar_t__ S_ISDIR (int ) ;
 int err (int,char*,char*) ;
 int errno ;
 int eval () ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fileno (int *) ;
 int fstat (int ,struct stat*) ;
 int reset_bmachine (int *) ;
 int src ;
 int src_setstream (int *,int *) ;

__attribute__((used)) static void
procfd(int fd, char *fname) {
 struct stat st;
 FILE *file;

 file = fdopen(fd, "r");
 if (file == ((void*)0))
  err(1, "cannot open file %s", fname);
 if (fstat(fileno(file), &st) == -1)
  err(1, "%s", fname);
 if (S_ISDIR(st.st_mode)) {
  errno = EISDIR;
  err(1, "%s", fname);
 }
 src_setstream(&src, file);
 reset_bmachine(&src);
 eval();
 fclose(file);
}
