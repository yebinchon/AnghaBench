
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; } ;
struct aiocb {TYPE_1__ _aiocb_private; } ;


 int suword (int *,long) ;

__attribute__((used)) static int
aiocb_store_error(struct aiocb *ujob, long error)
{

 return (suword(&ujob->_aiocb_private.error, error));
}
