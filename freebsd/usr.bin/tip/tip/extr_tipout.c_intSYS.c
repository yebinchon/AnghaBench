
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEAUTIFY ;
 int boolean (int ) ;
 int longjmp (int ,int) ;
 int setboolean (int ,int) ;
 int sigbuf ;
 int value (int ) ;

__attribute__((used)) static void
intSYS(int signo)
{
 setboolean(value(BEAUTIFY), !boolean(value(BEAUTIFY)));
 longjmp(sigbuf, 1);
}
