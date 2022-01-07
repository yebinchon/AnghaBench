
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fdescriptor {int dummy; } ;
struct TYPE_6__ {int desc; } ;
struct TYPE_5__ {int desc; } ;
struct datalink {int state; TYPE_1__* physical; TYPE_3__ chap; TYPE_2__ chat; } ;
struct bundle {int dummy; } ;
typedef int fd_set ;
struct TYPE_4__ {int desc; } ;
 struct datalink* descriptor2datalink (struct fdescriptor*) ;
 int descriptor_IsSet (int *,int const*) ;
 int descriptor_Read (int *,struct bundle*,int const*) ;

__attribute__((used)) static void
datalink_Read(struct fdescriptor *d, struct bundle *bundle, const fd_set *fdset)
{
  struct datalink *dl = descriptor2datalink(d);

  switch (dl->state) {
    case 136:
    case 129:
      break;

    case 134:
    case 135:
    case 131:
    case 132:
      descriptor_Read(&dl->chat.desc, bundle, fdset);
      break;

    case 128:
    case 133:
    case 138:
    case 137:
    case 130:
      if (descriptor_IsSet(&dl->chap.desc, fdset))
        descriptor_Read(&dl->chap.desc, bundle, fdset);
      if (descriptor_IsSet(&dl->physical->desc, fdset))
        descriptor_Read(&dl->physical->desc, bundle, fdset);
      break;
  }
}
