
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deadfl ;
 int deadline ;
 int longjmp (int ,int) ;

__attribute__((used)) static void
dead(int signo)
{
 deadfl = 1;
 longjmp(deadline, 1);
}
