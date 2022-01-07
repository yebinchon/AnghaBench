
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int EXIT_MISC ;
 char* FILENAME ;
 int MAXPATHLEN ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int STDOUT_FILENO ;
 int S_IRUSR ;
 int S_IWUSR ;
 int dup2 (int,int ) ;
 int err (int ,int *) ;
 int errx (int ,char*) ;
 int fprintf (int ,char*,char const*) ;
 char* getenv (char*) ;
 int open (char const*,int,int) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char*) ;
 int stderr ;

__attribute__((used)) static void
dofile(void)
{
 int fd;
 char path[MAXPATHLEN];
 const char *p;
 p = FILENAME;
 fd = open(p, O_RDWR | O_CREAT | O_APPEND, S_IRUSR | S_IWUSR);
 if (fd != -1)
  goto dupit;
 if ((p = getenv("HOME")) != ((void*)0) && *p != '\0' &&
     (size_t)snprintf(path, sizeof(path), "%s/%s", p, FILENAME) <
     sizeof(path)) {
  fd = open(p = path, O_RDWR | O_CREAT | O_APPEND,
      S_IRUSR | S_IWUSR);
  if (fd != -1)
   goto dupit;
 }
 errx(EXIT_MISC, "can't open a nohup.out file");

dupit:
 if (dup2(fd, STDOUT_FILENO) == -1)
  err(EXIT_MISC, ((void*)0));
 (void)fprintf(stderr, "appending output to %s\n", p);
}
