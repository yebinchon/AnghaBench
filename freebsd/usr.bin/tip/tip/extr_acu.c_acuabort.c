
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_IGN ;
 int jmpbuf ;
 int longjmp (int ,int) ;
 int signal (int,int ) ;

__attribute__((used)) static void
acuabort(int s)
{
 signal(s, SIG_IGN);
 longjmp(jmpbuf, 1);
}
