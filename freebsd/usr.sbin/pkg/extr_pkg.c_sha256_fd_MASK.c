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
typedef  int /*<<< orphan*/  SHA256_CTX ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(int fd, char out[SHA256_DIGEST_LENGTH * 2 + 1])
{
	int my_fd;
	FILE *fp;
	char buffer[BUFSIZ];
	unsigned char hash[SHA256_DIGEST_LENGTH];
	size_t r;
	int ret;
	SHA256_CTX sha256;

	my_fd = -1;
	fp = NULL;
	r = 0;
	ret = 1;

	out[0] = '\0';

	/* Duplicate the fd so that fclose(3) does not close it. */
	if ((my_fd = FUNC4(fd)) == -1) {
		FUNC11("dup");
		goto cleanup;
	}

	if ((fp = FUNC6(my_fd, "rb")) == NULL) {
		FUNC11("fdopen");
		goto cleanup;
	}

	FUNC1(&sha256);

	while ((r = FUNC8(buffer, 1, BUFSIZ, fp)) > 0)
		FUNC2(&sha256, buffer, r);

	if (FUNC7(fp) != 0) {
		FUNC11("fread");
		goto cleanup;
	}

	FUNC0(hash, &sha256);
	FUNC10(hash, out);
	ret = 0;

cleanup:
	if (fp != NULL)
		FUNC5(fp);
	else if (my_fd != -1)
		FUNC3(my_fd);
	(void)FUNC9(fd, 0, SEEK_SET);

	return (ret);
}