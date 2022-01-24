#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fdescriptor {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  desc; } ;
struct datalink {int state; TYPE_3__* physical; TYPE_2__ chap; TYPE_1__ chat; } ;
struct bundle {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_6__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_NORMAL ; 
#define  DATALINK_AUTH 138 
#define  DATALINK_CBCP 137 
#define  DATALINK_CLOSED 136 
#define  DATALINK_DIAL 135 
#define  DATALINK_HANGUP 134 
#define  DATALINK_LCP 133 
#define  DATALINK_LOGIN 132 
#define  DATALINK_LOGOUT 131 
#define  DATALINK_OPEN 130 
#define  DATALINK_OPENING 129 
#define  DATALINK_READY 128 
 int /*<<< orphan*/  FUNC0 (struct datalink*,int /*<<< orphan*/ ) ; 
 struct datalink* FUNC1 (struct fdescriptor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct bundle*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC4(struct fdescriptor *d, struct bundle *bundle,
               const fd_set *fdset)
{
  struct datalink *dl = FUNC1(d);
  int result = 0;

  switch (dl->state) {
    case DATALINK_CLOSED:
    case DATALINK_OPENING:
      break;

    case DATALINK_HANGUP:
    case DATALINK_DIAL:
    case DATALINK_LOGOUT:
    case DATALINK_LOGIN:
      if ((result = FUNC3(&dl->chat.desc, bundle, fdset)) == -1) {
        FUNC0(dl, CLOSE_NORMAL);
        result = 0;
      }
      break;

    case DATALINK_READY:
    case DATALINK_LCP:
    case DATALINK_AUTH:
    case DATALINK_CBCP:
    case DATALINK_OPEN:
      if (FUNC2(&dl->chap.desc, fdset))
        switch (FUNC3(&dl->chap.desc, bundle, fdset)) {
        case -1:
          FUNC0(dl, CLOSE_NORMAL);
          break;
        case 1:
          result++;
        }
      if (FUNC2(&dl->physical->desc, fdset))
        switch (FUNC3(&dl->physical->desc, bundle, fdset)) {
        case -1:
          FUNC0(dl, CLOSE_NORMAL);
          break;
        case 1:
          result++;
        }
      break;
  }

  return result;
}