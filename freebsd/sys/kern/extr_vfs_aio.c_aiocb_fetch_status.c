
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct aiocb {TYPE_1__ _aiocb_private; } ;


 long fuword (int *) ;

__attribute__((used)) static long
aiocb_fetch_status(struct aiocb *ujob)
{

 return (fuword(&ujob->_aiocb_private.status));
}
