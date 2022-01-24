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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct entry {char* name; int /*<<< orphan*/  guid; } ;
typedef  char* efidp ;

/* Variables and functions */
 size_t BAD_LENGTH ; 
 int /*<<< orphan*/  COMMON_ATTRS ; 
 int /*<<< orphan*/  EFI_GLOBAL_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOAD_OPTION_ACTIVE ; 
 int /*<<< orphan*/  LOAD_OPTION_CATEGORY_BOOT ; 
 size_t MAX_DP_LEN ; 
 int MAX_LOADOPT_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,int,int /*<<< orphan*/ ,char*,size_t,char const*,char const*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char**) ; 
 int /*<<< orphan*/  efivars ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 () ; 
 void* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct entry*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (char const*) ; 

__attribute__((used)) static int
FUNC16(const char *label, const char *loader, const char *kernel, const char *env, bool dry_run,
    int bootnum, bool activate)
{
	struct entry *new_ent;
	uint32_t load_attrs = 0;
	uint8_t *load_opt_buf;
	size_t lopt_size, llen, klen;
	efidp dp, loaderdp, kerneldp;
	char *bootvar = NULL;
	int ret;

	FUNC2(label != NULL);

	if (bootnum == -1)
		bootvar = FUNC11();
	else
		bootvar = FUNC10((uint16_t)bootnum);
	if (bootvar == NULL)
		FUNC7(1, "bootvar creation");
	if (loader == NULL)
		FUNC8(1, "Must specify boot loader");
	if (FUNC6(loader, &loaderdp) != 0)
		FUNC7(1, "Cannot translate unix loader path '%s' to UEFI", loader);
	if (kernel != NULL) {
		if (FUNC6(kernel, &kerneldp) != 0)
			FUNC7(1, "Cannot translate unix kernel path '%s' to UEFI", kernel);
	} else {
		kerneldp = NULL;
	}
	llen = FUNC5(loaderdp);
	if (llen > MAX_DP_LEN)
		FUNC8(1, "Loader path too long.");
	klen = FUNC5(kerneldp);
	if (klen > MAX_DP_LEN)
		FUNC8(1, "Kernel path too long.");
	dp = FUNC12(llen + klen);
	if (dp == NULL)
		FUNC8(1, "Can't allocate memory for new device paths");
	FUNC13(dp, loaderdp, llen);
	if (kerneldp != NULL)
		FUNC13((char *)dp + llen, kerneldp, klen);

	/* don't make the new bootvar active by default, use the -a option later */
	load_attrs = LOAD_OPTION_CATEGORY_BOOT;
	if (activate)
		load_attrs |= LOAD_OPTION_ACTIVE;
	load_opt_buf = FUNC12(MAX_LOADOPT_LEN);
	if (load_opt_buf == NULL)
		FUNC7(1, "malloc");

	lopt_size = FUNC3(load_opt_buf, MAX_LOADOPT_LEN, load_attrs,
	    dp, llen + klen, label, env, env ? FUNC15(env) + 1 : 0);
	if (lopt_size == BAD_LENGTH)
		FUNC8(1, "Can't create loadopt");

	ret = 0;
	if (!dry_run) {
		ret = FUNC4(EFI_GLOBAL_GUID, bootvar,
		    (uint8_t*)load_opt_buf, lopt_size, COMMON_ATTRS);
	}

	if (ret)
		FUNC7(1, "efi_set_variable");

	if (!dry_run)
		FUNC1(bootvar); /* first, still not active */
	new_ent = FUNC12(sizeof(struct entry));
	if (new_ent == NULL)
		FUNC7(1, "malloc");
	FUNC14(new_ent, 0, sizeof(struct entry));
	new_ent->name = bootvar;
	new_ent->guid = EFI_GLOBAL_GUID;
	FUNC0(&efivars, new_ent, entries);
	FUNC9(load_opt_buf);
	FUNC9(dp);

	return 0;
}