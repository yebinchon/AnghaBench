
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sigusr1_caught ;

__attribute__((used)) static void
sig_handler(int signum)
{
    sigusr1_caught = 1;
}
