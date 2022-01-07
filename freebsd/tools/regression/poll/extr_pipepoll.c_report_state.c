
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FT_PIPE ;
 scalar_t__ FT_SOCKETPAIR ;
 scalar_t__ filetype ;
 int printf (char*,char*,char const*) ;

__attribute__((used)) static void
report_state(const char *state)
{

 printf(" %s state %s: ",
     filetype == FT_PIPE ? "Pipe" :
     filetype == FT_SOCKETPAIR ? "Sock" : "FIFO",
     state);
}
