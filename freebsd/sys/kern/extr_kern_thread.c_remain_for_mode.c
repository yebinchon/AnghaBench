
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SINGLE_ALLPROC ;

__attribute__((used)) static int
remain_for_mode(int mode)
{

 return (mode == SINGLE_ALLPROC ? 0 : 1);
}
