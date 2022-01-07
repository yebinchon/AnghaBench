
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiocb {int dummy; } ;


 int copyin (struct aiocb*,struct aiocb*,int) ;

__attribute__((used)) static int
aiocb_copyin(struct aiocb *ujob, struct aiocb *kjob)
{

 return (copyin(ujob, kjob, sizeof(struct aiocb)));
}
