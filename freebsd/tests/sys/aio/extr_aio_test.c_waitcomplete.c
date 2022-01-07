
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiocb {int dummy; } ;
typedef int ssize_t ;


 int ATF_REQUIRE_EQ (struct aiocb*,struct aiocb*) ;
 int aio_waitcomplete (struct aiocb**,int *) ;

__attribute__((used)) static ssize_t
waitcomplete(struct aiocb *aio)
{
 struct aiocb *aiop;
 ssize_t ret;

 ret = aio_waitcomplete(&aiop, ((void*)0));
 ATF_REQUIRE_EQ(aio, aiop);
 return (ret);
}
