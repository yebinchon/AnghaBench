
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int devd_pipe ;

__attribute__((used)) static void
devd_close(void)
{

 close(devd_pipe);
 devd_pipe = -1;
}
