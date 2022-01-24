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
struct TYPE_6__ {int /*<<< orphan*/  desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;
struct datalink {int state; TYPE_1__* physical; TYPE_3__ chap; TYPE_2__ chat; } ;
struct bundle {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
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
 struct datalink* FUNC0 (struct fdescriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bundle*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC3(struct fdescriptor *d, struct bundle *bundle, const fd_set *fdset)
{
  struct datalink *dl = FUNC0(d);

  switch (dl->state) {
    case DATALINK_CLOSED:
    case DATALINK_OPENING:
      break;

    case DATALINK_HANGUP:
    case DATALINK_DIAL:
    case DATALINK_LOGOUT:
    case DATALINK_LOGIN:
      FUNC2(&dl->chat.desc, bundle, fdset);
      break;

    case DATALINK_READY:
    case DATALINK_LCP:
    case DATALINK_AUTH:
    case DATALINK_CBCP:
    case DATALINK_OPEN:
      if (FUNC1(&dl->chap.desc, fdset))
        FUNC2(&dl->chap.desc, bundle, fdset);
      if (FUNC1(&dl->physical->desc, fdset))
        FUNC2(&dl->physical->desc, bundle, fdset);
      break;
  }
}