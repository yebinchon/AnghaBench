#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct secasvar {TYPE_4__* sah; int /*<<< orphan*/ * tdb_authalgxform; } ;
struct ah {int dummy; } ;
struct TYPE_5__ {scalar_t__ sa_family; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;
struct TYPE_7__ {TYPE_2__ dst; } ;
struct TYPE_8__ {TYPE_3__ saidx; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int FUNC0 (struct secasvar*) ; 
 int FUNC1 (struct secasvar*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (int,int) ; 

size_t
FUNC4(struct secasvar *sav)
{
	size_t size;

	if (sav != NULL) {
		int authsize, rplen, align;

		FUNC2(sav->tdb_authalgxform != NULL, ("null xform"));
		/*XXX not right for null algorithm--does it matter??*/

		/* RFC4302: use the correct alignment. */
		align = sizeof(uint32_t);
#ifdef INET6
		if (sav->sah->saidx.dst.sa.sa_family == AF_INET6) {
			align = sizeof(uint64_t);
		}
#endif
		rplen = FUNC1(sav);
		authsize = FUNC0(sav);
		size = FUNC3(rplen + authsize, align);
	} else {
		/* default guess */
		size = sizeof (struct ah) + sizeof (u_int32_t) + 16;
	}
	return size;
}