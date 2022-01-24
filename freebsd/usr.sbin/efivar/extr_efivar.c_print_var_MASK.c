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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;

/* Variables and functions */
 scalar_t__ Aflag ; 
 int /*<<< orphan*/  Nflag ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ bflag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ dflag ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ fromfile ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ load_opt_flag ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ pflag ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 size_t FUNC13 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ uflag ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC15(efi_guid_t *guid, char *name)
{
	uint32_t att;
	uint8_t *data;
	size_t datalen;
	char *gname = NULL;
	int rv;

	if (guid)
		FUNC11(guid, &gname);
	if (pflag || fromfile) {
		if (fromfile) {
			int fd;

			fd = FUNC10(fromfile, O_RDONLY);
			if (fd < 0)
				FUNC6(1, "open %s", fromfile);
			data = FUNC9(64 * 1024);
			if (data == NULL)
				FUNC6(1, "malloc");
			datalen = FUNC13(fd, data, 64 * 1024);
			if (datalen <= 0)
				FUNC6(1, "read");
			FUNC2(fd);
		} else {
			rv = FUNC4(*guid, name, &data, &datalen, &att);
			if (rv < 0)
				FUNC6(1, "fetching %s-%s", gname, name);
		}


		if (!Nflag)
			FUNC12("%s-%s\n", gname, name);
		if (load_opt_flag)
			FUNC5(data, datalen, Aflag, bflag, uflag);
		else if (Aflag)
			FUNC0(data, datalen);
		else if (uflag)
			FUNC14(data, datalen);
		else if (bflag)
			FUNC1(data, datalen);
		else if (dflag)
			FUNC3(data, datalen);
		else
			FUNC8(data, datalen);
	} else {
		FUNC12("%s-%s", gname, name);
	}
	FUNC7(gname);
	if (!Nflag)
		FUNC12("\n");
}