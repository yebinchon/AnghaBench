
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TimedOut ;

__attribute__((used)) static void
Timeout(int Sig)
{
    TimedOut = 1;
}
