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
struct archiver {int /*<<< orphan*/  flags; int /*<<< orphan*/  data; int /*<<< orphan*/  write_archive; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archiver**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARCHIVER_REMOTE ; 
 int /*<<< orphan*/  ARCHIVER_WANT_COMPRESSION_LEVELS ; 
 int /*<<< orphan*/  alloc_tar_filters ; 
 int FUNC1 (char const*) ; 
 struct archiver* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 scalar_t__ nr_tar_filters ; 
 scalar_t__ FUNC5 (char const*,char*,char const**,int*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 struct archiver** tar_filters ; 
 int /*<<< orphan*/  write_tar_filter_archive ; 
 struct archiver* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(const char *var, const char *value, void *data)
{
	struct archiver *ar;
	const char *name;
	const char *type;
	int namelen;

	if (FUNC5(var, "tar", &name, &namelen, &type) < 0 || !name)
		return 0;

	ar = FUNC2(name, namelen);
	if (!ar) {
		ar = FUNC7(1, sizeof(*ar));
		ar->name = FUNC8(name, namelen);
		ar->write_archive = write_tar_filter_archive;
		ar->flags = ARCHIVER_WANT_COMPRESSION_LEVELS;
		FUNC0(tar_filters, nr_tar_filters + 1, alloc_tar_filters);
		tar_filters[nr_tar_filters++] = ar;
	}

	if (!FUNC6(type, "command")) {
		if (!value)
			return FUNC1(var);
		FUNC3(ar->data);
		ar->data = FUNC9(value);
		return 0;
	}
	if (!FUNC6(type, "remote")) {
		if (FUNC4(var, value))
			ar->flags |= ARCHIVER_REMOTE;
		else
			ar->flags &= ~ARCHIVER_REMOTE;
		return 0;
	}

	return 0;
}