
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wait (int*) ;

__attribute__((used)) static int
script_wait(int *statusp)
{
 int error;

 error = wait(statusp);
 return (error >= 0 ? 0 : -1);
}
