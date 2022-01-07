
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_show_early ;
 int show_early_output ;

__attribute__((used)) static void early_output(int signal)
{
 show_early_output = log_show_early;
}
