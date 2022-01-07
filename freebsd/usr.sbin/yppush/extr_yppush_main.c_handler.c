
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int yppush_exit (int) ;

__attribute__((used)) static void
handler(int sig)
{
 yppush_exit (1);
 return;
}
