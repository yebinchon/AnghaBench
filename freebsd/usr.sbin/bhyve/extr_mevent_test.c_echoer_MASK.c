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
struct mevent {int dummy; } ;
struct esync {int /*<<< orphan*/  e_cond; int /*<<< orphan*/  e_mt; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EVF_READ ; 
 int /*<<< orphan*/  echoer_callback ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mevent* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct esync*) ; 
 int /*<<< orphan*/  FUNC2 (struct mevent*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 

__attribute__((used)) static void *
FUNC13(void *param)
{
	struct esync sync;
	struct mevent *mev;
	char buf[128];
	int fd = (int)(uintptr_t) param;
	int len;

	FUNC8(&sync.e_mt, NULL);
	FUNC5(&sync.e_cond, NULL);

	FUNC9(&sync.e_mt);

	mev = FUNC1(fd, EVF_READ, echoer_callback, &sync);
	if (mev == NULL) {
		FUNC3("Could not allocate echoer event\n");
		FUNC0(4);
	}

	while (!FUNC6(&sync.e_cond, &sync.e_mt)) {
		len = FUNC11(fd, buf, sizeof(buf));
		if (len > 0) {
			FUNC12(fd, buf, len);
			FUNC12(0, buf, len);
		} else {
			break;
		}
	}

	FUNC2(mev);

	FUNC10(&sync.e_mt);
	FUNC7(&sync.e_mt);
	FUNC4(&sync.e_cond);

	return (NULL);
}