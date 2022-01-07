
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mem_range {int (* handler ) (void*,int,int ,int ,int,int *,int ,int ) ;int arg2; int arg1; } ;


 int MEM_F_WRITE ;
 int stub1 (void*,int,int ,int ,int,int *,int ,int ) ;

__attribute__((used)) static int
mem_write(void *ctx, int vcpu, uint64_t gpa, uint64_t wval, int size, void *arg)
{
 int error;
 struct mem_range *mr = arg;

 error = (*mr->handler)(ctx, vcpu, MEM_F_WRITE, gpa, size,
          &wval, mr->arg1, mr->arg2);
 return (error);
}
