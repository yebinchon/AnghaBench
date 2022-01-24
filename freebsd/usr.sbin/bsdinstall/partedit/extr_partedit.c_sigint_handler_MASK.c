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
struct gmesh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gmesh*) ; 
 int /*<<< orphan*/  FUNC3 (struct gmesh*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmesh*) ; 

__attribute__((used)) static void
FUNC5(int sig)
{
	struct gmesh mesh;

	/* Revert all changes and exit dialog-mode cleanly on SIGINT */
	FUNC3(&mesh);
	FUNC4(&mesh);
	FUNC2(&mesh);

	FUNC0();

	FUNC1(1);
}