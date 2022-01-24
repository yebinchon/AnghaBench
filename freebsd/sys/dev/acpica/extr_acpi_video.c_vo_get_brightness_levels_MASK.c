#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_7__ {int Count; } ;
struct TYPE_8__ {TYPE_1__ Package; } ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 char* FUNC3 (scalar_t__) ; 
 int* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,int*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC9(ACPI_HANDLE handle, int **levelp)
{
	ACPI_STATUS status;
	ACPI_BUFFER bcl_buf;
	ACPI_OBJECT *res;
	int num, i, n, *levels;

	bcl_buf.Length = ACPI_ALLOCATE_BUFFER;
	bcl_buf.Pointer = NULL;
	status = FUNC2(handle, "_BCL", NULL, &bcl_buf);
	if (FUNC0(status)) {
		if (status != AE_NOT_FOUND)
			FUNC8("can't evaluate %s._BCL - %s\n",
			       FUNC7(handle), FUNC3(status));
		goto out;
	}
	res = (ACPI_OBJECT *)bcl_buf.Pointer;
	if (!FUNC1(res, 2)) {
		FUNC8("evaluation of %s._BCL makes no sense\n",
		       FUNC7(handle));
		goto out;
	}
	num = res->Package.Count;
	if (num < 2 || levelp == NULL)
		goto out;
	levels = FUNC4(num * sizeof(*levels));
	if (levels == NULL)
		goto out;
	for (i = 0, n = 0; i < num; i++)
		if (FUNC6(res, i, &levels[n]) == 0)
			n++;
	if (n < 2) {
		FUNC5(levels);
		goto out;
	}
	*levelp = levels;
	return (n);

out:
	if (bcl_buf.Pointer != NULL)
		FUNC5(bcl_buf.Pointer);
	return (0);
}