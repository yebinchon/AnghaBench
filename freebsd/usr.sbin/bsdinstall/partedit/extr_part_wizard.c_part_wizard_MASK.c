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
 char* FUNC0 (struct gmesh*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmesh*) ; 
 int FUNC5 (struct gmesh*) ; 
 int FUNC6 (struct gmesh*,char*,char const*,int) ; 
 char* FUNC7 (struct gmesh*,char*) ; 

int
FUNC8(const char *fsreq)
{
	char *disk, *schemeroot;
	const char *fstype;
	struct gmesh mesh;
	int error;

	if (fsreq != NULL)
		fstype = fsreq;
	else
		fstype = "ufs";

startwizard:
	error = FUNC5(&mesh);

	FUNC2();
	error = FUNC5(&mesh);
	disk = FUNC0(&mesh);
	if (disk == NULL)
		return (1);

	FUNC1();
	FUNC2();
	schemeroot = FUNC7(&mesh, disk);
	FUNC3(disk);
	if (schemeroot == NULL)
		return (1);

	FUNC4(&mesh);
	FUNC1();
	FUNC2();
	error = FUNC5(&mesh);

	error = FUNC6(&mesh, schemeroot, fstype, 1);
	if (error)
		goto startwizard;
	FUNC3(schemeroot);

	FUNC4(&mesh);

	return (0);
}