
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sjbuf ;
 int longjmp (int ,int) ;

__attribute__((used)) static void
alrm_timeout(int signo)
{
 longjmp(Sjbuf, 1);
}
