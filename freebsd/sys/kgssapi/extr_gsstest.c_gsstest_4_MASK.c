#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_6__ {int rpc_gss_error; int system_error; } ;
typedef  TYPE_1__ rpc_gss_error_t ;
struct TYPE_7__ {int program; int version; int /*<<< orphan*/  callback; } ;
typedef  TYPE_2__ rpc_gss_callback_t ;
typedef  int /*<<< orphan*/  principal ;
typedef  int /*<<< orphan*/  SVCPOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_INDEFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char** FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  server_new_context ; 
 int /*<<< orphan*/  server_program_1 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct thread *td)
{
	SVCPOOL *pool;
	char principal[128 + 5];
	const char **mechs;
	static rpc_gss_callback_t cb;

	FUNC1(principal, "host@", 5);
	FUNC0(td->td_ucred, principal + 5, sizeof(principal) - 5);

	mechs = FUNC6();
	while (*mechs) {
		if (!FUNC8(principal, *mechs, GSS_C_INDEFINITE,
			123456, 1)) {
			rpc_gss_error_t e;

			FUNC5(&e);
			FUNC2("setting name for %s for %s failed: %d, %d\n",
			    principal, *mechs,
			    e.rpc_gss_error, e.system_error);
		}
		mechs++;
	}

	cb.program = 123456;
	cb.version = 1;
	cb.callback = server_new_context;
	FUNC7(&cb);

	pool = FUNC11("gsstest", NULL);

	FUNC9(pool, server_program_1, 123456, 1, NULL);
	FUNC10(pool);

	FUNC4(123456, 1);
	FUNC3(&cb);

	FUNC12(pool);

	return (0);
}