
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physical {int fd; TYPE_1__* dl; } ;
typedef int ssize_t ;
struct TYPE_2__ {int state; } ;




 int NG_HOOKSIZ ;
 int NgRecvData (int ,void*,size_t,char*) ;
 int ng_MessageIn (struct physical*,void*,size_t) ;

__attribute__((used)) static ssize_t
ng_Read(struct physical *p, void *v, size_t n)
{
  char hook[NG_HOOKSIZ];

  switch (p->dl->state) {
    case 129:
    case 128:
      return ng_MessageIn(p, v, n);
  }

  return NgRecvData(p->fd, v, n, hook);
}
