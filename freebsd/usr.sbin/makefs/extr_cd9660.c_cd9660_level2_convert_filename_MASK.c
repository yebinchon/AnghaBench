#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  omit_trailing_period; scalar_t__ allow_multidot; scalar_t__ archimedes_enabled; } ;
typedef  TYPE_1__ iso9660_disk ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 

__attribute__((used)) static int
FUNC6(iso9660_disk *diskStructure, const char *oldname,
    char *newname, int is_file)
{
	/*
	 * ISO 9660 : 7.5.1
	 * File name : 0+ d or d1 characters
	 * separator 1 (.)
	 * File name extension : 0+ d or d1 characters
	 * separator 2 (;)
	 * File version number (5 characters, 1-32767)
	 * 1 <= Sum of File name and File name extension <= 30
	 */
	int namelen = 0;
	int extlen = 0;
	int found_ext = 0;

	while (*oldname != '\0' && namelen + extlen < 30) {
		/* Handle period first, as it is special */
		if (*oldname == '.') {
			if (found_ext) {
				if (diskStructure->allow_multidot) {
					*newname++ = '.';
				} else {
					*newname++ = '_';
				}
				extlen ++;
			}
			else {
				*newname++ = '.';
				found_ext = 1;
			}
		} else {
			/* cut RISC OS file type off ISO name */
			if (diskStructure->archimedes_enabled &&
			    *oldname == ',' && FUNC4(oldname) == 4)
				break;

			 if (FUNC1((unsigned char)*oldname))
				*newname++ = FUNC5((unsigned char)*oldname);
			else if (FUNC2((unsigned char)*oldname) ||
			    FUNC0((unsigned char)*oldname))
				*newname++ = *oldname;
			else if (diskStructure->allow_multidot &&
			    *oldname == '.') {
			    	*newname++ = '.';
			} else {
				*newname++ = '_';
			}

			if (found_ext)
				extlen++;
			else
				namelen++;
		}
		oldname ++;
	}
	if (is_file) {
		if (!found_ext && !diskStructure->omit_trailing_period)
			*newname++ = '.';
		/* Add version */
		FUNC3(newname, ";%i", 1);
	}
	return namelen + extlen + found_ext;
}