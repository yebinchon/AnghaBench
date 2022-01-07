
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static void
usage(const char *exec)
{

 printf("usage %s [-b] [-n] [-a apn] [-c cid] [-p pin] [-u username] "
     "[-k password] [-r resolvpath] [-f tty] interface\n", exec);
 printf("usage %s -d interface\n", exec);
}
