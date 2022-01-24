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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int active; int /*<<< orphan*/  recon; int /*<<< orphan*/  fgi; int /*<<< orphan*/  bgi; int /*<<< orphan*/  cc; } ;
struct mfi_ld_info {TYPE_1__ progress; } ;

/* Variables and functions */
 int EINVAL ; 
 int MFI_LD_PROGRESS_BGI ; 
 int MFI_LD_PROGRESS_CC ; 
 int MFI_LD_PROGRESS_FGI ; 
 int MFI_LD_PROGRESS_RECON ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct mfi_ld_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mfi_unit ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(int ac, char **av)
{
	struct mfi_ld_info info;
	int error, fd;
	uint8_t target_id;

	if (ac != 2) {
		FUNC8("volume progress: %s", ac > 2 ? "extra arguments" :
		    "volume required");
		return (EINVAL);
	}

	fd = FUNC4(mfi_unit, O_RDONLY);
	if (fd < 0) {
		error = errno;
		FUNC7("mfi_open");
		return (error);
	}

	if (FUNC3(fd, av[1], &target_id) < 0) {
		error = errno;
		FUNC7("Invalid volume: %s", av[1]);
		FUNC0(fd);
		return (error);
	}

	/* Get the info for this drive. */
	if (FUNC2(fd, target_id, &info, NULL) < 0) {
		error = errno;
		FUNC7("Failed to fetch info for volume %s",
		    FUNC5(fd, target_id));
		FUNC0(fd);
		return (error);
	}

	/* Display any of the active events. */
	if (info.progress.active & MFI_LD_PROGRESS_CC)
		FUNC1("Consistency Check", &info.progress.cc);
	if (info.progress.active & MFI_LD_PROGRESS_BGI)
		FUNC1("Background Init", &info.progress.bgi);
	if (info.progress.active & MFI_LD_PROGRESS_FGI)
		FUNC1("Foreground Init", &info.progress.fgi);
	if (info.progress.active & MFI_LD_PROGRESS_RECON)
		FUNC1("Reconstruction", &info.progress.recon);
	if ((info.progress.active & (MFI_LD_PROGRESS_CC | MFI_LD_PROGRESS_BGI |
	    MFI_LD_PROGRESS_FGI | MFI_LD_PROGRESS_RECON)) == 0)
		FUNC6("No activity in progress for volume %s.\n",
		    FUNC5(fd, target_id));
	FUNC0(fd);

	return (0);
}