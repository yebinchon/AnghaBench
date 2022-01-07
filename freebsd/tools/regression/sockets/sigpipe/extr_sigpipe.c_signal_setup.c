
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPIPE ;
 scalar_t__ SIG_ERR ;
 int err (int,char*,char const*) ;
 scalar_t__ signal (int ,int ) ;
 int signal_handler ;
 scalar_t__ signaled ;

__attribute__((used)) static void
signal_setup(const char *testname)
{

 signaled = 0;
 if (signal(SIGPIPE, signal_handler) == SIG_ERR)
  err(-1, "%s: signal(SIGPIPE)", testname);
}
