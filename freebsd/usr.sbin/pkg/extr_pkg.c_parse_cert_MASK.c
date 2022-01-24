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
struct sig_cert {int siglen; int /*<<< orphan*/  cert; void* certlen; void* sig; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*) ; 
 void* FUNC12 (struct sbuf*) ; 
 struct sbuf* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sbuf*,void*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static struct sig_cert *
FUNC19(int fd) {
	int my_fd;
	struct sig_cert *sc;
	FILE *fp;
	struct sbuf *buf, *sig, *cert;
	char *line;
	size_t linecap;
	ssize_t linelen;

	buf = NULL;
	my_fd = -1;
	sc = NULL;
	line = NULL;
	linecap = 0;

	if (FUNC6(fd, 0, 0) == -1) {
		FUNC17("lseek");
		return (NULL);
	}

	/* Duplicate the fd so that fclose(3) does not close it. */
	if ((my_fd = FUNC2(fd)) == -1) {
		FUNC18("dup");
		return (NULL);
	}

	if ((fp = FUNC4(my_fd, "rb")) == NULL) {
		FUNC17("fdopen");
		FUNC1(my_fd);
		return (NULL);
	}

	sig = FUNC13();
	cert = FUNC13();

	while ((linelen = FUNC5(&line, &linecap, fp)) > 0) {
		if (FUNC15(line, "SIGNATURE\n") == 0) {
			buf = sig;
			continue;
		} else if (FUNC15(line, "CERT\n") == 0) {
			buf = cert;
			continue;
		} else if (FUNC15(line, "END\n") == 0) {
			break;
		}
		if (buf != NULL)
			FUNC8(buf, line, linelen);
	}

	FUNC3(fp);

	/* Trim out unrelated trailing newline */
	FUNC14(sig, FUNC12(sig) - 1);

	FUNC11(sig);
	FUNC11(cert);

	sc = FUNC0(1, sizeof(struct sig_cert));
	sc->siglen = FUNC12(sig);
	sc->sig = FUNC0(1, sc->siglen);
	FUNC7(sc->sig, FUNC9(sig), sc->siglen);

	sc->certlen = FUNC12(cert);
	sc->cert = FUNC16(FUNC9(cert));

	FUNC10(sig);
	FUNC10(cert);

	return (sc);
}