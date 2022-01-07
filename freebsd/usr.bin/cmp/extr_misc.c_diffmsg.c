
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int DIFF_EXIT ;
 int exit (int ) ;
 int printf (char*,char const*,char const*,long long,long long) ;
 int sflag ;

void
diffmsg(const char *file1, const char *file2, off_t byte, off_t line)
{
 if (!sflag)
  (void)printf("%s %s differ: char %lld, line %lld\n",
      file1, file2, (long long)byte, (long long)line);
 exit(DIFF_EXIT);
}
