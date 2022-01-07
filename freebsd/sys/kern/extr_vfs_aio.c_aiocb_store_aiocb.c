
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiocb {int dummy; } ;


 int suword (struct aiocb**,long) ;

__attribute__((used)) static int
aiocb_store_aiocb(struct aiocb **ujobp, struct aiocb *ujob)
{

 return (suword(ujobp, (long)ujob));
}
