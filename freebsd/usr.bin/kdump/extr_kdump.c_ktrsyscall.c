
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ktr_syscall {int ktr_narg; int ktr_code; int* ktr_args; } ;
typedef int register_t ;
typedef int intmax_t ;


 int F_SETFL ;
 int O_CREAT ;
 int PF_INET ;
 int PF_INET6 ;
 int SV_ABI_FREEBSD ;
 int SV_ABI_MASK ;
 int SV_ILP32 ;
 int decimal ;
 int decode_fileflags (int) ;
 int decode_filemode (int) ;
 scalar_t__ fancy ;
 int ioctlname (int) ;
 int print_integer_arg (int ,int) ;
 int print_integer_arg_valid (int ,int) ;
 int print_mask_arg (int ,int) ;
 int print_mask_arg0 (int ,int) ;
 int print_mask_arg32 (int ,int) ;
 int print_mask_argul (int ,int) ;
 int print_number (int*,int,char) ;
 int print_number64 (int*,int*,int,char) ;
 int print_signal (int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int stdout ;
 int syscallname (int,int) ;
 int sysdecode_access_mode ;
 int sysdecode_acltype ;
 int sysdecode_atfd ;
 int sysdecode_atflags ;
 int sysdecode_cap_fcntlrights ;
 int sysdecode_extattrnamespace ;
 int sysdecode_fadvice ;
 int sysdecode_fcntl_arg (int ,int,int,int) ;
 int sysdecode_fcntl_arg_p (int) ;
 int sysdecode_fcntl_cmd ;
 int sysdecode_fcntl_fileflags ;
 int sysdecode_flock_operation ;
 int sysdecode_getfsstat_mode ;
 int sysdecode_getrusage_who ;
 int sysdecode_idtype ;
 int sysdecode_ipproto ;
 int sysdecode_kldsym_cmd ;
 int sysdecode_kldunload_flags ;
 int sysdecode_lio_listio_mode ;
 int sysdecode_madvice ;
 int sysdecode_minherit_inherit ;
 int sysdecode_mlockall_flags ;
 int sysdecode_mmap_flags ;
 int sysdecode_mmap_prot ;
 int sysdecode_mount_flags ;
 int sysdecode_msg_flags ;
 int sysdecode_msgctl_cmd ;
 int sysdecode_msync_flags ;
 int sysdecode_nfssvc_flags ;
 int sysdecode_open_flags ;
 int sysdecode_pathconf_name ;
 int sysdecode_prio_which ;
 int sysdecode_procctl_cmd ;
 int sysdecode_ptrace_request ;
 int sysdecode_quotactl_cmd (int ,int) ;
 int sysdecode_reboot_howto ;
 int sysdecode_rfork_flags ;
 int sysdecode_rlimit ;
 int sysdecode_rtprio_function ;
 int sysdecode_scheduler_policy ;
 int sysdecode_semctl_cmd ;
 int sysdecode_semget_flags ;
 int sysdecode_sendfile_flags ;
 int sysdecode_shmat_flags ;
 int sysdecode_shmctl_cmd ;
 int sysdecode_shutdown_how ;
 int sysdecode_sigprocmask_how ;
 int sysdecode_socket_type ;
 int sysdecode_socketdomain ;
 int sysdecode_sockopt_level ;
 char* sysdecode_sockopt_name (int,int) ;
 int sysdecode_sysarch_number ;
 int sysdecode_thr_create_flags ;
 int sysdecode_umtx_cvwait_flags ;
 int sysdecode_umtx_op ;
 int sysdecode_umtx_rwlock_flags ;
 int sysdecode_wait4_options ;
 int sysdecode_wait6_options ;
 int sysdecode_whence ;

void
ktrsyscall(struct ktr_syscall *ktr, u_int sv_flags)
{
 int narg = ktr->ktr_narg;
 register_t *ip, *first;
 intmax_t arg;
 int quad_align, quad_slots;

 syscallname(ktr->ktr_code, sv_flags);
 ip = first = &ktr->ktr_args[0];
 if (narg) {
  char c = '(';
  if (fancy &&
      (sv_flags == 0 ||
      (sv_flags & SV_ABI_MASK) == SV_ABI_FREEBSD)) {
   quad_align = 0;
   if (sv_flags & SV_ILP32) {



    quad_slots = 2;
   } else
    quad_slots = 1;
   switch (ktr->ktr_code) {
   case 224:
   case 221:
   case 219:
   case 216:
   case 213:
   case 212:
   case 205:
   case 203:
   case 191:
   case 184:
   case 182:
   case 181:
   case 171:
   case 165:
   case 161:
   case 134:
   case 132:
    putchar('(');
    print_integer_arg_valid(sysdecode_atfd, *ip);
    c = ',';
    ip++;
    narg--;
    break;
   }
   switch (ktr->ktr_code) {
   case 197: {
    print_number(ip, narg, c);
    putchar(c);
    ioctlname(*ip);
    c = ',';
    ip++;
    narg--;
    break;
   }
   case 167:
    putchar('(');
    print_integer_arg(sysdecode_ptrace_request, *ip);
    c = ',';
    ip++;
    narg--;
    break;
   case 225:
   case 218:
   case 216:
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_access_mode, *ip);
    ip++;
    narg--;
    break;
   case 172:
   case 171:
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_open_flags, ip[0]);
    if ((ip[0] & O_CREAT) == O_CREAT) {
     putchar(',');
     decode_filemode(ip[1]);
    }
    ip += 2;
    narg -= 2;
    break;
   case 131:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg0(sysdecode_wait4_options, *ip);
    ip++;
    narg--;
    break;
   case 130:
    putchar('(');
    print_integer_arg(sysdecode_idtype, *ip);
    c = ',';
    ip++;
    narg--;
    print_number64(first, ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_wait6_options, *ip);
    ip++;
    narg--;
    break;
   case 220:
   case 214:
   case 192:
   case 213:
    print_number(ip, narg, c);
    putchar(',');
    decode_filemode(*ip);
    ip++;
    narg--;
    break;
   case 181:
    print_number(ip, narg, c);
    putchar(',');
    decode_filemode(*ip);
    ip++;
    narg--;
    break;
   case 202:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_getfsstat_mode, *ip);
    ip++;
    narg--;
    break;
   case 178:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_mount_flags, *ip);
    ip++;
    narg--;
    break;
   case 133:
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_mount_flags, *ip);
    ip++;
    narg--;
    break;
   case 162:
   case 152:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg0(sysdecode_msg_flags, *ip);
    ip++;
    narg--;
    break;
   case 163:
   case 151:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg0(sysdecode_msg_flags, *ip);
    ip++;
    narg--;
    break;
   case 222:
   case 221:
   case 215:
   case 193:
    print_number(ip, narg, c);
    putchar(',');
    decode_fileflags(*ip);
    ip++;
    narg--;
    break;
   case 196:
    print_number(ip, narg, c);
    putchar(',');
    print_signal(*ip);
    ip++;
    narg--;
    break;
   case 164:
    putchar('(');
    print_mask_arg(sysdecode_reboot_howto, *ip);
    ip++;
    narg--;
    break;
   case 135:
    putchar('(');
    decode_filemode(*ip);
    ip++;
    narg--;
    break;
   case 175:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_msync_flags, *ip);
    ip++;
    narg--;
    break;

   case 206:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_mmap_prot, *ip);
    putchar(',');
    ip++;
    narg--;
    print_mask_arg(sysdecode_mmap_flags, *ip);
    ip++;
    narg--;
    break;

   case 179:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_mmap_prot, *ip);
    putchar(',');
    ip++;
    narg--;
    print_mask_arg(sysdecode_mmap_flags, *ip);
    ip++;
    narg--;
    break;
   case 177:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_mmap_prot, *ip);
    ip++;
    narg--;
    break;
   case 187:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_madvice, *ip);
    ip++;
    narg--;
    break;
   case 170:
   case 189:
   case 209:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_pathconf_name, *ip);
    ip++;
    narg--;
    break;
   case 201:
   case 150:
    putchar('(');
    print_integer_arg(sysdecode_prio_which, *ip);
    c = ',';
    ip++;
    narg--;
    break;
   case 211:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_fcntl_cmd, ip[0]);
    if (sysdecode_fcntl_arg_p(ip[0])) {
     putchar(',');
     if (ip[0] == F_SETFL)
      print_mask_arg(
          sysdecode_fcntl_fileflags,
       ip[1]);
     else
      sysdecode_fcntl_arg(stdout,
          ip[0], ip[1],
          decimal ? 10 : 16);
    }
    ip += 2;
    narg -= 2;
    break;
   case 142: {
    int sockdomain;
    putchar('(');
    sockdomain = *ip;
    print_integer_arg(sysdecode_socketdomain,
        sockdomain);
    ip++;
    narg--;
    putchar(',');
    print_mask_arg(sysdecode_socket_type, *ip);
    ip++;
    narg--;
    if (sockdomain == PF_INET ||
        sockdomain == PF_INET6) {
     putchar(',');
     print_integer_arg(sysdecode_ipproto,
         *ip);
     ip++;
     narg--;
    }
    c = ',';
    break;
   }
   case 148:
   case 198: {
    const char *str;

    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg_valid(sysdecode_sockopt_level,
        *ip);
    str = sysdecode_sockopt_name(ip[0], ip[1]);
    if (str != ((void*)0)) {
     printf(",%s", str);
     ip++;
     narg--;
    }
    ip++;
    narg--;
    break;
   }

   case 207:
    print_number(ip, narg, c);

    print_number(ip, narg, c);
    print_number64(first, ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_whence, *ip);
    ip++;
    narg--;
    break;

   case 188:
    print_number(ip, narg, c);
    print_number64(first, ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_whence, *ip);
    ip++;
    narg--;
    break;
   case 210:
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_flock_operation, *ip);
    ip++;
    narg--;
    break;
   case 183:
   case 182:
   case 185:
   case 184:
    print_number(ip, narg, c);
    putchar(',');
    decode_filemode(*ip);
    ip++;
    narg--;
    break;
   case 145:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_shutdown_how, *ip);
    ip++;
    narg--;
    break;
   case 141:
    putchar('(');
    print_integer_arg(sysdecode_socketdomain, *ip);
    ip++;
    narg--;
    putchar(',');
    print_mask_arg(sysdecode_socket_type, *ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 200:
   case 149:
    putchar('(');
    print_integer_arg(sysdecode_rlimit, *ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 199:
    putchar('(');
    print_integer_arg(sysdecode_getrusage_who, *ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 166:
    print_number(ip, narg, c);
    putchar(',');
    if (!sysdecode_quotactl_cmd(stdout, *ip)) {
     if (decimal)
      printf("<invalid=%d>", (int)*ip);
     else
      printf("<invalid=%#x>",
          (int)*ip);
    }
    ip++;
    narg--;
    c = ',';
    break;
   case 174:
    putchar('(');
    print_integer_arg(sysdecode_nfssvc_flags, *ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 159:
   case 158:
    putchar('(');
    print_integer_arg(sysdecode_rtprio_function,
        *ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 227:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_semctl_cmd, *ip);
    ip++;
    narg--;
    break;
   case 154:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_semget_flags, *ip);
    ip++;
    narg--;
    break;
   case 176:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_msgctl_cmd, *ip);
    ip++;
    narg--;
    break;
   case 147:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_shmat_flags, *ip);
    ip++;
    narg--;
    break;
   case 146:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_shmctl_cmd, *ip);
    ip++;
    narg--;
    break;

   case 208:
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_open_flags, ip[0]);
    putchar(',');
    decode_filemode(ip[1]);
    ip += 2;
    narg -= 2;
    break;

   case 186:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_minherit_inherit,
        *ip);
    ip++;
    narg--;
    break;
   case 160:
    putchar('(');
    print_mask_arg(sysdecode_rfork_flags, *ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 190:
    putchar('(');
    print_integer_arg(sysdecode_lio_listio_mode,
        *ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 180:
    putchar('(');
    print_mask_arg(sysdecode_mlockall_flags, *ip);
    ip++;
    narg--;
    break;
   case 155:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_scheduler_policy,
        *ip);
    ip++;
    narg--;
    break;
   case 157:
   case 156:
    putchar('(');
    print_integer_arg(sysdecode_scheduler_policy,
        *ip);
    ip++;
    narg--;
    break;
   case 153:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_sendfile_flags, *ip);
    ip++;
    narg--;
    break;
   case 195:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_kldsym_cmd, *ip);
    ip++;
    narg--;
    break;
   case 143:
    putchar('(');
    print_integer_arg(sysdecode_sigprocmask_how,
        *ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 232:
   case 229:
   case 233:
   case 230:
   case 235:
   case 236:
   case 238:
   case 239:
   case 231:
   case 228:
   case 234:
   case 237:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_acltype, *ip);
    ip++;
    narg--;
    break;
   case 144:
    putchar('(');
    print_signal(*ip);
    ip++;
    narg--;
    c = ',';
    break;
   case 217:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_extattrnamespace,
        *ip);
    ip++;
    narg--;
    break;
   case 173:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_mount_flags, *ip);
    ip++;
    narg--;
    break;
   case 138:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    putchar(',');
    print_mask_arg(sysdecode_thr_create_flags, *ip);
    ip++;
    narg--;
    break;
   case 137:
    print_number(ip, narg, c);
    putchar(',');
    print_signal(*ip);
    ip++;
    narg--;
    break;
   case 194:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_kldunload_flags,
        *ip);
    ip++;
    narg--;
    break;
   case 191:
   case 161:
   case 140:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg_valid(sysdecode_atfd, *ip);
    ip++;
    narg--;
    print_number(ip, narg, c);
    break;
   case 223:
    print_number(ip, narg, c);
    putchar(',');
    arg = *ip;
    ip++;
    narg--;
    print_mask_arg32(sysdecode_cap_fcntlrights, arg);
    break;
   case 169:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    (void)putchar(',');
    print_integer_arg(sysdecode_fadvice, *ip);
    ip++;
    narg--;
    break;
   case 168:
    putchar('(');
    print_integer_arg(sysdecode_idtype, *ip);
    c = ',';
    ip++;
    narg--;
    print_number64(first, ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_procctl_cmd, *ip);
    ip++;
    narg--;
    break;
   case 226:
    print_number(ip, narg, c);
    putchar(',');
    print_integer_arg(sysdecode_umtx_op, *ip);
    switch (*ip) {
    case 129:
     ip++;
     narg--;
     putchar(',');
     print_mask_argul(
         sysdecode_umtx_cvwait_flags, *ip);
     break;
    case 128:
     ip++;
     narg--;
     putchar(',');
     print_mask_argul(
         sysdecode_umtx_rwlock_flags, *ip);
     break;
    }
    ip++;
    narg--;
    break;
   case 204:
   case 136:
    print_number(ip, narg, c);
    print_number64(first, ip, narg, c);
    break;
   case 212:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    break;
   case 205:
   case 132:
    print_number(ip, narg, c);
    print_number(ip, narg, c);
    break;
   case 134:
    print_number(ip, narg, c);
    break;
   case 139:
    putchar('(');
    print_integer_arg(sysdecode_sysarch_number, *ip);
    ip++;
    narg--;
    c = ',';
    break;
   }
   switch (ktr->ktr_code) {
   case 221:
   case 212:
   case 216:
   case 213:
   case 205:
   case 191:
   case 134:
   case 132:
    putchar(',');
    print_mask_arg0(sysdecode_atflags, *ip);
    ip++;
    narg--;
    break;
   }
  }
  while (narg > 0) {
   print_number(ip, narg, c);
  }
  putchar(')');
 }
 putchar('\n');
}
