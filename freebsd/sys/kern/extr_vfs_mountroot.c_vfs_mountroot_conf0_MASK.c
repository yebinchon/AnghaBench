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
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int RB_ASKNAME ; 
 int RB_CDROM ; 
 int RB_DFLTROOT ; 
 int /*<<< orphan*/  ROOTDEVNAME ; 
 int boothowto ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char**,char**) ; 
 int /*<<< orphan*/  root_mount_timeout ; 
 int /*<<< orphan*/ ** rootdevnames ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,...) ; 

__attribute__((used)) static void
FUNC5(struct sbuf *sb)
{
	char *s, *tok, *mnt, *opt;
	int error;

	FUNC4(sb, ".onfail panic\n");
	FUNC4(sb, ".timeout %d\n", root_mount_timeout);
	if (boothowto & RB_ASKNAME)
		FUNC4(sb, ".ask\n");
#ifdef ROOTDEVNAME
	if (boothowto & RB_DFLTROOT)
		sbuf_printf(sb, "%s\n", ROOTDEVNAME);
#endif
	if (boothowto & RB_CDROM) {
		FUNC4(sb, "cd9660:/dev/cd0 ro\n");
		FUNC4(sb, ".timeout 0\n");
		FUNC4(sb, "cd9660:/dev/cd1 ro\n");
		FUNC4(sb, ".timeout %d\n", root_mount_timeout);
	}
	s = FUNC2("vfs.root.mountfrom");
	if (s != NULL) {
		opt = FUNC2("vfs.root.mountfrom.options");
		tok = s;
		error = FUNC3(&tok, &mnt);
		while (!error) {
			FUNC4(sb, "%s %s\n", mnt,
			    (opt != NULL) ? opt : "");
			FUNC0(mnt, M_TEMP);
			error = FUNC3(&tok, &mnt);
		}
		if (opt != NULL)
			FUNC1(opt);
		FUNC1(s);
	}
	if (rootdevnames[0] != NULL)
		FUNC4(sb, "%s\n", rootdevnames[0]);
	if (rootdevnames[1] != NULL)
		FUNC4(sb, "%s\n", rootdevnames[1]);
#ifdef ROOTDEVNAME
	if (!(boothowto & RB_DFLTROOT))
		sbuf_printf(sb, "%s\n", ROOTDEVNAME);
#endif
	if (!(boothowto & RB_ASKNAME))
		FUNC4(sb, ".ask\n");
}