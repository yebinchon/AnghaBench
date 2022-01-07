
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int LOG_ERR ;
 int assert (int ) ;
 int errno ;
 int strerror (int ) ;
 int syslog (int ,char*,char const*,int ,int ) ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static int32_t
remove_pid_file(char const *file)
{
 assert(file != ((void*)0));

 if (unlink(file) < 0) {
  syslog(LOG_ERR, "Could not unlink file %s. %s (%d)",
   file, strerror(errno), errno);
  return (-1);
 }

 return (0);
}
