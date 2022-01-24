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
struct hostent {char* h_name; } ;
struct hid_device {int /*<<< orphan*/  bdaddr; scalar_t__ new_device; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int FAILED ; 
 int OK ; 
 struct hostent* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 struct hid_device* FUNC4 (struct hid_device*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC7(bdaddr_t *bdaddr, int argc, char **argv)
{
	struct hid_device	*hd = NULL;
	struct hostent		*he = NULL;
	int			 e = FAILED;

	if (FUNC5() == 0) {
		if (FUNC6() == 0) {
			e = OK;

			for (hd = FUNC4(hd);
			     hd != NULL;
			     hd = FUNC4(hd)) {
				if (hd->new_device)
					continue;

				he = FUNC0((char *) &hd->bdaddr,
						sizeof(hd->bdaddr),
						AF_BLUETOOTH);

				FUNC3(stdout,
"%s %s\n",				FUNC1(&hd->bdaddr, NULL),
					(he != NULL && he->h_name != NULL)?
						he->h_name : "");
			}
		}

		FUNC2();
	}

	return (e);
}