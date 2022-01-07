
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kernelinfo; } ;
struct aiocb {TYPE_1__ _aiocb_private; } ;


 int suword (int *,long) ;

__attribute__((used)) static int
aiocb_store_kernelinfo(struct aiocb *ujob, long jobref)
{

 return (suword(&ujob->_aiocb_private.kernelinfo, jobref));
}
