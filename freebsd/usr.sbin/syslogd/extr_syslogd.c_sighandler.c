
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signo ;


 int * sigpipe ;
 int write (int ,int*,int) ;

__attribute__((used)) static void
sighandler(int signo)
{


 write(sigpipe[1], &signo, sizeof(signo));
}
