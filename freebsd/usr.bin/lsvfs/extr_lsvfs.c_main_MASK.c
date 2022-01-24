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
struct xvfsconf {char* vfc_name; char* vfc_typenum; char* vfc_refcount; int /*<<< orphan*/  vfc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASHES ; 
 char* FMT ; 
 char* HDRFMT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xvfsconf*) ; 
 scalar_t__ FUNC5 (char*,struct xvfsconf*) ; 
 struct xvfsconf* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC8 (char*,struct xvfsconf*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

int
FUNC10(int argc, char **argv)
{
  int cnt, rv = 0, i; 
  struct xvfsconf vfc, *xvfsp;
  size_t buflen;
  argc--, argv++;

  FUNC7(HDRFMT, "Filesystem", "Num", "Refs", "Flags");
  FUNC3(DASHES, stdout);

  if(argc) {
    for(; argc; argc--, argv++) {
      if (FUNC5(*argv, &vfc) == 0) {
        FUNC7(FMT, vfc.vfc_name, vfc.vfc_typenum, vfc.vfc_refcount,
	    FUNC2(vfc.vfc_flags));
      } else {
	FUNC9("VFS %s unknown or not loaded", *argv);
        rv++;
      }
    }
  } else {
    if (FUNC8("vfs.conflist", NULL, &buflen, NULL, 0) < 0)
      FUNC0(1, "sysctl(vfs.conflist)");
    xvfsp = FUNC6(buflen);
    if (xvfsp == NULL)
      FUNC1(1, "malloc failed");
    if (FUNC8("vfs.conflist", xvfsp, &buflen, NULL, 0) < 0)
      FUNC0(1, "sysctl(vfs.conflist)");
    cnt = buflen / sizeof(struct xvfsconf);

    for (i = 0; i < cnt; i++) {
      FUNC7(FMT, xvfsp[i].vfc_name, xvfsp[i].vfc_typenum,
	    xvfsp[i].vfc_refcount, FUNC2(xvfsp[i].vfc_flags));
    }
    FUNC4(xvfsp);
  }

  return rv;
}