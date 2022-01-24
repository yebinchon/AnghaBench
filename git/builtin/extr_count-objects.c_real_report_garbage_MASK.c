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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  garbage ; 
 int /*<<< orphan*/  size_garbage ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC3(unsigned seen_bits, const char *path)
{
	struct stat st;
	const char *desc = FUNC0(seen_bits);

	if (!desc)
		return;

	if (!FUNC1(path, &st))
		size_garbage += st.st_size;
	FUNC2("%s: %s", desc, path);
	garbage++;
}