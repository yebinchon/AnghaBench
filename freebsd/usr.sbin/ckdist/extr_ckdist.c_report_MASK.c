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

/* Variables and functions */
#define  E_BADINF 134 
#define  E_BADMD5 133 
#define  E_CHKSUM 132 
#define  E_ERRNO 131 
#define  E_LENGTH 130 
#define  E_NAME 129 
#define  E_UNKNOWN 128 
 size_t errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 char* FUNC1 (char const*) ; 
 char** sys_errlist ; 

__attribute__((used)) static int
FUNC2(const char *path, const char *name, int error)
{
    if (name)
	name = FUNC1(name);
    switch (error) {
    case E_UNKNOWN:
	FUNC0("%s: Unknown format\n", path);
	break;
    case E_BADMD5:
	FUNC0("%s: Invalid MD5 format\n", path);
	break;
    case E_BADINF:
	FUNC0("%s: Invalid .inf format\n", path);
	break;
    case E_NAME:
	FUNC0("%s: Can't derive component name\n", path);
	break;
    case E_LENGTH:
	FUNC0("%s: %s: Size mismatch\n", path, name);
	break;
    case E_CHKSUM:
	FUNC0("%s: %s: Checksum mismatch\n", path, name);
	break;
    case E_ERRNO:
	FUNC0("%s: %s: %s\n", path, name, sys_errlist[errno]);
	break;
    default:
	FUNC0("%s: %s: OK\n", path, name);
    }
    return error != 0;
}