
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_op_args {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
__umtx_op_unimpl(struct thread *td, struct _umtx_op_args *uap)
{

 return (EOPNOTSUPP);
}
