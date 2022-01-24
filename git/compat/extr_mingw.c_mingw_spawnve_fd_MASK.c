#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct strbuf {int len; scalar_t__* buf; } ;
struct pinfo_t {struct pinfo_t* next; int /*<<< orphan*/  proc; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  si ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  pi ;
struct TYPE_6__ {int cb; scalar_t__ hThread; int /*<<< orphan*/  dwProcessId; int /*<<< orphan*/  hProcess; void* hStdError; void* hStdOutput; void* hStdInput; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ STARTUPINFOW ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned int CREATE_UNICODE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,char*,char*,TYPE_1__*,TYPE_1__*) ; 
 unsigned int DETACHED_PROCESS ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  STARTF_USESTDHANDLES ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 char* FUNC9 (char**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct pinfo_t* pinfo ; 
 int /*<<< orphan*/  pinfo_cs ; 
 char const* FUNC11 (char const*) ; 
 char const* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char const*) ; 
 void* FUNC20 (int) ; 
 struct pinfo_t* FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (char*,scalar_t__*,int) ; 
 scalar_t__ FUNC23 (char*,char const*) ; 

__attribute__((used)) static pid_t FUNC24(const char *cmd, const char **argv, char **deltaenv,
			      const char *dir,
			      int prepend_cmd, int fhin, int fhout, int fherr)
{
	STARTUPINFOW si;
	PROCESS_INFORMATION pi;
	struct strbuf args;
	wchar_t wcmd[MAX_PATH], wdir[MAX_PATH], *wargs, *wenvblk = NULL;
	unsigned flags = CREATE_UNICODE_ENVIRONMENT;
	BOOL ret;
	HANDLE cons;
	const char *(*quote_arg)(const char *arg) =
		FUNC8(*argv) ? quote_arg_msys2 : quote_arg_msvc;

	FUNC6();

	/* Determine whether or not we are associated to a console */
	cons = FUNC2(L"CONOUT$", GENERIC_WRITE,
			FILE_SHARE_WRITE, NULL, OPEN_EXISTING,
			FILE_ATTRIBUTE_NORMAL, NULL);
	if (cons == INVALID_HANDLE_VALUE) {
		/* There is no console associated with this process.
		 * Since the child is a console process, Windows
		 * would normally create a console window. But
		 * since we'll be redirecting std streams, we do
		 * not need the console.
		 * It is necessary to use DETACHED_PROCESS
		 * instead of CREATE_NO_WINDOW to make ssh
		 * recognize that it has no console.
		 */
		flags |= DETACHED_PROCESS;
	} else {
		/* There is already a console. If we specified
		 * DETACHED_PROCESS here, too, Windows would
		 * disassociate the child from the console.
		 * The same is true for CREATE_NO_WINDOW.
		 * Go figure!
		 */
		FUNC1(cons);
	}
	FUNC10(&si, 0, sizeof(si));
	si.cb = sizeof(si);
	si.dwFlags = STARTF_USESTDHANDLES;
	si.hStdInput = FUNC20(fhin);
	si.hStdOutput = FUNC20(fhout);
	si.hStdError = FUNC20(fherr);

	if (*argv && !FUNC19(cmd, *argv))
		wcmd[0] = L'\0';
	else if (FUNC23(wcmd, cmd) < 0)
		return -1;
	if (dir && FUNC23(wdir, dir) < 0)
		return -1;

	/* concatenate argv, quoting args as we go */
	FUNC17(&args, 0);
	if (prepend_cmd) {
		char *quoted = (char *)quote_arg(cmd);
		FUNC16(&args, quoted);
		if (quoted != cmd)
			FUNC7(quoted);
	}
	for (; *argv; argv++) {
		char *quoted = (char *)quote_arg(*argv);
		if (*args.buf)
			FUNC15(&args, ' ');
		FUNC16(&args, quoted);
		if (quoted != *argv)
			FUNC7(quoted);
	}

	FUNC0(wargs, FUNC13(FUNC14(2, args.len), 1));
	FUNC22(wargs, args.buf, 2 * args.len + 1);
	FUNC18(&args);

	wenvblk = FUNC9(deltaenv);

	FUNC10(&pi, 0, sizeof(pi));
	ret = FUNC3(*wcmd ? wcmd : NULL, wargs, NULL, NULL, TRUE,
		flags, wenvblk, dir ? wdir : NULL, &si, &pi);

	FUNC7(wenvblk);
	FUNC7(wargs);

	if (!ret) {
		errno = ENOENT;
		return -1;
	}
	FUNC1(pi.hThread);

	/*
	 * The process ID is the human-readable identifier of the process
	 * that we want to present in log and error messages. The handle
	 * is not useful for this purpose. But we cannot close it, either,
	 * because it is not possible to turn a process ID into a process
	 * handle after the process terminated.
	 * Keep the handle in a list for waitpid.
	 */
	FUNC4(&pinfo_cs);
	{
		struct pinfo_t *info = FUNC21(sizeof(struct pinfo_t));
		info->pid = pi.dwProcessId;
		info->proc = pi.hProcess;
		info->next = pinfo;
		pinfo = info;
	}
	FUNC5(&pinfo_cs);

	return (pid_t)pi.dwProcessId;
}