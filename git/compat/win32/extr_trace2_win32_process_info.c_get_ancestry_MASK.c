#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct json_writer {int dummy; } ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 struct json_writer JSON_WRITER_INIT ; 
 int /*<<< orphan*/  TH32CS_SNAPPROCESS ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC5 (struct json_writer*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,struct json_writer*) ; 

__attribute__((used)) static void FUNC7(void)
{
	HANDLE hSnapshot = FUNC1(TH32CS_SNAPPROCESS, 0);

	if (hSnapshot != INVALID_HANDLE_VALUE) {
		struct json_writer jw = JSON_WRITER_INIT;

		FUNC3(&jw, 0);
		FUNC2(&jw, hSnapshot);
		FUNC4(&jw);

		FUNC6("process", the_repository, "windows/ancestry",
				 &jw);

		FUNC5(&jw);
		FUNC0(hSnapshot);
	}
}