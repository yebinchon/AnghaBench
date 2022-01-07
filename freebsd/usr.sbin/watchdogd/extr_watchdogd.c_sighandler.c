
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIGTERM ;
 int end_program ;

__attribute__((used)) static void
sighandler(int signum)
{

 if (signum == SIGINT || signum == SIGTERM)
  end_program = 1;
}
