#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; int flags; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int F_CKSUM ; 
 int F_FLAGS ; 
 int F_GID ; 
 int F_GNAME ; 
 scalar_t__ F_LINK ; 
 int F_MD5 ; 
 int F_MODE ; 
 int F_NLINK ; 
 int F_RMD160 ; 
 int F_SHA1 ; 
 int F_SHA256 ; 
 int F_SIZE ; 
 int F_SLINK ; 
 int F_TIME ; 
 int F_TYPE ; 
 int F_UID ; 
 int F_UNAME ; 
 int /*<<< orphan*/  cksum ; 
 int /*<<< orphan*/  md5digest ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  rmd160digest ; 
 int /*<<< orphan*/  sha1digest ; 
 int /*<<< orphan*/  sha256digest ; 
 int /*<<< orphan*/  slink ; 
 int /*<<< orphan*/  st_flags ; 
 int /*<<< orphan*/  st_gid ; 
 int /*<<< orphan*/  st_mode ; 
 int /*<<< orphan*/  st_mtimespec ; 
 int /*<<< orphan*/  st_nlink ; 
 int /*<<< orphan*/  st_size ; 
 int /*<<< orphan*/  st_uid ; 

__attribute__((used)) static int
FUNC4(NODE *n1, NODE *n2, char const *path)
{
	int differs;
	
	if (n1 != NULL && n1->type == F_LINK)
		n1->flags &= ~F_MODE;
	if (n2 != NULL && n2->type == F_LINK)
		n2->flags &= ~F_MODE;
	differs = 0;
	if (n1 == NULL && n2 != NULL) {
		differs = n2->flags;
		FUNC3(n1, n2, differs, path);
		return (1);
	}
	if (n1 != NULL && n2 == NULL) {
		differs = n1->flags;
		FUNC3(n1, n2, differs, path);
		return (1);
	}
	if (n1->type != n2->type) {
		differs = F_TYPE;
		FUNC3(n1, n2, differs, path);
		return (1);
	}
	if (FUNC0(n1, n2, F_CKSUM, cksum))
		differs |= F_CKSUM;
	if (FUNC0(n1, n2, F_GID, st_gid))
		differs |= F_GID;
	if (FUNC0(n1, n2, F_GNAME, st_gid))
		differs |= F_GNAME;
	if (FUNC0(n1, n2, F_MODE, st_mode))
		differs |= F_MODE;
	if (FUNC0(n1, n2, F_NLINK, st_nlink))
		differs |= F_NLINK;
	if (FUNC0(n1, n2, F_SIZE, st_size))
		differs |= F_SIZE;
	if (FUNC2(n1, n2, F_SLINK, slink))
		differs |= F_SLINK;
	if (FUNC1(n1, n2, F_TIME, st_mtimespec))
		differs |= F_TIME;
	if (FUNC0(n1, n2, F_UID, st_uid))
		differs |= F_UID;
	if (FUNC0(n1, n2, F_UNAME, st_uid))
		differs |= F_UNAME;
	if (FUNC2(n1, n2, F_MD5, md5digest))
		differs |= F_MD5;
	if (FUNC2(n1, n2, F_SHA1, sha1digest))
		differs |= F_SHA1;
	if (FUNC2(n1, n2, F_RMD160, rmd160digest))
		differs |= F_RMD160;
	if (FUNC2(n1, n2, F_SHA256, sha256digest))
		differs |= F_SHA256;
	if (FUNC0(n1, n2, F_FLAGS, st_flags))
		differs |= F_FLAGS;
	if (differs) {
		FUNC3(n1, n2, differs, path);
		return (1);
	}
	return (0);	
}