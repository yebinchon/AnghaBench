
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ curprocs ;
 scalar_t__ maxprocs ;

__attribute__((used)) static int
pids_full(void)
{

 return (curprocs >= maxprocs);
}
