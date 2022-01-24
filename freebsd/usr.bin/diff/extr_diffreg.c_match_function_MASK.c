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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNCTION_CONTEXT_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (unsigned char*,char*) ; 
 size_t FUNC1 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 char* lastbuf ; 
 int lastline ; 
 int lastmatchline ; 
 size_t FUNC4 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned char*,int) ; 

__attribute__((used)) static char *
FUNC7(const long *f, int pos, FILE *fp)
{
	unsigned char buf[FUNCTION_CONTEXT_SIZE];
	size_t nc;
	int last = lastline;
	const char *state = NULL;

	lastline = pos;
	while (pos > last) {
		FUNC2(fp, f[pos - 1], SEEK_SET);
		nc = f[pos] - f[pos - 1];
		if (nc >= sizeof(buf))
			nc = sizeof(buf) - 1;
		nc = FUNC1(buf, 1, nc, fp);
		if (nc > 0) {
			buf[nc] = '\0';
			buf[FUNC4(buf, "\n")] = '\0';
			if (FUNC3(buf[0]) || buf[0] == '_' || buf[0] == '$') {
				if (FUNC0(buf, "private:")) {
					if (!state)
						state = " (private)";
				} else if (FUNC0(buf, "protected:")) {
					if (!state)
						state = " (protected)";
				} else if (FUNC0(buf, "public:")) {
					if (!state)
						state = " (public)";
				} else {
					FUNC6(lastbuf, buf, sizeof lastbuf);
					if (state)
						FUNC5(lastbuf, state,
						    sizeof lastbuf);
					lastmatchline = pos;
					return lastbuf;
				}
			}
		}
		pos--;
	}
	return lastmatchline > 0 ? lastbuf : NULL;
}