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
typedef  int /*<<< orphan*/  uint64_t ;
struct mntarg {int dummy; } ;
struct iso_args {int flags; int /*<<< orphan*/  ssector; int /*<<< orphan*/  cs_local; int /*<<< orphan*/  cs_disk; int /*<<< orphan*/  fspec; int /*<<< orphan*/  export; } ;
struct export_args {int dummy; } ;
typedef  int /*<<< orphan*/  exp ;

/* Variables and functions */
 int ISOFSMNT_BROKENJOLIET ; 
 int ISOFSMNT_EXTATT ; 
 int ISOFSMNT_GENS ; 
 int ISOFSMNT_KICONV ; 
 int ISOFSMNT_NOJOLIET ; 
 int ISOFSMNT_NORRIP ; 
 int MAXPATHLEN ; 
 int FUNC0 (void*,struct iso_args*,int) ; 
 int FUNC1 (struct mntarg*,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC2 (struct mntarg*,char*,struct export_args*,int) ; 
 struct mntarg* FUNC3 (struct mntarg*,int,char*) ; 
 struct mntarg* FUNC4 (struct mntarg*,char*,char*,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC5 (struct mntarg*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct export_args*) ; 

__attribute__((used)) static int
FUNC7(struct mntarg *ma, void *data, uint64_t flags)
{
	struct iso_args args;
	struct export_args exp;
	int error;

	error = FUNC0(data, &args, sizeof args);
	if (error)
		return (error);
	FUNC6(&args.export, &exp);

	ma = FUNC5(ma, "from", args.fspec, MAXPATHLEN);
	ma = FUNC2(ma, "export", &exp, sizeof(exp));
	ma = FUNC5(ma, "cs_disk", args.cs_disk, 64);
	ma = FUNC5(ma, "cs_local", args.cs_local, 64);
	ma = FUNC4(ma, "ssector", "%u", args.ssector);
	ma = FUNC3(ma, !(args.flags & ISOFSMNT_NORRIP), "norrip");
	ma = FUNC3(ma, args.flags & ISOFSMNT_GENS, "nogens");
	ma = FUNC3(ma, args.flags & ISOFSMNT_EXTATT, "noextatt");
	ma = FUNC3(ma, !(args.flags & ISOFSMNT_NOJOLIET), "nojoliet");
	ma = FUNC3(ma,
	    args.flags & ISOFSMNT_BROKENJOLIET, "nobrokenjoliet");
	ma = FUNC3(ma, args.flags & ISOFSMNT_KICONV, "nokiconv");

	error = FUNC1(ma, flags);

	return (error);
}