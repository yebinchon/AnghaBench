
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int FILE ;


 int LOG_ERR ;
 int assert (int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int) ;
 int getpid () ;
 int strerror (int ) ;
 int syslog (int ,char*,char const*,int ,int ) ;

__attribute__((used)) static int32_t
write_pid_file(char const *file)
{
 FILE *pid;

 assert(file != ((void*)0));

 if ((pid = fopen(file, "w")) == ((void*)0)) {
  syslog(LOG_ERR, "Could not open file %s. %s (%d)",
   file, strerror(errno), errno);
  return (-1);
 }

 fprintf(pid, "%d", getpid());
 fclose(pid);

 return (0);
}
