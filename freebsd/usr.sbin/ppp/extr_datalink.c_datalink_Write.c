
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fdescriptor {int dummy; } ;
struct TYPE_5__ {int desc; } ;
struct TYPE_4__ {int desc; } ;
struct datalink {int state; TYPE_3__* physical; TYPE_2__ chap; TYPE_1__ chat; } ;
struct bundle {int dummy; } ;
typedef int fd_set ;
struct TYPE_6__ {int desc; } ;


 int CLOSE_NORMAL ;
 int datalink_ComeDown (struct datalink*,int ) ;
 struct datalink* descriptor2datalink (struct fdescriptor*) ;
 int descriptor_IsSet (int *,int const*) ;
 int descriptor_Write (int *,struct bundle*,int const*) ;

__attribute__((used)) static int
datalink_Write(struct fdescriptor *d, struct bundle *bundle,
               const fd_set *fdset)
{
  struct datalink *dl = descriptor2datalink(d);
  int result = 0;

  switch (dl->state) {
    case 136:
    case 129:
      break;

    case 134:
    case 135:
    case 131:
    case 132:
      if ((result = descriptor_Write(&dl->chat.desc, bundle, fdset)) == -1) {
        datalink_ComeDown(dl, CLOSE_NORMAL);
        result = 0;
      }
      break;

    case 128:
    case 133:
    case 138:
    case 137:
    case 130:
      if (descriptor_IsSet(&dl->chap.desc, fdset))
        switch (descriptor_Write(&dl->chap.desc, bundle, fdset)) {
        case -1:
          datalink_ComeDown(dl, CLOSE_NORMAL);
          break;
        case 1:
          result++;
        }
      if (descriptor_IsSet(&dl->physical->desc, fdset))
        switch (descriptor_Write(&dl->physical->desc, bundle, fdset)) {
        case -1:
          datalink_ComeDown(dl, CLOSE_NORMAL);
          break;
        case 1:
          result++;
        }
      break;
  }

  return result;
}
