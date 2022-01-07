
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wq {int uobject; } ;


 int put_uobj_read (int ) ;

__attribute__((used)) static void put_wq_read(struct ib_wq *wq)
{
 put_uobj_read(wq->uobject);
}
