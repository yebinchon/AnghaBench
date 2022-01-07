
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {int bd_bufspace; } ;


 int atomic_subtract_long (int *,int) ;

__attribute__((used)) static void
bufspace_release(struct bufdomain *bd, int size)
{

 atomic_subtract_long(&bd->bd_bufspace, size);
}
