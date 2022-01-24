#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_short ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ NBTNsResource ;
typedef  int /*<<< orphan*/  NBTArguments ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
#define  RR_TYPE_A 132 
#define  RR_TYPE_NB 131 
#define  RR_TYPE_NBSTAT 130 
#define  RR_TYPE_NS 129 
#define  RR_TYPE_NULL 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static u_char  *
FUNC9(
    u_short count,
    NBTNsResource * q,
    char *pmax,
    NBTArguments
    * nbtarg)
{
	while (count != 0) {
		/* Resource Record Name Filed */
		q = (NBTNsResource *) FUNC0((u_char *) q, pmax);

		if (q == NULL || (char *)(q + 1) > pmax)
			break;
#ifdef LIBALIAS_DEBUG
		printf("type=%02x, count=%d\n", ntohs(q->type), count);
#endif

		/* Type and Class filed */
		switch (FUNC7(q->type)) {
		case RR_TYPE_NB:
			q = (NBTNsResource *) FUNC2(
			    q,
			    pmax,
			    nbtarg
			    );
			break;
		case RR_TYPE_A:
			q = (NBTNsResource *) FUNC1(
			    q,
			    pmax,
			    nbtarg
			    );
			break;
		case RR_TYPE_NS:
			q = (NBTNsResource *) FUNC4(
			    q,
			    pmax,
			    nbtarg
			    );
			break;
		case RR_TYPE_NULL:
			q = (NBTNsResource *) FUNC5(
			    q,
			    pmax,
			    nbtarg
			    );
			break;
		case RR_TYPE_NBSTAT:
			q = (NBTNsResource *) FUNC3(
			    q,
			    pmax,
			    nbtarg
			    );
			break;
		default:
#ifdef LIBALIAS_DEBUG
			printf(
			    "\nUnknown Type of Resource %0x\n",
			    ntohs(q->type)
			    );
			fflush(stdout);
#endif
			break;
		}
		count--;
	}
	return ((u_char *) q);
}