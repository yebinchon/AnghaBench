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
struct pci_vendor_info {int id; int /*<<< orphan*/  devs; int /*<<< orphan*/ * desc; } ;
struct pci_device_info {int id; int /*<<< orphan*/  devs; int /*<<< orphan*/ * desc; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pci_vendor_info*,int /*<<< orphan*/ ) ; 
 char* _PATH_LPCIVDB ; 
 char* _PATH_PCIVDB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_vendor_info*) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/  link ; 
 struct pci_vendor_info* FUNC9 (int) ; 
 int /*<<< orphan*/  pci_vendors ; 
 int FUNC10 (char*,char*,int*,char*) ; 
 char* FUNC11 (char*,char) ; 
 void* FUNC12 (char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16(void)
{
	const char *dbf;
	FILE *db;
	struct pci_vendor_info *cv;
	struct pci_device_info *cd;
	char buf[1024], str[1024];
	char *ch;
	int id, error;

	/*
	 * Locate the database and initialise.
	 */
	FUNC0(&pci_vendors);
	if ((dbf = FUNC7("PCICONF_VENDOR_DATABASE")) == NULL)
		dbf = _PATH_LPCIVDB;
	if ((db = FUNC5(dbf, "r")) == NULL) {
		dbf = _PATH_PCIVDB;
		if ((db = FUNC5(dbf, "r")) == NULL)
			return(1);
	}
	cv = NULL;
	cd = NULL;
	error = 0;

	/*
	 * Scan input lines from the database
	 */
	for (;;) {
		if (FUNC4(buf, sizeof(buf), db) == NULL)
			break;

		if ((ch = FUNC11(buf, '#')) != NULL)
			*ch = '\0';
		ch = FUNC11(buf, '\0') - 1;
		while (ch > buf && FUNC8(*ch))
			*ch-- = '\0';
		if (ch <= buf)
			continue;

		/* Can't handle subvendor / subdevice entries yet */
		if (buf[0] == '\t' && buf[1] == '\t')
			continue;

		/* Check for vendor entry */
		if (buf[0] != '\t' && FUNC10(buf, "%04x %[^\n]", &id, str) == 2) {
			if ((id == 0) || (FUNC13(str) < 1))
				continue;
			if ((cv = FUNC9(sizeof(struct pci_vendor_info))) == NULL) {
				FUNC14("allocating vendor entry");
				error = 1;
				break;
			}
			if ((cv->desc = FUNC12(str)) == NULL) {
				FUNC6(cv);
				FUNC14("allocating vendor description");
				error = 1;
				break;
			}
			cv->id = id;
			FUNC0(&cv->devs);
			FUNC1(&pci_vendors, cv, link);
			continue;
		}

		/* Check for device entry */
		if (buf[0] == '\t' && FUNC10(buf + 1, "%04x %[^\n]", &id, str) == 2) {
			if ((id == 0) || (FUNC13(str) < 1))
				continue;
			if (cv == NULL) {
				FUNC15("device entry with no vendor!");
				continue;
			}
			if ((cd = FUNC9(sizeof(struct pci_device_info))) == NULL) {
				FUNC14("allocating device entry");
				error = 1;
				break;
			}
			if ((cd->desc = FUNC12(str)) == NULL) {
				FUNC6(cd);
				FUNC14("allocating device description");
				error = 1;
				break;
			}
			cd->id = id;
			FUNC1(&cv->devs, cd, link);
			continue;
		}

		/* It's a comment or junk, ignore it */
	}
	if (FUNC3(db))
		error = 1;
	FUNC2(db);

	return(error);
}