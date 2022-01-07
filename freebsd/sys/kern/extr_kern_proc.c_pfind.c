
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int pid_t ;


 struct proc* _pfind (int ,int) ;

struct proc *
pfind(pid_t pid)
{

 return (_pfind(pid, 0));
}
