
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
struct strbuf {int len; scalar_t__* buf; } ;
struct pinfo_t {struct pinfo_t* next; int proc; int pid; } ;
typedef int si ;
typedef int pid_t ;
typedef int pi ;
struct TYPE_6__ {int cb; scalar_t__ hThread; int dwProcessId; int hProcess; void* hStdError; void* hStdOutput; void* hStdInput; int dwFlags; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int ALLOC_ARRAY (char*,int ) ;
 unsigned int CREATE_UNICODE_ENVIRONMENT ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int ,int *,int ,int ,int *) ;
 int CreateProcessW (char*,char*,int *,int *,int ,unsigned int,char*,char*,TYPE_1__*,TYPE_1__*) ;
 unsigned int DETACHED_PROCESS ;
 int ENOENT ;
 int EnterCriticalSection (int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_WRITE ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LeaveCriticalSection (int *) ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int STARTF_USESTDHANDLES ;
 int TRUE ;
 int do_unset_environment_variables () ;
 int errno ;
 int free (char*) ;
 scalar_t__ is_msys2_sh (char const*) ;
 char* make_environment_block (char**) ;
 int memset (TYPE_1__*,int ,int) ;
 struct pinfo_t* pinfo ;
 int pinfo_cs ;
 char const* quote_arg_msvc (char const*) ;
 char const* quote_arg_msys2 (char const*) ;
 int st_add (int ,int) ;
 int st_mult (int,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_init (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char const*) ;
 void* winansi_get_osfhandle (int) ;
 struct pinfo_t* xmalloc (int) ;
 int xutftowcs (char*,scalar_t__*,int) ;
 scalar_t__ xutftowcs_path (char*,char const*) ;

__attribute__((used)) static pid_t mingw_spawnve_fd(const char *cmd, const char **argv, char **deltaenv,
         const char *dir,
         int prepend_cmd, int fhin, int fhout, int fherr)
{
 STARTUPINFOW si;
 PROCESS_INFORMATION pi;
 struct strbuf args;
 wchar_t wcmd[MAX_PATH], wdir[MAX_PATH], *wargs, *wenvblk = ((void*)0);
 unsigned flags = CREATE_UNICODE_ENVIRONMENT;
 BOOL ret;
 HANDLE cons;
 const char *(*quote_arg)(const char *arg) =
  is_msys2_sh(*argv) ? quote_arg_msys2 : quote_arg_msvc;

 do_unset_environment_variables();


 cons = CreateFileW(L"CONOUT$", GENERIC_WRITE,
   FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING,
   FILE_ATTRIBUTE_NORMAL, ((void*)0));
 if (cons == INVALID_HANDLE_VALUE) {
  flags |= DETACHED_PROCESS;
 } else {






  CloseHandle(cons);
 }
 memset(&si, 0, sizeof(si));
 si.cb = sizeof(si);
 si.dwFlags = STARTF_USESTDHANDLES;
 si.hStdInput = winansi_get_osfhandle(fhin);
 si.hStdOutput = winansi_get_osfhandle(fhout);
 si.hStdError = winansi_get_osfhandle(fherr);

 if (*argv && !strcmp(cmd, *argv))
  wcmd[0] = L'\0';
 else if (xutftowcs_path(wcmd, cmd) < 0)
  return -1;
 if (dir && xutftowcs_path(wdir, dir) < 0)
  return -1;


 strbuf_init(&args, 0);
 if (prepend_cmd) {
  char *quoted = (char *)quote_arg(cmd);
  strbuf_addstr(&args, quoted);
  if (quoted != cmd)
   free(quoted);
 }
 for (; *argv; argv++) {
  char *quoted = (char *)quote_arg(*argv);
  if (*args.buf)
   strbuf_addch(&args, ' ');
  strbuf_addstr(&args, quoted);
  if (quoted != *argv)
   free(quoted);
 }

 ALLOC_ARRAY(wargs, st_add(st_mult(2, args.len), 1));
 xutftowcs(wargs, args.buf, 2 * args.len + 1);
 strbuf_release(&args);

 wenvblk = make_environment_block(deltaenv);

 memset(&pi, 0, sizeof(pi));
 ret = CreateProcessW(*wcmd ? wcmd : ((void*)0), wargs, ((void*)0), ((void*)0), TRUE,
  flags, wenvblk, dir ? wdir : ((void*)0), &si, &pi);

 free(wenvblk);
 free(wargs);

 if (!ret) {
  errno = ENOENT;
  return -1;
 }
 CloseHandle(pi.hThread);
 EnterCriticalSection(&pinfo_cs);
 {
  struct pinfo_t *info = xmalloc(sizeof(struct pinfo_t));
  info->pid = pi.dwProcessId;
  info->proc = pi.hProcess;
  info->next = pinfo;
  pinfo = info;
 }
 LeaveCriticalSection(&pinfo_cs);

 return (pid_t)pi.dwProcessId;
}
