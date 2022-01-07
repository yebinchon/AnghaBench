
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctlstat_usage ;
 int fputs (int ,int ) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
usage(int error)
{
 fputs(ctlstat_usage, error ? stderr : stdout);
}
