
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * caused ;
 int necessary ;

__attribute__((used)) static void
signal_recorder(int sig)
{
  caused[sig - 1]++;
  necessary = 1;
}
