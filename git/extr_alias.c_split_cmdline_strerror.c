
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** split_cmdline_errors ;

const char *split_cmdline_strerror(int split_cmdline_errno)
{
 return split_cmdline_errors[-split_cmdline_errno - 1];
}
