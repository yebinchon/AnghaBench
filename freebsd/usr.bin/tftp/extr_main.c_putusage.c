
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void
putusage(char *s)
{

 printf("usage: %s file [remotename]\n", s);
 printf("       %s file host:remotename\n", s);
 printf("       %s file1 file2 ... fileN [[host:]remote-directory]\n", s);
}
