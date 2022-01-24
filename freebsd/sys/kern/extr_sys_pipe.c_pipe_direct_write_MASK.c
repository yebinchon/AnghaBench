#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct TYPE_4__ {scalar_t__ cnt; } ;
struct TYPE_3__ {scalar_t__ cnt; } ;
struct pipe {int pipe_state; TYPE_2__ pipe_map; TYPE_1__ pipe_buffer; } ;

/* Variables and functions */
 int EINTR ; 
 int EPIPE ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PCATCH ; 
 int PIPE_DIRECTW ; 
 int PIPE_EOF ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe*) ; 
 int PIPE_WANTR ; 
 int PIPE_WANTW ; 
 int PRIBIO ; 
 int FUNC3 (struct pipe*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pipe*,struct uio*) ; 
 int /*<<< orphan*/  FUNC5 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC6 (struct pipe*) ; 
 int FUNC7 (struct pipe*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC9 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC10 (struct pipe*) ; 

__attribute__((used)) static int
FUNC11(struct pipe *wpipe, struct uio *uio)
{
	int error;

retry:
	FUNC1(wpipe, MA_OWNED);
	error = FUNC7(wpipe, 1);
	if (error != 0)
		goto error1;
	if ((wpipe->pipe_state & PIPE_EOF) != 0) {
		error = EPIPE;
		FUNC9(wpipe);
		goto error1;
	}
	if (wpipe->pipe_state & PIPE_DIRECTW) {
		if (wpipe->pipe_state & PIPE_WANTR) {
			wpipe->pipe_state &= ~PIPE_WANTR;
			FUNC10(wpipe);
		}
		FUNC8(wpipe);
		wpipe->pipe_state |= PIPE_WANTW;
		FUNC9(wpipe);
		error = FUNC3(wpipe, FUNC2(wpipe),
		    PRIBIO | PCATCH, "pipdww", 0);
		if (error)
			goto error1;
		else
			goto retry;
	}
	if (wpipe->pipe_buffer.cnt > 0) {
		if (wpipe->pipe_state & PIPE_WANTR) {
			wpipe->pipe_state &= ~PIPE_WANTR;
			FUNC10(wpipe);
		}
		FUNC8(wpipe);
		wpipe->pipe_state |= PIPE_WANTW;
		FUNC9(wpipe);
		error = FUNC3(wpipe, FUNC2(wpipe),
		    PRIBIO | PCATCH, "pipdwc", 0);
		if (error)
			goto error1;
		else
			goto retry;
	}

	error = FUNC4(wpipe, uio);
	if (error) {
		FUNC9(wpipe);
		goto error1;
	}

	while (wpipe->pipe_map.cnt != 0 &&
	    (wpipe->pipe_state & PIPE_EOF) == 0) {
		if (wpipe->pipe_state & PIPE_WANTR) {
			wpipe->pipe_state &= ~PIPE_WANTR;
			FUNC10(wpipe);
		}
		FUNC8(wpipe);
		wpipe->pipe_state |= PIPE_WANTW;
		FUNC9(wpipe);
		error = FUNC3(wpipe, FUNC2(wpipe), PRIBIO | PCATCH,
		    "pipdwt", 0);
		FUNC7(wpipe, 0);
		if (error != 0)
			break;
	}

	if ((wpipe->pipe_state & PIPE_EOF) != 0) {
		wpipe->pipe_map.cnt = 0;
		FUNC6(wpipe);
		FUNC8(wpipe);
		error = EPIPE;
	} else if (error == EINTR || error == ERESTART) {
		FUNC5(wpipe);
	} else {
		FUNC6(wpipe);
	}
	FUNC9(wpipe);
	FUNC0((wpipe->pipe_state & PIPE_DIRECTW) == 0,
	    ("pipe %p leaked PIPE_DIRECTW", wpipe));
	return (error);

error1:
	FUNC10(wpipe);
	return (error);
}