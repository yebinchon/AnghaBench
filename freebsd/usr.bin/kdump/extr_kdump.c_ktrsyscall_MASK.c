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
typedef  int u_int ;
struct ktr_syscall {int ktr_narg; int ktr_code; int* ktr_args; } ;
typedef  int register_t ;
typedef  int intmax_t ;

/* Variables and functions */
 int F_SETFL ; 
 int O_CREAT ; 
 int PF_INET ; 
 int PF_INET6 ; 
 int SV_ABI_FREEBSD ; 
 int SV_ABI_MASK ; 
 int SV_ILP32 ; 
#define  SYS___acl_aclcheck_fd 239 
#define  SYS___acl_aclcheck_file 238 
#define  SYS___acl_aclcheck_link 237 
#define  SYS___acl_delete_fd 236 
#define  SYS___acl_delete_file 235 
#define  SYS___acl_delete_link 234 
#define  SYS___acl_get_fd 233 
#define  SYS___acl_get_file 232 
#define  SYS___acl_get_link 231 
#define  SYS___acl_set_fd 230 
#define  SYS___acl_set_file 229 
#define  SYS___acl_set_link 228 
#define  SYS___semctl 227 
#define  SYS__umtx_op 226 
#define  SYS_access 225 
#define  SYS_bindat 224 
#define  SYS_cap_fcntls_limit 223 
#define  SYS_chflags 222 
#define  SYS_chflagsat 221 
#define  SYS_chmod 220 
#define  SYS_connectat 219 
#define  SYS_eaccess 218 
#define  SYS_extattrctl 217 
#define  SYS_faccessat 216 
#define  SYS_fchflags 215 
#define  SYS_fchmod 214 
#define  SYS_fchmodat 213 
#define  SYS_fchownat 212 
#define  SYS_fcntl 211 
#define  SYS_flock 210 
#define  SYS_fpathconf 209 
#define  SYS_freebsd12_shm_open 208 
#define  SYS_freebsd6_lseek 207 
#define  SYS_freebsd6_mmap 206 
#define  SYS_fstatat 205 
#define  SYS_ftruncate 204 
#define  SYS_futimesat 203 
#define  SYS_getfsstat 202 
#define  SYS_getpriority 201 
#define  SYS_getrlimit 200 
#define  SYS_getrusage 199 
#define  SYS_getsockopt 198 
#define  SYS_ioctl 197 
#define  SYS_kill 196 
#define  SYS_kldsym 195 
#define  SYS_kldunloadf 194 
#define  SYS_lchflags 193 
#define  SYS_lchmod 192 
#define  SYS_linkat 191 
#define  SYS_lio_listio 190 
#define  SYS_lpathconf 189 
#define  SYS_lseek 188 
#define  SYS_madvise 187 
#define  SYS_minherit 186 
#define  SYS_mkdir 185 
#define  SYS_mkdirat 184 
#define  SYS_mkfifo 183 
#define  SYS_mkfifoat 182 
#define  SYS_mknodat 181 
#define  SYS_mlockall 180 
#define  SYS_mmap 179 
#define  SYS_mount 178 
#define  SYS_mprotect 177 
#define  SYS_msgctl 176 
#define  SYS_msync 175 
#define  SYS_nfssvc 174 
#define  SYS_nmount 173 
#define  SYS_open 172 
#define  SYS_openat 171 
#define  SYS_pathconf 170 
#define  SYS_posix_fadvise 169 
#define  SYS_procctl 168 
#define  SYS_ptrace 167 
#define  SYS_quotactl 166 
#define  SYS_readlinkat 165 
#define  SYS_reboot 164 
#define  SYS_recvfrom 163 
#define  SYS_recvmsg 162 
#define  SYS_renameat 161 
#define  SYS_rfork 160 
#define  SYS_rtprio 159 
#define  SYS_rtprio_thread 158 
#define  SYS_sched_get_priority_max 157 
#define  SYS_sched_get_priority_min 156 
#define  SYS_sched_setscheduler 155 
#define  SYS_semget 154 
#define  SYS_sendfile 153 
#define  SYS_sendmsg 152 
#define  SYS_sendto 151 
#define  SYS_setpriority 150 
#define  SYS_setrlimit 149 
#define  SYS_setsockopt 148 
#define  SYS_shmat 147 
#define  SYS_shmctl 146 
#define  SYS_shutdown 145 
#define  SYS_sigaction 144 
#define  SYS_sigprocmask 143 
#define  SYS_socket 142 
#define  SYS_socketpair 141 
#define  SYS_symlinkat 140 
#define  SYS_sysarch 139 
#define  SYS_thr_create 138 
#define  SYS_thr_kill 137 
#define  SYS_truncate 136 
#define  SYS_umask 135 
#define  SYS_unlinkat 134 
#define  SYS_unmount 133 
#define  SYS_utimensat 132 
#define  SYS_wait4 131 
#define  SYS_wait6 130 
#define  UMTX_OP_CV_WAIT 129 
#define  UMTX_OP_RW_RDLOCK 128 
 int /*<<< orphan*/  decimal ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ fancy ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,char) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int,char) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  sysdecode_access_mode ; 
 int /*<<< orphan*/  sysdecode_acltype ; 
 int /*<<< orphan*/  sysdecode_atfd ; 
 int /*<<< orphan*/  sysdecode_atflags ; 
 int /*<<< orphan*/  sysdecode_cap_fcntlrights ; 
 int /*<<< orphan*/  sysdecode_extattrnamespace ; 
 int /*<<< orphan*/  sysdecode_fadvice ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  sysdecode_fcntl_cmd ; 
 int /*<<< orphan*/  sysdecode_fcntl_fileflags ; 
 int /*<<< orphan*/  sysdecode_flock_operation ; 
 int /*<<< orphan*/  sysdecode_getfsstat_mode ; 
 int /*<<< orphan*/  sysdecode_getrusage_who ; 
 int /*<<< orphan*/  sysdecode_idtype ; 
 int /*<<< orphan*/  sysdecode_ipproto ; 
 int /*<<< orphan*/  sysdecode_kldsym_cmd ; 
 int /*<<< orphan*/  sysdecode_kldunload_flags ; 
 int /*<<< orphan*/  sysdecode_lio_listio_mode ; 
 int /*<<< orphan*/  sysdecode_madvice ; 
 int /*<<< orphan*/  sysdecode_minherit_inherit ; 
 int /*<<< orphan*/  sysdecode_mlockall_flags ; 
 int /*<<< orphan*/  sysdecode_mmap_flags ; 
 int /*<<< orphan*/  sysdecode_mmap_prot ; 
 int /*<<< orphan*/  sysdecode_mount_flags ; 
 int /*<<< orphan*/  sysdecode_msg_flags ; 
 int /*<<< orphan*/  sysdecode_msgctl_cmd ; 
 int /*<<< orphan*/  sysdecode_msync_flags ; 
 int /*<<< orphan*/  sysdecode_nfssvc_flags ; 
 int /*<<< orphan*/  sysdecode_open_flags ; 
 int /*<<< orphan*/  sysdecode_pathconf_name ; 
 int /*<<< orphan*/  sysdecode_prio_which ; 
 int /*<<< orphan*/  sysdecode_procctl_cmd ; 
 int /*<<< orphan*/  sysdecode_ptrace_request ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sysdecode_reboot_howto ; 
 int /*<<< orphan*/  sysdecode_rfork_flags ; 
 int /*<<< orphan*/  sysdecode_rlimit ; 
 int /*<<< orphan*/  sysdecode_rtprio_function ; 
 int /*<<< orphan*/  sysdecode_scheduler_policy ; 
 int /*<<< orphan*/  sysdecode_semctl_cmd ; 
 int /*<<< orphan*/  sysdecode_semget_flags ; 
 int /*<<< orphan*/  sysdecode_sendfile_flags ; 
 int /*<<< orphan*/  sysdecode_shmat_flags ; 
 int /*<<< orphan*/  sysdecode_shmctl_cmd ; 
 int /*<<< orphan*/  sysdecode_shutdown_how ; 
 int /*<<< orphan*/  sysdecode_sigprocmask_how ; 
 int /*<<< orphan*/  sysdecode_socket_type ; 
 int /*<<< orphan*/  sysdecode_socketdomain ; 
 int /*<<< orphan*/  sysdecode_sockopt_level ; 
 char* FUNC18 (int,int) ; 
 int /*<<< orphan*/  sysdecode_sysarch_number ; 
 int /*<<< orphan*/  sysdecode_thr_create_flags ; 
 int /*<<< orphan*/  sysdecode_umtx_cvwait_flags ; 
 int /*<<< orphan*/  sysdecode_umtx_op ; 
 int /*<<< orphan*/  sysdecode_umtx_rwlock_flags ; 
 int /*<<< orphan*/  sysdecode_wait4_options ; 
 int /*<<< orphan*/  sysdecode_wait6_options ; 
 int /*<<< orphan*/  sysdecode_whence ; 

void
FUNC19(struct ktr_syscall *ktr, u_int sv_flags)
{
	int narg = ktr->ktr_narg;
	register_t *ip, *first;
	intmax_t arg;
	int quad_align, quad_slots;

	FUNC14(ktr->ktr_code, sv_flags);
	ip = first = &ktr->ktr_args[0];
	if (narg) {
		char c = '(';
		if (fancy &&
		    (sv_flags == 0 ||
		    (sv_flags & SV_ABI_MASK) == SV_ABI_FREEBSD)) {
			quad_align = 0;
			if (sv_flags & SV_ILP32) {
#ifdef __powerpc__
				quad_align = 1;
#endif
				quad_slots = 2;
			} else
				quad_slots = 1;
			switch (ktr->ktr_code) {
			case SYS_bindat:
			case SYS_chflagsat:
			case SYS_connectat:
			case SYS_faccessat:
			case SYS_fchmodat:
			case SYS_fchownat:
			case SYS_fstatat:
			case SYS_futimesat:
			case SYS_linkat:
			case SYS_mkdirat:
			case SYS_mkfifoat:
			case SYS_mknodat:
			case SYS_openat:
			case SYS_readlinkat:
			case SYS_renameat:
			case SYS_unlinkat:
			case SYS_utimensat:
				FUNC13('(');
				FUNC4(sysdecode_atfd, *ip);
				c = ',';
				ip++;
				narg--;
				break;
			}
			switch (ktr->ktr_code) {
			case SYS_ioctl: {
				FUNC9(ip, narg, c);
				FUNC13(c);
				FUNC2(*ip);
				c = ',';
				ip++;
				narg--;
				break;
			}
			case SYS_ptrace:
				FUNC13('(');
				FUNC3(sysdecode_ptrace_request, *ip);
				c = ',';
				ip++;
				narg--;
				break;
			case SYS_access:
			case SYS_eaccess:
			case SYS_faccessat:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_access_mode, *ip);
				ip++;
				narg--;
				break;
			case SYS_open:
			case SYS_openat:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_open_flags, ip[0]);
				if ((ip[0] & O_CREAT) == O_CREAT) {
					FUNC13(',');
					FUNC1(ip[1]);
				}
				ip += 2;
				narg -= 2;
				break;
			case SYS_wait4:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC6(sysdecode_wait4_options, *ip);
				ip++;
				narg--;
				break;
			case SYS_wait6:
				FUNC13('(');
				FUNC3(sysdecode_idtype, *ip);
				c = ',';
				ip++;
				narg--;
				FUNC10(first, ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_wait6_options, *ip);
				ip++;
				narg--;
				break;
			case SYS_chmod:
			case SYS_fchmod:
			case SYS_lchmod:
			case SYS_fchmodat:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC1(*ip);
				ip++;
				narg--;
				break;
			case SYS_mknodat:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC1(*ip);
				ip++;
				narg--;
				break;
			case SYS_getfsstat:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_getfsstat_mode, *ip);
				ip++;
				narg--;
				break;
			case SYS_mount:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_mount_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_unmount:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_mount_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_recvmsg:
			case SYS_sendmsg:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC6(sysdecode_msg_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_recvfrom:
			case SYS_sendto:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC6(sysdecode_msg_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_chflags:
			case SYS_chflagsat:
			case SYS_fchflags:
			case SYS_lchflags:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC0(*ip);
				ip++;
				narg--;
				break;
			case SYS_kill:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC11(*ip);
				ip++;
				narg--;
				break;
			case SYS_reboot:
				FUNC13('(');
				FUNC5(sysdecode_reboot_howto, *ip);
				ip++;
				narg--;
				break;
			case SYS_umask:
				FUNC13('(');
				FUNC1(*ip);
				ip++;
				narg--;
				break;
			case SYS_msync:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_msync_flags, *ip);
				ip++;
				narg--;
				break;
#ifdef SYS_freebsd6_mmap
			case SYS_freebsd6_mmap:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_mmap_prot, *ip);
				FUNC13(',');
				ip++;
				narg--;
				FUNC5(sysdecode_mmap_flags, *ip);
				ip++;
				narg--;
				break;
#endif
			case SYS_mmap:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_mmap_prot, *ip);
				FUNC13(',');
				ip++;
				narg--;
				FUNC5(sysdecode_mmap_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_mprotect:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_mmap_prot, *ip);
				ip++;
				narg--;
				break;
			case SYS_madvise:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_madvice, *ip);
				ip++;
				narg--;
				break;
			case SYS_pathconf:
			case SYS_lpathconf:
			case SYS_fpathconf:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_pathconf_name, *ip);
				ip++;
				narg--;
				break;
			case SYS_getpriority:
			case SYS_setpriority:
				FUNC13('(');
				FUNC3(sysdecode_prio_which, *ip);
				c = ',';
				ip++;
				narg--;
				break;
			case SYS_fcntl:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_fcntl_cmd, ip[0]);
				if (FUNC16(ip[0])) {
					FUNC13(',');
					if (ip[0] == F_SETFL)
						FUNC5(
						    sysdecode_fcntl_fileflags,
							ip[1]);
					else
						FUNC15(stdout,
						    ip[0], ip[1],
						    decimal ? 10 : 16);
				}
				ip += 2;
				narg -= 2;
				break;
			case SYS_socket: {
				int sockdomain;
				FUNC13('(');
				sockdomain = *ip;
				FUNC3(sysdecode_socketdomain,
				    sockdomain);
				ip++;
				narg--;
				FUNC13(',');
				FUNC5(sysdecode_socket_type, *ip);
				ip++;
				narg--;
				if (sockdomain == PF_INET ||
				    sockdomain == PF_INET6) {
					FUNC13(',');
					FUNC3(sysdecode_ipproto,
					    *ip);
					ip++;
					narg--;
				}
				c = ',';
				break;
			}
			case SYS_setsockopt:
			case SYS_getsockopt: {
				const char *str;

				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC4(sysdecode_sockopt_level,
				    *ip);
				str = FUNC18(ip[0], ip[1]);
				if (str != NULL) {
					FUNC12(",%s", str);
					ip++;
					narg--;
				}
				ip++;
				narg--;
				break;
			}
#ifdef SYS_freebsd6_lseek
			case SYS_freebsd6_lseek:
				FUNC9(ip, narg, c);
				/* Hidden 'pad' argument, not in lseek(2) */
				FUNC9(ip, narg, c);
				FUNC10(first, ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_whence, *ip);
				ip++;
				narg--;
				break;
#endif
			case SYS_lseek:
				FUNC9(ip, narg, c);
				FUNC10(first, ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_whence, *ip);
				ip++;
				narg--;
				break;
			case SYS_flock:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_flock_operation, *ip);
				ip++;
				narg--;
				break;
			case SYS_mkfifo:
			case SYS_mkfifoat:
			case SYS_mkdir:
			case SYS_mkdirat:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC1(*ip);
				ip++;
				narg--;
				break;
			case SYS_shutdown:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_shutdown_how, *ip);
				ip++;
				narg--;
				break;
			case SYS_socketpair:
				FUNC13('(');
				FUNC3(sysdecode_socketdomain, *ip);
				ip++;
				narg--;
				FUNC13(',');
				FUNC5(sysdecode_socket_type, *ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS_getrlimit:
			case SYS_setrlimit:
				FUNC13('(');
				FUNC3(sysdecode_rlimit, *ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS_getrusage:
				FUNC13('(');
				FUNC3(sysdecode_getrusage_who, *ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS_quotactl:
				FUNC9(ip, narg, c);
				FUNC13(',');
				if (!FUNC17(stdout, *ip)) {
					if (decimal)
						FUNC12("<invalid=%d>", (int)*ip);
					else
						FUNC12("<invalid=%#x>",
						    (int)*ip);
				}
				ip++;
				narg--;
				c = ',';
				break;
			case SYS_nfssvc:
				FUNC13('(');
				FUNC3(sysdecode_nfssvc_flags, *ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS_rtprio:
			case SYS_rtprio_thread:
				FUNC13('(');
				FUNC3(sysdecode_rtprio_function,
				    *ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS___semctl:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_semctl_cmd, *ip);
				ip++;
				narg--;
				break;
			case SYS_semget:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_semget_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_msgctl:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_msgctl_cmd, *ip);
				ip++;
				narg--;
				break;
			case SYS_shmat:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_shmat_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_shmctl:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_shmctl_cmd, *ip);
				ip++;
				narg--;
				break;
#ifdef SYS_freebsd12_shm_open
			case SYS_freebsd12_shm_open:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_open_flags, ip[0]);
				FUNC13(',');
				FUNC1(ip[1]);
				ip += 2;
				narg -= 2;
				break;
#endif
			case SYS_minherit:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_minherit_inherit,
				    *ip);
				ip++;
				narg--;
				break;
			case SYS_rfork:
				FUNC13('(');
				FUNC5(sysdecode_rfork_flags, *ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS_lio_listio:
				FUNC13('(');
				FUNC3(sysdecode_lio_listio_mode,
				    *ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS_mlockall:
				FUNC13('(');
				FUNC5(sysdecode_mlockall_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_sched_setscheduler:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_scheduler_policy,
				    *ip);
				ip++;
				narg--;
				break;
			case SYS_sched_get_priority_max:
			case SYS_sched_get_priority_min:
				FUNC13('(');
				FUNC3(sysdecode_scheduler_policy,
				    *ip);
				ip++;
				narg--;
				break;
			case SYS_sendfile:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_sendfile_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_kldsym:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_kldsym_cmd, *ip);
				ip++;
				narg--;
				break;
			case SYS_sigprocmask:
				FUNC13('(');
				FUNC3(sysdecode_sigprocmask_how,
				    *ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS___acl_get_file:
			case SYS___acl_set_file:
			case SYS___acl_get_fd:
			case SYS___acl_set_fd:
			case SYS___acl_delete_file:
			case SYS___acl_delete_fd:
			case SYS___acl_aclcheck_file:
			case SYS___acl_aclcheck_fd:
			case SYS___acl_get_link:
			case SYS___acl_set_link:
			case SYS___acl_delete_link:
			case SYS___acl_aclcheck_link:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_acltype, *ip);
				ip++;
				narg--;
				break;
			case SYS_sigaction:
				FUNC13('(');
				FUNC11(*ip);
				ip++;
				narg--;
				c = ',';
				break;
			case SYS_extattrctl:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_extattrnamespace,
				    *ip);
				ip++;
				narg--;
				break;
			case SYS_nmount:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_mount_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_thr_create:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC5(sysdecode_thr_create_flags, *ip);
				ip++;
				narg--;
				break;
			case SYS_thr_kill:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC11(*ip);
				ip++;
				narg--;
				break;
			case SYS_kldunloadf:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_kldunload_flags,
				    *ip);
				ip++;
				narg--;
				break;
			case SYS_linkat:
			case SYS_renameat:
			case SYS_symlinkat:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC4(sysdecode_atfd, *ip);
				ip++;
				narg--;
				FUNC9(ip, narg, c);
				break;
			case SYS_cap_fcntls_limit:
				FUNC9(ip, narg, c);
				FUNC13(',');
				arg = *ip;
				ip++;
				narg--;
				FUNC7(sysdecode_cap_fcntlrights, arg);
				break;
			case SYS_posix_fadvise:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				(void)FUNC13(',');
				FUNC3(sysdecode_fadvice, *ip);
				ip++;
				narg--;
				break;
			case SYS_procctl:
				FUNC13('(');
				FUNC3(sysdecode_idtype, *ip);
				c = ',';
				ip++;
				narg--;
				FUNC10(first, ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_procctl_cmd, *ip);
				ip++;
				narg--;
				break;
			case SYS__umtx_op:
				FUNC9(ip, narg, c);
				FUNC13(',');
				FUNC3(sysdecode_umtx_op, *ip);
				switch (*ip) {
				case UMTX_OP_CV_WAIT:
					ip++;
					narg--;
					FUNC13(',');
					FUNC8(
					    sysdecode_umtx_cvwait_flags, *ip);
					break;
				case UMTX_OP_RW_RDLOCK:
					ip++;
					narg--;
					FUNC13(',');
					FUNC8(
					    sysdecode_umtx_rwlock_flags, *ip);
					break;
				}
				ip++;
				narg--;
				break;
			case SYS_ftruncate:
			case SYS_truncate:
				FUNC9(ip, narg, c);
				FUNC10(first, ip, narg, c);
				break;
			case SYS_fchownat:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				break;
			case SYS_fstatat:
			case SYS_utimensat:
				FUNC9(ip, narg, c);
				FUNC9(ip, narg, c);
				break;
			case SYS_unlinkat:
				FUNC9(ip, narg, c);
				break;
			case SYS_sysarch:
				FUNC13('(');
				FUNC3(sysdecode_sysarch_number, *ip);
				ip++;
				narg--;
				c = ',';
				break;
			}
			switch (ktr->ktr_code) {
			case SYS_chflagsat:
			case SYS_fchownat:
			case SYS_faccessat:
			case SYS_fchmodat:
			case SYS_fstatat:
			case SYS_linkat:
			case SYS_unlinkat:
			case SYS_utimensat:
				FUNC13(',');
				FUNC6(sysdecode_atflags, *ip);
				ip++;
				narg--;
				break;
			}
		}
		while (narg > 0) {
			FUNC9(ip, narg, c);
		}
		FUNC13(')');
	}
	FUNC13('\n');
}