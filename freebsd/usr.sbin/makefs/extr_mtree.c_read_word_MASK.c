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
struct mtree_fileinfo {int /*<<< orphan*/  line; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
#define  EOF 128 
 struct mtree_fileinfo* FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  mtree_fileinfo ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(FILE *fp, char *buf, size_t bufsz)
{
	struct mtree_fileinfo *fi;
	size_t idx, qidx;
	int c, done, error, esc, qlvl;

	if (bufsz == 0)
		return (EINVAL);

	done = 0;
	esc = 0;
	idx = 0;
	qidx = -1;
	qlvl = 0;
	do {
		c = FUNC2(fp);
		switch (c) {
		case EOF:
			buf[idx] = '\0';
			error = FUNC1(fp) ? errno : -1;
			if (error == -1)
				FUNC3("unexpected end of file");
			return (error);
		case '#':		/* comment -- skip to end of line. */
			if (!esc) {
				error = FUNC5(fp, "\n");
				if (!error)
					continue;
			}
			break;
		case '\\':
			esc++;
			break;
		case '`':
		case '\'':
		case '"':
			if (esc)
				break;
			if (qlvl == 0) {
				qlvl++;
				qidx = idx;
			} else if (c == buf[qidx]) {
				qlvl--;
				if (qlvl > 0) {
					do {
						qidx--;
					} while (buf[qidx] != '`' &&
					    buf[qidx] != '\'' &&
					    buf[qidx] != '"');
				} else
					qidx = -1;
			} else {
				qlvl++;
				qidx = idx;
			}
			break;
		case ' ':
		case '\t':
		case '\n':
			if (!esc && qlvl == 0) {
				FUNC6(c, fp);
				c = '\0';
				done = 1;
				break;
			}
			if (c == '\n') {
				/*
				 * We going to eat the newline ourselves.
				 */
				if (qlvl > 0)
					FUNC4("quoted word straddles "
					    "onto next line.");
				fi = FUNC0(&mtree_fileinfo);
				fi->line++;
			}
			break;
		default:
			if (esc)
				buf[idx++] = '\\';
			break;
		}
		buf[idx++] = c;
		esc = 0;
	} while (idx < bufsz && !done);

	if (idx >= bufsz) {
		FUNC3("word too long to fit buffer (max %zu characters)",
		    bufsz);
		FUNC5(fp, " \t\n");
	}
	return (0);
}