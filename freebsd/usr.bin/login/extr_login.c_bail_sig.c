
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_SLEEP_EXIT ;
 int bail_internal (int ,int ,int) ;

__attribute__((used)) static void
bail_sig(int signo)
{
 bail_internal(NO_SLEEP_EXIT, 0, signo);
}
