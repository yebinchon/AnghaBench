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
typedef  int /*<<< orphan*/  uintmax_t ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_3__ {char* name; int st_gid; int st_mode; int st_uid; char* md5digest; char* sha1digest; char* rmd160digest; char* sha256digest; int /*<<< orphan*/  st_flags; scalar_t__ st_size; scalar_t__ st_nlink; int /*<<< orphan*/  cksum; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 int F_CKSUM ; 
 int F_FLAGS ; 
 int F_GID ; 
 int F_GNAME ; 
 int F_MD5 ; 
 int F_MODE ; 
 int F_NLINK ; 
 int F_RMD160 ; 
 int F_SHA1 ; 
 int F_SHA256 ; 
 int F_SIZE ; 
 int F_UID ; 
 int F_UNAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct group* FUNC2 (int) ; 
 struct passwd* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(NODE *n, int f, char const *path)
{
	struct group *gr;
	struct passwd *pw;

	FUNC4("%s%s %s", path, n->name, FUNC1(n->type));
	if (f & F_CKSUM)
		FUNC4(" cksum=%lu", n->cksum);
	if (f & F_GID)
		FUNC4(" gid=%d", n->st_gid);
	if (f & F_GNAME) {
		gr = FUNC2(n->st_gid);
		if (gr == NULL)
			FUNC4(" gid=%d", n->st_gid);
		else
			FUNC4(" gname=%s", gr->gr_name);
	}
	if (f & F_MODE)
		FUNC4(" mode=%o", n->st_mode);
	if (f & F_NLINK)
		FUNC4(" nlink=%ju", (uintmax_t)n->st_nlink);
	if (f & F_SIZE)
		FUNC4(" size=%jd", (intmax_t)n->st_size);
	if (f & F_UID)
		FUNC4(" uid=%d", n->st_uid);
	if (f & F_UNAME) {
		pw = FUNC3(n->st_uid);
		if (pw == NULL)
			FUNC4(" uid=%d", n->st_uid);
		else
			FUNC4(" uname=%s", pw->pw_name);
	}
	if (f & F_MD5)
		FUNC4(" md5digest=%s", n->md5digest);
	if (f & F_SHA1)
		FUNC4(" sha1digest=%s", n->sha1digest);
	if (f & F_RMD160)
		FUNC4(" rmd160digest=%s", n->rmd160digest);
	if (f & F_SHA256)
		FUNC4(" sha256digest=%s", n->sha256digest);
	if (f & F_FLAGS)
		FUNC4(" flags=%s", FUNC0(n->st_flags));
	FUNC4("\n");
}