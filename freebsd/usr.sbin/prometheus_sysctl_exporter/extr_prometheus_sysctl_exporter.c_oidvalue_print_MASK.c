#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double s; double u; double f; } ;
struct oidvalue {int type; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  FLOAT 132 
#define  FP_INFINITE 131 
#define  FP_NAN 130 
#define  SIGNED 129 
#define  UNSIGNED 128 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 

__attribute__((used)) static void
FUNC3(const struct oidvalue *ov, FILE *fp)
{

	switch (ov->type) {
	case SIGNED:
		FUNC1(fp, "%jd", ov->value.s);
		break;
	case UNSIGNED:
		FUNC1(fp, "%ju", ov->value.u);
		break;
	case FLOAT:
		switch (FUNC0(ov->value.f)) {
		case FP_INFINITE:
			if (FUNC2(ov->value.f))
				FUNC1(fp, "-Inf");
			else
				FUNC1(fp, "+Inf");
			break;
		case FP_NAN:
			FUNC1(fp, "Nan");
			break;
		default:
			FUNC1(fp, "%.6f", ov->value.f);
			break;
		}
		break;
	}
}