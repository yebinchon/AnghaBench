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
struct ustar_header {char* typeflag; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 scalar_t__ GIT_HASH_UNKNOWN ; 
 int HEADERSIZE ; 
 int RECORDSIZE ; 
 int /*<<< orphan*/  builtin_get_tar_commit_id_usage ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const**) ; 
 long FUNC4 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,char const*,long) ; 

int FUNC7(int argc, const char **argv, const char *prefix)
{
	char buffer[HEADERSIZE];
	struct ustar_header *header = (struct ustar_header *)buffer;
	char *content = buffer + RECORDSIZE;
	const char *comment;
	ssize_t n;
	long len;
	char *end;

	if (argc != 1)
		FUNC5(builtin_get_tar_commit_id_usage);

	n = FUNC2(0, buffer, HEADERSIZE);
	if (n < 0)
		FUNC0("git get-tar-commit-id: read error");
	if (n != HEADERSIZE)
		FUNC0("git get-tar-commit-id: EOF before reading tar header");
	if (header->typeflag[0] != 'g')
		return 1;

	len = FUNC4(content, &end, 10);
	if (errno == ERANGE || end == content || len < 0)
		return 1;
	if (!FUNC3(end, " comment=", &comment))
		return 1;
	len -= comment - content;
	if (len < 1 || !(len % 2) ||
	    FUNC1((len - 1) / 2) == GIT_HASH_UNKNOWN)
		return 1;

	if (FUNC6(1, comment, len) < 0)
		FUNC0("git get-tar-commit-id: write error");

	return 0;
}