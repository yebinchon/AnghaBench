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
typedef  long uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 long MFI_EVT_LOCALE_ALL ; 
 long MFI_EVT_LOCALE_BBU ; 
 long MFI_EVT_LOCALE_CLUSTER ; 
 long MFI_EVT_LOCALE_CONFIG ; 
 long MFI_EVT_LOCALE_CTRL ; 
 long MFI_EVT_LOCALE_ENCL ; 
 long MFI_EVT_LOCALE_LD ; 
 long MFI_EVT_LOCALE_PD ; 
 long MFI_EVT_LOCALE_SAS ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 long FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char *arg, uint16_t *locale)
{
	char *cp;
	long val;

	if (FUNC1(arg, "vol", 3) == 0 || FUNC0(arg, "ld") == 0) {
		*locale = MFI_EVT_LOCALE_LD;
		return (0);
	}
	if (FUNC1(arg, "drive", 5) == 0 || FUNC0(arg, "pd") == 0) {
		*locale = MFI_EVT_LOCALE_PD;
		return (0);
	}
	if (FUNC1(arg, "encl", 4) == 0) {
		*locale = MFI_EVT_LOCALE_ENCL;
		return (0);
	}
	if (FUNC1(arg, "batt", 4) == 0 ||
	    FUNC1(arg, "bbu", 3) == 0) {
		*locale = MFI_EVT_LOCALE_BBU;
		return (0);
	}
	if (FUNC0(arg, "sas") == 0) {
		*locale = MFI_EVT_LOCALE_SAS;
		return (0);
	}
	if (FUNC0(arg, "ctrl") == 0 || FUNC1(arg, "cont", 4) == 0) {
		*locale = MFI_EVT_LOCALE_CTRL;
		return (0);
	}
	if (FUNC0(arg, "config") == 0) {
		*locale = MFI_EVT_LOCALE_CONFIG;
		return (0);
	}
	if (FUNC0(arg, "cluster") == 0) {
		*locale = MFI_EVT_LOCALE_CLUSTER;
		return (0);
	}
	if (FUNC0(arg, "all") == 0) {
		*locale = MFI_EVT_LOCALE_ALL;
		return (0);
	}
	val = FUNC2(arg, &cp, 0);
	if (*cp != '\0' || val < 0 || val > 0xffff) {
		errno = EINVAL;
		return (-1);
	}
	*locale = val;
	return (0);
}