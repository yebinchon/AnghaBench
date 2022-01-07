; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrsyscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktr_syscall = type { i32, i32, i32* }

@fancy = common dso_local global i64 0, align 8
@SV_ABI_MASK = common dso_local global i32 0, align 4
@SV_ABI_FREEBSD = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4
@sysdecode_atfd = common dso_local global i32 0, align 4
@sysdecode_ptrace_request = common dso_local global i32 0, align 4
@sysdecode_access_mode = common dso_local global i32 0, align 4
@sysdecode_open_flags = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@sysdecode_wait4_options = common dso_local global i32 0, align 4
@sysdecode_idtype = common dso_local global i32 0, align 4
@sysdecode_wait6_options = common dso_local global i32 0, align 4
@sysdecode_getfsstat_mode = common dso_local global i32 0, align 4
@sysdecode_mount_flags = common dso_local global i32 0, align 4
@sysdecode_msg_flags = common dso_local global i32 0, align 4
@sysdecode_reboot_howto = common dso_local global i32 0, align 4
@sysdecode_msync_flags = common dso_local global i32 0, align 4
@sysdecode_mmap_prot = common dso_local global i32 0, align 4
@sysdecode_mmap_flags = common dso_local global i32 0, align 4
@sysdecode_madvice = common dso_local global i32 0, align 4
@sysdecode_pathconf_name = common dso_local global i32 0, align 4
@sysdecode_prio_which = common dso_local global i32 0, align 4
@sysdecode_fcntl_cmd = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@sysdecode_fcntl_fileflags = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@decimal = common dso_local global i32 0, align 4
@sysdecode_socketdomain = common dso_local global i32 0, align 4
@sysdecode_socket_type = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@sysdecode_ipproto = common dso_local global i32 0, align 4
@sysdecode_sockopt_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@sysdecode_whence = common dso_local global i32 0, align 4
@sysdecode_flock_operation = common dso_local global i32 0, align 4
@sysdecode_shutdown_how = common dso_local global i32 0, align 4
@sysdecode_rlimit = common dso_local global i32 0, align 4
@sysdecode_getrusage_who = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"<invalid=%d>\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"<invalid=%#x>\00", align 1
@sysdecode_nfssvc_flags = common dso_local global i32 0, align 4
@sysdecode_rtprio_function = common dso_local global i32 0, align 4
@sysdecode_semctl_cmd = common dso_local global i32 0, align 4
@sysdecode_semget_flags = common dso_local global i32 0, align 4
@sysdecode_msgctl_cmd = common dso_local global i32 0, align 4
@sysdecode_shmat_flags = common dso_local global i32 0, align 4
@sysdecode_shmctl_cmd = common dso_local global i32 0, align 4
@sysdecode_minherit_inherit = common dso_local global i32 0, align 4
@sysdecode_rfork_flags = common dso_local global i32 0, align 4
@sysdecode_lio_listio_mode = common dso_local global i32 0, align 4
@sysdecode_mlockall_flags = common dso_local global i32 0, align 4
@sysdecode_scheduler_policy = common dso_local global i32 0, align 4
@sysdecode_sendfile_flags = common dso_local global i32 0, align 4
@sysdecode_kldsym_cmd = common dso_local global i32 0, align 4
@sysdecode_sigprocmask_how = common dso_local global i32 0, align 4
@sysdecode_acltype = common dso_local global i32 0, align 4
@sysdecode_extattrnamespace = common dso_local global i32 0, align 4
@sysdecode_thr_create_flags = common dso_local global i32 0, align 4
@sysdecode_kldunload_flags = common dso_local global i32 0, align 4
@sysdecode_cap_fcntlrights = common dso_local global i32 0, align 4
@sysdecode_fadvice = common dso_local global i32 0, align 4
@sysdecode_procctl_cmd = common dso_local global i32 0, align 4
@sysdecode_umtx_op = common dso_local global i32 0, align 4
@sysdecode_umtx_cvwait_flags = common dso_local global i32 0, align 4
@sysdecode_umtx_rwlock_flags = common dso_local global i32 0, align 4
@sysdecode_sysarch_number = common dso_local global i32 0, align 4
@sysdecode_atflags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktrsyscall(%struct.ktr_syscall* %0, i32 %1) #0 {
  %3 = alloca %struct.ktr_syscall*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ktr_syscall* %0, %struct.ktr_syscall** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ktr_syscall*, %struct.ktr_syscall** %3, align 8
  %15 = getelementptr inbounds %struct.ktr_syscall, %struct.ktr_syscall* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ktr_syscall*, %struct.ktr_syscall** %3, align 8
  %18 = getelementptr inbounds %struct.ktr_syscall, %struct.ktr_syscall* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @syscallname(i32 %19, i32 %20)
  %22 = load %struct.ktr_syscall*, %struct.ktr_syscall** %3, align 8
  %23 = getelementptr inbounds %struct.ktr_syscall, %struct.ktr_syscall* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32* %25, i32** %7, align 8
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %1279

28:                                               ; preds = %2
  store i8 40, i8* %11, align 1
  %29 = load i64, i64* @fancy, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %1268

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SV_ABI_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @SV_ABI_FREEBSD, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %1268

40:                                               ; preds = %34, %31
  store i32 0, i32* %9, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SV_ILP32, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 2, i32* %10, align 4
  br label %47

46:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load %struct.ktr_syscall*, %struct.ktr_syscall** %3, align 8
  %49 = getelementptr inbounds %struct.ktr_syscall, %struct.ktr_syscall* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %61 [
    i32 224, label %51
    i32 221, label %51
    i32 219, label %51
    i32 216, label %51
    i32 213, label %51
    i32 212, label %51
    i32 205, label %51
    i32 203, label %51
    i32 191, label %51
    i32 184, label %51
    i32 182, label %51
    i32 181, label %51
    i32 171, label %51
    i32 165, label %51
    i32 161, label %51
    i32 134, label %51
    i32 132, label %51
  ]

51:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47
  %52 = call i32 @putchar(i8 signext 40)
  %53 = load i32, i32* @sysdecode_atfd, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @print_integer_arg_valid(i32 %53, i32 %55)
  store i8 44, i8* %11, align 1
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %47, %51
  %62 = load %struct.ktr_syscall*, %struct.ktr_syscall** %3, align 8
  %63 = getelementptr inbounds %struct.ktr_syscall, %struct.ktr_syscall* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %1253 [
    i32 197, label %65
    i32 167, label %79
    i32 225, label %89
    i32 218, label %89
    i32 216, label %89
    i32 172, label %103
    i32 171, label %103
    i32 131, label %132
    i32 130, label %150
    i32 220, label %178
    i32 214, label %178
    i32 192, label %178
    i32 213, label %178
    i32 181, label %191
    i32 202, label %204
    i32 178, label %222
    i32 133, label %240
    i32 162, label %254
    i32 152, label %254
    i32 163, label %272
    i32 151, label %272
    i32 222, label %294
    i32 221, label %294
    i32 215, label %294
    i32 193, label %294
    i32 196, label %307
    i32 164, label %320
    i32 135, label %330
    i32 175, label %339
    i32 206, label %357
    i32 179, label %384
    i32 177, label %411
    i32 187, label %429
    i32 170, label %447
    i32 189, label %447
    i32 209, label %447
    i32 201, label %461
    i32 150, label %461
    i32 211, label %471
    i32 142, label %519
    i32 148, label %557
    i32 198, label %557
    i32 207, label %588
    i32 188, label %611
    i32 210, label %630
    i32 183, label %644
    i32 182, label %644
    i32 185, label %644
    i32 184, label %644
    i32 145, label %657
    i32 141, label %671
    i32 200, label %690
    i32 149, label %690
    i32 199, label %700
    i32 166, label %710
    i32 174, label %738
    i32 159, label %748
    i32 158, label %748
    i32 227, label %758
    i32 154, label %776
    i32 176, label %794
    i32 147, label %808
    i32 146, label %826
    i32 208, label %840
    i32 186, label %860
    i32 160, label %878
    i32 190, label %888
    i32 180, label %898
    i32 155, label %908
    i32 157, label %922
    i32 156, label %922
    i32 153, label %932
    i32 195, label %966
    i32 143, label %980
    i32 232, label %990
    i32 229, label %990
    i32 233, label %990
    i32 230, label %990
    i32 235, label %990
    i32 236, label %990
    i32 238, label %990
    i32 239, label %990
    i32 231, label %990
    i32 228, label %990
    i32 234, label %990
    i32 237, label %990
    i32 144, label %1004
    i32 217, label %1013
    i32 173, label %1027
    i32 138, label %1045
    i32 137, label %1063
    i32 194, label %1076
    i32 191, label %1090
    i32 161, label %1090
    i32 140, label %1090
    i32 223, label %1108
    i32 169, label %1123
    i32 168, label %1145
    i32 226, label %1169
    i32 204, label %1206
    i32 136, label %1206
    i32 212, label %1216
    i32 205, label %1229
    i32 132, label %1229
    i32 134, label %1238
    i32 139, label %1243
  ]

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i8, i8* %11, align 1
  %69 = call i32 @print_number(i32* %66, i32 %67, i8 signext %68)
  %70 = load i8, i8* %11, align 1
  %71 = call i32 @putchar(i8 signext %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ioctlname(i32 %73)
  store i8 44, i8* %11, align 1
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %5, align 4
  br label %1253

79:                                               ; preds = %61
  %80 = call i32 @putchar(i8 signext 40)
  %81 = load i32, i32* @sysdecode_ptrace_request, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @print_integer_arg(i32 %81, i32 %83)
  store i8 44, i8* %11, align 1
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %5, align 4
  br label %1253

89:                                               ; preds = %61, %61, %61
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i8, i8* %11, align 1
  %93 = call i32 @print_number(i32* %90, i32 %91, i8 signext %92)
  %94 = call i32 @putchar(i8 signext 44)
  %95 = load i32, i32* @sysdecode_access_mode, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @print_mask_arg(i32 %95, i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %6, align 8
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %5, align 4
  br label %1253

103:                                              ; preds = %61, %61
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i8, i8* %11, align 1
  %107 = call i32 @print_number(i32* %104, i32 %105, i8 signext %106)
  %108 = call i32 @putchar(i8 signext 44)
  %109 = load i32, i32* @sysdecode_open_flags, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @print_mask_arg(i32 %109, i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @O_CREAT, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @O_CREAT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %103
  %122 = call i32 @putchar(i8 signext 44)
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @decode_filemode(i32 %125)
  br label %127

127:                                              ; preds = %121, %103
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32* %129, i32** %6, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %130, 2
  store i32 %131, i32* %5, align 4
  br label %1253

132:                                              ; preds = %61
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i8, i8* %11, align 1
  %136 = call i32 @print_number(i32* %133, i32 %134, i8 signext %135)
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load i8, i8* %11, align 1
  %140 = call i32 @print_number(i32* %137, i32 %138, i8 signext %139)
  %141 = call i32 @putchar(i8 signext 44)
  %142 = load i32, i32* @sysdecode_wait4_options, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @print_mask_arg0(i32 %142, i32 %144)
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %6, align 8
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %5, align 4
  br label %1253

150:                                              ; preds = %61
  %151 = call i32 @putchar(i8 signext 40)
  %152 = load i32, i32* @sysdecode_idtype, align 4
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @print_integer_arg(i32 %152, i32 %154)
  store i8 44, i8* %11, align 1
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %6, align 8
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %5, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i8, i8* %11, align 1
  %164 = call i32 @print_number64(i32* %160, i32* %161, i32 %162, i8 signext %163)
  %165 = load i32*, i32** %6, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load i8, i8* %11, align 1
  %168 = call i32 @print_number(i32* %165, i32 %166, i8 signext %167)
  %169 = call i32 @putchar(i8 signext 44)
  %170 = load i32, i32* @sysdecode_wait6_options, align 4
  %171 = load i32*, i32** %6, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @print_mask_arg(i32 %170, i32 %172)
  %174 = load i32*, i32** %6, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %6, align 8
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %5, align 4
  br label %1253

178:                                              ; preds = %61, %61, %61, %61
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load i8, i8* %11, align 1
  %182 = call i32 @print_number(i32* %179, i32 %180, i8 signext %181)
  %183 = call i32 @putchar(i8 signext 44)
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @decode_filemode(i32 %185)
  %187 = load i32*, i32** %6, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %6, align 8
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %5, align 4
  br label %1253

191:                                              ; preds = %61
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load i8, i8* %11, align 1
  %195 = call i32 @print_number(i32* %192, i32 %193, i8 signext %194)
  %196 = call i32 @putchar(i8 signext 44)
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @decode_filemode(i32 %198)
  %200 = load i32*, i32** %6, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %6, align 8
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %5, align 4
  br label %1253

204:                                              ; preds = %61
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i8, i8* %11, align 1
  %208 = call i32 @print_number(i32* %205, i32 %206, i8 signext %207)
  %209 = load i32*, i32** %6, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load i8, i8* %11, align 1
  %212 = call i32 @print_number(i32* %209, i32 %210, i8 signext %211)
  %213 = call i32 @putchar(i8 signext 44)
  %214 = load i32, i32* @sysdecode_getfsstat_mode, align 4
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @print_integer_arg(i32 %214, i32 %216)
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %6, align 8
  %220 = load i32, i32* %5, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %5, align 4
  br label %1253

222:                                              ; preds = %61
  %223 = load i32*, i32** %6, align 8
  %224 = load i32, i32* %5, align 4
  %225 = load i8, i8* %11, align 1
  %226 = call i32 @print_number(i32* %223, i32 %224, i8 signext %225)
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* %5, align 4
  %229 = load i8, i8* %11, align 1
  %230 = call i32 @print_number(i32* %227, i32 %228, i8 signext %229)
  %231 = call i32 @putchar(i8 signext 44)
  %232 = load i32, i32* @sysdecode_mount_flags, align 4
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @print_mask_arg(i32 %232, i32 %234)
  %236 = load i32*, i32** %6, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %6, align 8
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %5, align 4
  br label %1253

240:                                              ; preds = %61
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* %5, align 4
  %243 = load i8, i8* %11, align 1
  %244 = call i32 @print_number(i32* %241, i32 %242, i8 signext %243)
  %245 = call i32 @putchar(i8 signext 44)
  %246 = load i32, i32* @sysdecode_mount_flags, align 4
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @print_mask_arg(i32 %246, i32 %248)
  %250 = load i32*, i32** %6, align 8
  %251 = getelementptr inbounds i32, i32* %250, i32 1
  store i32* %251, i32** %6, align 8
  %252 = load i32, i32* %5, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %5, align 4
  br label %1253

254:                                              ; preds = %61, %61
  %255 = load i32*, i32** %6, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load i8, i8* %11, align 1
  %258 = call i32 @print_number(i32* %255, i32 %256, i8 signext %257)
  %259 = load i32*, i32** %6, align 8
  %260 = load i32, i32* %5, align 4
  %261 = load i8, i8* %11, align 1
  %262 = call i32 @print_number(i32* %259, i32 %260, i8 signext %261)
  %263 = call i32 @putchar(i8 signext 44)
  %264 = load i32, i32* @sysdecode_msg_flags, align 4
  %265 = load i32*, i32** %6, align 8
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @print_mask_arg0(i32 %264, i32 %266)
  %268 = load i32*, i32** %6, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %6, align 8
  %270 = load i32, i32* %5, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %5, align 4
  br label %1253

272:                                              ; preds = %61, %61
  %273 = load i32*, i32** %6, align 8
  %274 = load i32, i32* %5, align 4
  %275 = load i8, i8* %11, align 1
  %276 = call i32 @print_number(i32* %273, i32 %274, i8 signext %275)
  %277 = load i32*, i32** %6, align 8
  %278 = load i32, i32* %5, align 4
  %279 = load i8, i8* %11, align 1
  %280 = call i32 @print_number(i32* %277, i32 %278, i8 signext %279)
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %5, align 4
  %283 = load i8, i8* %11, align 1
  %284 = call i32 @print_number(i32* %281, i32 %282, i8 signext %283)
  %285 = call i32 @putchar(i8 signext 44)
  %286 = load i32, i32* @sysdecode_msg_flags, align 4
  %287 = load i32*, i32** %6, align 8
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @print_mask_arg0(i32 %286, i32 %288)
  %290 = load i32*, i32** %6, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %6, align 8
  %292 = load i32, i32* %5, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %5, align 4
  br label %1253

294:                                              ; preds = %61, %61, %61, %61
  %295 = load i32*, i32** %6, align 8
  %296 = load i32, i32* %5, align 4
  %297 = load i8, i8* %11, align 1
  %298 = call i32 @print_number(i32* %295, i32 %296, i8 signext %297)
  %299 = call i32 @putchar(i8 signext 44)
  %300 = load i32*, i32** %6, align 8
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @decode_fileflags(i32 %301)
  %303 = load i32*, i32** %6, align 8
  %304 = getelementptr inbounds i32, i32* %303, i32 1
  store i32* %304, i32** %6, align 8
  %305 = load i32, i32* %5, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %5, align 4
  br label %1253

307:                                              ; preds = %61
  %308 = load i32*, i32** %6, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load i8, i8* %11, align 1
  %311 = call i32 @print_number(i32* %308, i32 %309, i8 signext %310)
  %312 = call i32 @putchar(i8 signext 44)
  %313 = load i32*, i32** %6, align 8
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @print_signal(i32 %314)
  %316 = load i32*, i32** %6, align 8
  %317 = getelementptr inbounds i32, i32* %316, i32 1
  store i32* %317, i32** %6, align 8
  %318 = load i32, i32* %5, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %5, align 4
  br label %1253

320:                                              ; preds = %61
  %321 = call i32 @putchar(i8 signext 40)
  %322 = load i32, i32* @sysdecode_reboot_howto, align 4
  %323 = load i32*, i32** %6, align 8
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @print_mask_arg(i32 %322, i32 %324)
  %326 = load i32*, i32** %6, align 8
  %327 = getelementptr inbounds i32, i32* %326, i32 1
  store i32* %327, i32** %6, align 8
  %328 = load i32, i32* %5, align 4
  %329 = add nsw i32 %328, -1
  store i32 %329, i32* %5, align 4
  br label %1253

330:                                              ; preds = %61
  %331 = call i32 @putchar(i8 signext 40)
  %332 = load i32*, i32** %6, align 8
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @decode_filemode(i32 %333)
  %335 = load i32*, i32** %6, align 8
  %336 = getelementptr inbounds i32, i32* %335, i32 1
  store i32* %336, i32** %6, align 8
  %337 = load i32, i32* %5, align 4
  %338 = add nsw i32 %337, -1
  store i32 %338, i32* %5, align 4
  br label %1253

339:                                              ; preds = %61
  %340 = load i32*, i32** %6, align 8
  %341 = load i32, i32* %5, align 4
  %342 = load i8, i8* %11, align 1
  %343 = call i32 @print_number(i32* %340, i32 %341, i8 signext %342)
  %344 = load i32*, i32** %6, align 8
  %345 = load i32, i32* %5, align 4
  %346 = load i8, i8* %11, align 1
  %347 = call i32 @print_number(i32* %344, i32 %345, i8 signext %346)
  %348 = call i32 @putchar(i8 signext 44)
  %349 = load i32, i32* @sysdecode_msync_flags, align 4
  %350 = load i32*, i32** %6, align 8
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @print_mask_arg(i32 %349, i32 %351)
  %353 = load i32*, i32** %6, align 8
  %354 = getelementptr inbounds i32, i32* %353, i32 1
  store i32* %354, i32** %6, align 8
  %355 = load i32, i32* %5, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %5, align 4
  br label %1253

357:                                              ; preds = %61
  %358 = load i32*, i32** %6, align 8
  %359 = load i32, i32* %5, align 4
  %360 = load i8, i8* %11, align 1
  %361 = call i32 @print_number(i32* %358, i32 %359, i8 signext %360)
  %362 = load i32*, i32** %6, align 8
  %363 = load i32, i32* %5, align 4
  %364 = load i8, i8* %11, align 1
  %365 = call i32 @print_number(i32* %362, i32 %363, i8 signext %364)
  %366 = call i32 @putchar(i8 signext 44)
  %367 = load i32, i32* @sysdecode_mmap_prot, align 4
  %368 = load i32*, i32** %6, align 8
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @print_mask_arg(i32 %367, i32 %369)
  %371 = call i32 @putchar(i8 signext 44)
  %372 = load i32*, i32** %6, align 8
  %373 = getelementptr inbounds i32, i32* %372, i32 1
  store i32* %373, i32** %6, align 8
  %374 = load i32, i32* %5, align 4
  %375 = add nsw i32 %374, -1
  store i32 %375, i32* %5, align 4
  %376 = load i32, i32* @sysdecode_mmap_flags, align 4
  %377 = load i32*, i32** %6, align 8
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @print_mask_arg(i32 %376, i32 %378)
  %380 = load i32*, i32** %6, align 8
  %381 = getelementptr inbounds i32, i32* %380, i32 1
  store i32* %381, i32** %6, align 8
  %382 = load i32, i32* %5, align 4
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %5, align 4
  br label %1253

384:                                              ; preds = %61
  %385 = load i32*, i32** %6, align 8
  %386 = load i32, i32* %5, align 4
  %387 = load i8, i8* %11, align 1
  %388 = call i32 @print_number(i32* %385, i32 %386, i8 signext %387)
  %389 = load i32*, i32** %6, align 8
  %390 = load i32, i32* %5, align 4
  %391 = load i8, i8* %11, align 1
  %392 = call i32 @print_number(i32* %389, i32 %390, i8 signext %391)
  %393 = call i32 @putchar(i8 signext 44)
  %394 = load i32, i32* @sysdecode_mmap_prot, align 4
  %395 = load i32*, i32** %6, align 8
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @print_mask_arg(i32 %394, i32 %396)
  %398 = call i32 @putchar(i8 signext 44)
  %399 = load i32*, i32** %6, align 8
  %400 = getelementptr inbounds i32, i32* %399, i32 1
  store i32* %400, i32** %6, align 8
  %401 = load i32, i32* %5, align 4
  %402 = add nsw i32 %401, -1
  store i32 %402, i32* %5, align 4
  %403 = load i32, i32* @sysdecode_mmap_flags, align 4
  %404 = load i32*, i32** %6, align 8
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @print_mask_arg(i32 %403, i32 %405)
  %407 = load i32*, i32** %6, align 8
  %408 = getelementptr inbounds i32, i32* %407, i32 1
  store i32* %408, i32** %6, align 8
  %409 = load i32, i32* %5, align 4
  %410 = add nsw i32 %409, -1
  store i32 %410, i32* %5, align 4
  br label %1253

411:                                              ; preds = %61
  %412 = load i32*, i32** %6, align 8
  %413 = load i32, i32* %5, align 4
  %414 = load i8, i8* %11, align 1
  %415 = call i32 @print_number(i32* %412, i32 %413, i8 signext %414)
  %416 = load i32*, i32** %6, align 8
  %417 = load i32, i32* %5, align 4
  %418 = load i8, i8* %11, align 1
  %419 = call i32 @print_number(i32* %416, i32 %417, i8 signext %418)
  %420 = call i32 @putchar(i8 signext 44)
  %421 = load i32, i32* @sysdecode_mmap_prot, align 4
  %422 = load i32*, i32** %6, align 8
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @print_mask_arg(i32 %421, i32 %423)
  %425 = load i32*, i32** %6, align 8
  %426 = getelementptr inbounds i32, i32* %425, i32 1
  store i32* %426, i32** %6, align 8
  %427 = load i32, i32* %5, align 4
  %428 = add nsw i32 %427, -1
  store i32 %428, i32* %5, align 4
  br label %1253

429:                                              ; preds = %61
  %430 = load i32*, i32** %6, align 8
  %431 = load i32, i32* %5, align 4
  %432 = load i8, i8* %11, align 1
  %433 = call i32 @print_number(i32* %430, i32 %431, i8 signext %432)
  %434 = load i32*, i32** %6, align 8
  %435 = load i32, i32* %5, align 4
  %436 = load i8, i8* %11, align 1
  %437 = call i32 @print_number(i32* %434, i32 %435, i8 signext %436)
  %438 = call i32 @putchar(i8 signext 44)
  %439 = load i32, i32* @sysdecode_madvice, align 4
  %440 = load i32*, i32** %6, align 8
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @print_integer_arg(i32 %439, i32 %441)
  %443 = load i32*, i32** %6, align 8
  %444 = getelementptr inbounds i32, i32* %443, i32 1
  store i32* %444, i32** %6, align 8
  %445 = load i32, i32* %5, align 4
  %446 = add nsw i32 %445, -1
  store i32 %446, i32* %5, align 4
  br label %1253

447:                                              ; preds = %61, %61, %61
  %448 = load i32*, i32** %6, align 8
  %449 = load i32, i32* %5, align 4
  %450 = load i8, i8* %11, align 1
  %451 = call i32 @print_number(i32* %448, i32 %449, i8 signext %450)
  %452 = call i32 @putchar(i8 signext 44)
  %453 = load i32, i32* @sysdecode_pathconf_name, align 4
  %454 = load i32*, i32** %6, align 8
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @print_integer_arg(i32 %453, i32 %455)
  %457 = load i32*, i32** %6, align 8
  %458 = getelementptr inbounds i32, i32* %457, i32 1
  store i32* %458, i32** %6, align 8
  %459 = load i32, i32* %5, align 4
  %460 = add nsw i32 %459, -1
  store i32 %460, i32* %5, align 4
  br label %1253

461:                                              ; preds = %61, %61
  %462 = call i32 @putchar(i8 signext 40)
  %463 = load i32, i32* @sysdecode_prio_which, align 4
  %464 = load i32*, i32** %6, align 8
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @print_integer_arg(i32 %463, i32 %465)
  store i8 44, i8* %11, align 1
  %467 = load i32*, i32** %6, align 8
  %468 = getelementptr inbounds i32, i32* %467, i32 1
  store i32* %468, i32** %6, align 8
  %469 = load i32, i32* %5, align 4
  %470 = add nsw i32 %469, -1
  store i32 %470, i32* %5, align 4
  br label %1253

471:                                              ; preds = %61
  %472 = load i32*, i32** %6, align 8
  %473 = load i32, i32* %5, align 4
  %474 = load i8, i8* %11, align 1
  %475 = call i32 @print_number(i32* %472, i32 %473, i8 signext %474)
  %476 = call i32 @putchar(i8 signext 44)
  %477 = load i32, i32* @sysdecode_fcntl_cmd, align 4
  %478 = load i32*, i32** %6, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 0
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @print_integer_arg(i32 %477, i32 %480)
  %482 = load i32*, i32** %6, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 0
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @sysdecode_fcntl_arg_p(i32 %484)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %514

487:                                              ; preds = %471
  %488 = call i32 @putchar(i8 signext 44)
  %489 = load i32*, i32** %6, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 0
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* @F_SETFL, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %500

494:                                              ; preds = %487
  %495 = load i32, i32* @sysdecode_fcntl_fileflags, align 4
  %496 = load i32*, i32** %6, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 1
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @print_mask_arg(i32 %495, i32 %498)
  br label %513

500:                                              ; preds = %487
  %501 = load i32, i32* @stdout, align 4
  %502 = load i32*, i32** %6, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 0
  %504 = load i32, i32* %503, align 4
  %505 = load i32*, i32** %6, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 1
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @decimal, align 4
  %509 = icmp ne i32 %508, 0
  %510 = zext i1 %509 to i64
  %511 = select i1 %509, i32 10, i32 16
  %512 = call i32 @sysdecode_fcntl_arg(i32 %501, i32 %504, i32 %507, i32 %511)
  br label %513

513:                                              ; preds = %500, %494
  br label %514

514:                                              ; preds = %513, %471
  %515 = load i32*, i32** %6, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 2
  store i32* %516, i32** %6, align 8
  %517 = load i32, i32* %5, align 4
  %518 = sub nsw i32 %517, 2
  store i32 %518, i32* %5, align 4
  br label %1253

519:                                              ; preds = %61
  %520 = call i32 @putchar(i8 signext 40)
  %521 = load i32*, i32** %6, align 8
  %522 = load i32, i32* %521, align 4
  store i32 %522, i32* %12, align 4
  %523 = load i32, i32* @sysdecode_socketdomain, align 4
  %524 = load i32, i32* %12, align 4
  %525 = call i32 @print_integer_arg(i32 %523, i32 %524)
  %526 = load i32*, i32** %6, align 8
  %527 = getelementptr inbounds i32, i32* %526, i32 1
  store i32* %527, i32** %6, align 8
  %528 = load i32, i32* %5, align 4
  %529 = add nsw i32 %528, -1
  store i32 %529, i32* %5, align 4
  %530 = call i32 @putchar(i8 signext 44)
  %531 = load i32, i32* @sysdecode_socket_type, align 4
  %532 = load i32*, i32** %6, align 8
  %533 = load i32, i32* %532, align 4
  %534 = call i32 @print_mask_arg(i32 %531, i32 %533)
  %535 = load i32*, i32** %6, align 8
  %536 = getelementptr inbounds i32, i32* %535, i32 1
  store i32* %536, i32** %6, align 8
  %537 = load i32, i32* %5, align 4
  %538 = add nsw i32 %537, -1
  store i32 %538, i32* %5, align 4
  %539 = load i32, i32* %12, align 4
  %540 = load i32, i32* @PF_INET, align 4
  %541 = icmp eq i32 %539, %540
  br i1 %541, label %546, label %542

542:                                              ; preds = %519
  %543 = load i32, i32* %12, align 4
  %544 = load i32, i32* @PF_INET6, align 4
  %545 = icmp eq i32 %543, %544
  br i1 %545, label %546, label %556

546:                                              ; preds = %542, %519
  %547 = call i32 @putchar(i8 signext 44)
  %548 = load i32, i32* @sysdecode_ipproto, align 4
  %549 = load i32*, i32** %6, align 8
  %550 = load i32, i32* %549, align 4
  %551 = call i32 @print_integer_arg(i32 %548, i32 %550)
  %552 = load i32*, i32** %6, align 8
  %553 = getelementptr inbounds i32, i32* %552, i32 1
  store i32* %553, i32** %6, align 8
  %554 = load i32, i32* %5, align 4
  %555 = add nsw i32 %554, -1
  store i32 %555, i32* %5, align 4
  br label %556

556:                                              ; preds = %546, %542
  store i8 44, i8* %11, align 1
  br label %1253

557:                                              ; preds = %61, %61
  %558 = load i32*, i32** %6, align 8
  %559 = load i32, i32* %5, align 4
  %560 = load i8, i8* %11, align 1
  %561 = call i32 @print_number(i32* %558, i32 %559, i8 signext %560)
  %562 = call i32 @putchar(i8 signext 44)
  %563 = load i32, i32* @sysdecode_sockopt_level, align 4
  %564 = load i32*, i32** %6, align 8
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @print_integer_arg_valid(i32 %563, i32 %565)
  %567 = load i32*, i32** %6, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 0
  %569 = load i32, i32* %568, align 4
  %570 = load i32*, i32** %6, align 8
  %571 = getelementptr inbounds i32, i32* %570, i64 1
  %572 = load i32, i32* %571, align 4
  %573 = call i8* @sysdecode_sockopt_name(i32 %569, i32 %572)
  store i8* %573, i8** %13, align 8
  %574 = load i8*, i8** %13, align 8
  %575 = icmp ne i8* %574, null
  br i1 %575, label %576, label %583

576:                                              ; preds = %557
  %577 = load i8*, i8** %13, align 8
  %578 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %577)
  %579 = load i32*, i32** %6, align 8
  %580 = getelementptr inbounds i32, i32* %579, i32 1
  store i32* %580, i32** %6, align 8
  %581 = load i32, i32* %5, align 4
  %582 = add nsw i32 %581, -1
  store i32 %582, i32* %5, align 4
  br label %583

583:                                              ; preds = %576, %557
  %584 = load i32*, i32** %6, align 8
  %585 = getelementptr inbounds i32, i32* %584, i32 1
  store i32* %585, i32** %6, align 8
  %586 = load i32, i32* %5, align 4
  %587 = add nsw i32 %586, -1
  store i32 %587, i32* %5, align 4
  br label %1253

588:                                              ; preds = %61
  %589 = load i32*, i32** %6, align 8
  %590 = load i32, i32* %5, align 4
  %591 = load i8, i8* %11, align 1
  %592 = call i32 @print_number(i32* %589, i32 %590, i8 signext %591)
  %593 = load i32*, i32** %6, align 8
  %594 = load i32, i32* %5, align 4
  %595 = load i8, i8* %11, align 1
  %596 = call i32 @print_number(i32* %593, i32 %594, i8 signext %595)
  %597 = load i32*, i32** %7, align 8
  %598 = load i32*, i32** %6, align 8
  %599 = load i32, i32* %5, align 4
  %600 = load i8, i8* %11, align 1
  %601 = call i32 @print_number64(i32* %597, i32* %598, i32 %599, i8 signext %600)
  %602 = call i32 @putchar(i8 signext 44)
  %603 = load i32, i32* @sysdecode_whence, align 4
  %604 = load i32*, i32** %6, align 8
  %605 = load i32, i32* %604, align 4
  %606 = call i32 @print_integer_arg(i32 %603, i32 %605)
  %607 = load i32*, i32** %6, align 8
  %608 = getelementptr inbounds i32, i32* %607, i32 1
  store i32* %608, i32** %6, align 8
  %609 = load i32, i32* %5, align 4
  %610 = add nsw i32 %609, -1
  store i32 %610, i32* %5, align 4
  br label %1253

611:                                              ; preds = %61
  %612 = load i32*, i32** %6, align 8
  %613 = load i32, i32* %5, align 4
  %614 = load i8, i8* %11, align 1
  %615 = call i32 @print_number(i32* %612, i32 %613, i8 signext %614)
  %616 = load i32*, i32** %7, align 8
  %617 = load i32*, i32** %6, align 8
  %618 = load i32, i32* %5, align 4
  %619 = load i8, i8* %11, align 1
  %620 = call i32 @print_number64(i32* %616, i32* %617, i32 %618, i8 signext %619)
  %621 = call i32 @putchar(i8 signext 44)
  %622 = load i32, i32* @sysdecode_whence, align 4
  %623 = load i32*, i32** %6, align 8
  %624 = load i32, i32* %623, align 4
  %625 = call i32 @print_integer_arg(i32 %622, i32 %624)
  %626 = load i32*, i32** %6, align 8
  %627 = getelementptr inbounds i32, i32* %626, i32 1
  store i32* %627, i32** %6, align 8
  %628 = load i32, i32* %5, align 4
  %629 = add nsw i32 %628, -1
  store i32 %629, i32* %5, align 4
  br label %1253

630:                                              ; preds = %61
  %631 = load i32*, i32** %6, align 8
  %632 = load i32, i32* %5, align 4
  %633 = load i8, i8* %11, align 1
  %634 = call i32 @print_number(i32* %631, i32 %632, i8 signext %633)
  %635 = call i32 @putchar(i8 signext 44)
  %636 = load i32, i32* @sysdecode_flock_operation, align 4
  %637 = load i32*, i32** %6, align 8
  %638 = load i32, i32* %637, align 4
  %639 = call i32 @print_mask_arg(i32 %636, i32 %638)
  %640 = load i32*, i32** %6, align 8
  %641 = getelementptr inbounds i32, i32* %640, i32 1
  store i32* %641, i32** %6, align 8
  %642 = load i32, i32* %5, align 4
  %643 = add nsw i32 %642, -1
  store i32 %643, i32* %5, align 4
  br label %1253

644:                                              ; preds = %61, %61, %61, %61
  %645 = load i32*, i32** %6, align 8
  %646 = load i32, i32* %5, align 4
  %647 = load i8, i8* %11, align 1
  %648 = call i32 @print_number(i32* %645, i32 %646, i8 signext %647)
  %649 = call i32 @putchar(i8 signext 44)
  %650 = load i32*, i32** %6, align 8
  %651 = load i32, i32* %650, align 4
  %652 = call i32 @decode_filemode(i32 %651)
  %653 = load i32*, i32** %6, align 8
  %654 = getelementptr inbounds i32, i32* %653, i32 1
  store i32* %654, i32** %6, align 8
  %655 = load i32, i32* %5, align 4
  %656 = add nsw i32 %655, -1
  store i32 %656, i32* %5, align 4
  br label %1253

657:                                              ; preds = %61
  %658 = load i32*, i32** %6, align 8
  %659 = load i32, i32* %5, align 4
  %660 = load i8, i8* %11, align 1
  %661 = call i32 @print_number(i32* %658, i32 %659, i8 signext %660)
  %662 = call i32 @putchar(i8 signext 44)
  %663 = load i32, i32* @sysdecode_shutdown_how, align 4
  %664 = load i32*, i32** %6, align 8
  %665 = load i32, i32* %664, align 4
  %666 = call i32 @print_integer_arg(i32 %663, i32 %665)
  %667 = load i32*, i32** %6, align 8
  %668 = getelementptr inbounds i32, i32* %667, i32 1
  store i32* %668, i32** %6, align 8
  %669 = load i32, i32* %5, align 4
  %670 = add nsw i32 %669, -1
  store i32 %670, i32* %5, align 4
  br label %1253

671:                                              ; preds = %61
  %672 = call i32 @putchar(i8 signext 40)
  %673 = load i32, i32* @sysdecode_socketdomain, align 4
  %674 = load i32*, i32** %6, align 8
  %675 = load i32, i32* %674, align 4
  %676 = call i32 @print_integer_arg(i32 %673, i32 %675)
  %677 = load i32*, i32** %6, align 8
  %678 = getelementptr inbounds i32, i32* %677, i32 1
  store i32* %678, i32** %6, align 8
  %679 = load i32, i32* %5, align 4
  %680 = add nsw i32 %679, -1
  store i32 %680, i32* %5, align 4
  %681 = call i32 @putchar(i8 signext 44)
  %682 = load i32, i32* @sysdecode_socket_type, align 4
  %683 = load i32*, i32** %6, align 8
  %684 = load i32, i32* %683, align 4
  %685 = call i32 @print_mask_arg(i32 %682, i32 %684)
  %686 = load i32*, i32** %6, align 8
  %687 = getelementptr inbounds i32, i32* %686, i32 1
  store i32* %687, i32** %6, align 8
  %688 = load i32, i32* %5, align 4
  %689 = add nsw i32 %688, -1
  store i32 %689, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

690:                                              ; preds = %61, %61
  %691 = call i32 @putchar(i8 signext 40)
  %692 = load i32, i32* @sysdecode_rlimit, align 4
  %693 = load i32*, i32** %6, align 8
  %694 = load i32, i32* %693, align 4
  %695 = call i32 @print_integer_arg(i32 %692, i32 %694)
  %696 = load i32*, i32** %6, align 8
  %697 = getelementptr inbounds i32, i32* %696, i32 1
  store i32* %697, i32** %6, align 8
  %698 = load i32, i32* %5, align 4
  %699 = add nsw i32 %698, -1
  store i32 %699, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

700:                                              ; preds = %61
  %701 = call i32 @putchar(i8 signext 40)
  %702 = load i32, i32* @sysdecode_getrusage_who, align 4
  %703 = load i32*, i32** %6, align 8
  %704 = load i32, i32* %703, align 4
  %705 = call i32 @print_integer_arg(i32 %702, i32 %704)
  %706 = load i32*, i32** %6, align 8
  %707 = getelementptr inbounds i32, i32* %706, i32 1
  store i32* %707, i32** %6, align 8
  %708 = load i32, i32* %5, align 4
  %709 = add nsw i32 %708, -1
  store i32 %709, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

710:                                              ; preds = %61
  %711 = load i32*, i32** %6, align 8
  %712 = load i32, i32* %5, align 4
  %713 = load i8, i8* %11, align 1
  %714 = call i32 @print_number(i32* %711, i32 %712, i8 signext %713)
  %715 = call i32 @putchar(i8 signext 44)
  %716 = load i32, i32* @stdout, align 4
  %717 = load i32*, i32** %6, align 8
  %718 = load i32, i32* %717, align 4
  %719 = call i32 @sysdecode_quotactl_cmd(i32 %716, i32 %718)
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %733, label %721

721:                                              ; preds = %710
  %722 = load i32, i32* @decimal, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %728

724:                                              ; preds = %721
  %725 = load i32*, i32** %6, align 8
  %726 = load i32, i32* %725, align 4
  %727 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %726)
  br label %732

728:                                              ; preds = %721
  %729 = load i32*, i32** %6, align 8
  %730 = load i32, i32* %729, align 4
  %731 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %730)
  br label %732

732:                                              ; preds = %728, %724
  br label %733

733:                                              ; preds = %732, %710
  %734 = load i32*, i32** %6, align 8
  %735 = getelementptr inbounds i32, i32* %734, i32 1
  store i32* %735, i32** %6, align 8
  %736 = load i32, i32* %5, align 4
  %737 = add nsw i32 %736, -1
  store i32 %737, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

738:                                              ; preds = %61
  %739 = call i32 @putchar(i8 signext 40)
  %740 = load i32, i32* @sysdecode_nfssvc_flags, align 4
  %741 = load i32*, i32** %6, align 8
  %742 = load i32, i32* %741, align 4
  %743 = call i32 @print_integer_arg(i32 %740, i32 %742)
  %744 = load i32*, i32** %6, align 8
  %745 = getelementptr inbounds i32, i32* %744, i32 1
  store i32* %745, i32** %6, align 8
  %746 = load i32, i32* %5, align 4
  %747 = add nsw i32 %746, -1
  store i32 %747, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

748:                                              ; preds = %61, %61
  %749 = call i32 @putchar(i8 signext 40)
  %750 = load i32, i32* @sysdecode_rtprio_function, align 4
  %751 = load i32*, i32** %6, align 8
  %752 = load i32, i32* %751, align 4
  %753 = call i32 @print_integer_arg(i32 %750, i32 %752)
  %754 = load i32*, i32** %6, align 8
  %755 = getelementptr inbounds i32, i32* %754, i32 1
  store i32* %755, i32** %6, align 8
  %756 = load i32, i32* %5, align 4
  %757 = add nsw i32 %756, -1
  store i32 %757, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

758:                                              ; preds = %61
  %759 = load i32*, i32** %6, align 8
  %760 = load i32, i32* %5, align 4
  %761 = load i8, i8* %11, align 1
  %762 = call i32 @print_number(i32* %759, i32 %760, i8 signext %761)
  %763 = load i32*, i32** %6, align 8
  %764 = load i32, i32* %5, align 4
  %765 = load i8, i8* %11, align 1
  %766 = call i32 @print_number(i32* %763, i32 %764, i8 signext %765)
  %767 = call i32 @putchar(i8 signext 44)
  %768 = load i32, i32* @sysdecode_semctl_cmd, align 4
  %769 = load i32*, i32** %6, align 8
  %770 = load i32, i32* %769, align 4
  %771 = call i32 @print_integer_arg(i32 %768, i32 %770)
  %772 = load i32*, i32** %6, align 8
  %773 = getelementptr inbounds i32, i32* %772, i32 1
  store i32* %773, i32** %6, align 8
  %774 = load i32, i32* %5, align 4
  %775 = add nsw i32 %774, -1
  store i32 %775, i32* %5, align 4
  br label %1253

776:                                              ; preds = %61
  %777 = load i32*, i32** %6, align 8
  %778 = load i32, i32* %5, align 4
  %779 = load i8, i8* %11, align 1
  %780 = call i32 @print_number(i32* %777, i32 %778, i8 signext %779)
  %781 = load i32*, i32** %6, align 8
  %782 = load i32, i32* %5, align 4
  %783 = load i8, i8* %11, align 1
  %784 = call i32 @print_number(i32* %781, i32 %782, i8 signext %783)
  %785 = call i32 @putchar(i8 signext 44)
  %786 = load i32, i32* @sysdecode_semget_flags, align 4
  %787 = load i32*, i32** %6, align 8
  %788 = load i32, i32* %787, align 4
  %789 = call i32 @print_mask_arg(i32 %786, i32 %788)
  %790 = load i32*, i32** %6, align 8
  %791 = getelementptr inbounds i32, i32* %790, i32 1
  store i32* %791, i32** %6, align 8
  %792 = load i32, i32* %5, align 4
  %793 = add nsw i32 %792, -1
  store i32 %793, i32* %5, align 4
  br label %1253

794:                                              ; preds = %61
  %795 = load i32*, i32** %6, align 8
  %796 = load i32, i32* %5, align 4
  %797 = load i8, i8* %11, align 1
  %798 = call i32 @print_number(i32* %795, i32 %796, i8 signext %797)
  %799 = call i32 @putchar(i8 signext 44)
  %800 = load i32, i32* @sysdecode_msgctl_cmd, align 4
  %801 = load i32*, i32** %6, align 8
  %802 = load i32, i32* %801, align 4
  %803 = call i32 @print_integer_arg(i32 %800, i32 %802)
  %804 = load i32*, i32** %6, align 8
  %805 = getelementptr inbounds i32, i32* %804, i32 1
  store i32* %805, i32** %6, align 8
  %806 = load i32, i32* %5, align 4
  %807 = add nsw i32 %806, -1
  store i32 %807, i32* %5, align 4
  br label %1253

808:                                              ; preds = %61
  %809 = load i32*, i32** %6, align 8
  %810 = load i32, i32* %5, align 4
  %811 = load i8, i8* %11, align 1
  %812 = call i32 @print_number(i32* %809, i32 %810, i8 signext %811)
  %813 = load i32*, i32** %6, align 8
  %814 = load i32, i32* %5, align 4
  %815 = load i8, i8* %11, align 1
  %816 = call i32 @print_number(i32* %813, i32 %814, i8 signext %815)
  %817 = call i32 @putchar(i8 signext 44)
  %818 = load i32, i32* @sysdecode_shmat_flags, align 4
  %819 = load i32*, i32** %6, align 8
  %820 = load i32, i32* %819, align 4
  %821 = call i32 @print_mask_arg(i32 %818, i32 %820)
  %822 = load i32*, i32** %6, align 8
  %823 = getelementptr inbounds i32, i32* %822, i32 1
  store i32* %823, i32** %6, align 8
  %824 = load i32, i32* %5, align 4
  %825 = add nsw i32 %824, -1
  store i32 %825, i32* %5, align 4
  br label %1253

826:                                              ; preds = %61
  %827 = load i32*, i32** %6, align 8
  %828 = load i32, i32* %5, align 4
  %829 = load i8, i8* %11, align 1
  %830 = call i32 @print_number(i32* %827, i32 %828, i8 signext %829)
  %831 = call i32 @putchar(i8 signext 44)
  %832 = load i32, i32* @sysdecode_shmctl_cmd, align 4
  %833 = load i32*, i32** %6, align 8
  %834 = load i32, i32* %833, align 4
  %835 = call i32 @print_integer_arg(i32 %832, i32 %834)
  %836 = load i32*, i32** %6, align 8
  %837 = getelementptr inbounds i32, i32* %836, i32 1
  store i32* %837, i32** %6, align 8
  %838 = load i32, i32* %5, align 4
  %839 = add nsw i32 %838, -1
  store i32 %839, i32* %5, align 4
  br label %1253

840:                                              ; preds = %61
  %841 = load i32*, i32** %6, align 8
  %842 = load i32, i32* %5, align 4
  %843 = load i8, i8* %11, align 1
  %844 = call i32 @print_number(i32* %841, i32 %842, i8 signext %843)
  %845 = call i32 @putchar(i8 signext 44)
  %846 = load i32, i32* @sysdecode_open_flags, align 4
  %847 = load i32*, i32** %6, align 8
  %848 = getelementptr inbounds i32, i32* %847, i64 0
  %849 = load i32, i32* %848, align 4
  %850 = call i32 @print_mask_arg(i32 %846, i32 %849)
  %851 = call i32 @putchar(i8 signext 44)
  %852 = load i32*, i32** %6, align 8
  %853 = getelementptr inbounds i32, i32* %852, i64 1
  %854 = load i32, i32* %853, align 4
  %855 = call i32 @decode_filemode(i32 %854)
  %856 = load i32*, i32** %6, align 8
  %857 = getelementptr inbounds i32, i32* %856, i64 2
  store i32* %857, i32** %6, align 8
  %858 = load i32, i32* %5, align 4
  %859 = sub nsw i32 %858, 2
  store i32 %859, i32* %5, align 4
  br label %1253

860:                                              ; preds = %61
  %861 = load i32*, i32** %6, align 8
  %862 = load i32, i32* %5, align 4
  %863 = load i8, i8* %11, align 1
  %864 = call i32 @print_number(i32* %861, i32 %862, i8 signext %863)
  %865 = load i32*, i32** %6, align 8
  %866 = load i32, i32* %5, align 4
  %867 = load i8, i8* %11, align 1
  %868 = call i32 @print_number(i32* %865, i32 %866, i8 signext %867)
  %869 = call i32 @putchar(i8 signext 44)
  %870 = load i32, i32* @sysdecode_minherit_inherit, align 4
  %871 = load i32*, i32** %6, align 8
  %872 = load i32, i32* %871, align 4
  %873 = call i32 @print_integer_arg(i32 %870, i32 %872)
  %874 = load i32*, i32** %6, align 8
  %875 = getelementptr inbounds i32, i32* %874, i32 1
  store i32* %875, i32** %6, align 8
  %876 = load i32, i32* %5, align 4
  %877 = add nsw i32 %876, -1
  store i32 %877, i32* %5, align 4
  br label %1253

878:                                              ; preds = %61
  %879 = call i32 @putchar(i8 signext 40)
  %880 = load i32, i32* @sysdecode_rfork_flags, align 4
  %881 = load i32*, i32** %6, align 8
  %882 = load i32, i32* %881, align 4
  %883 = call i32 @print_mask_arg(i32 %880, i32 %882)
  %884 = load i32*, i32** %6, align 8
  %885 = getelementptr inbounds i32, i32* %884, i32 1
  store i32* %885, i32** %6, align 8
  %886 = load i32, i32* %5, align 4
  %887 = add nsw i32 %886, -1
  store i32 %887, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

888:                                              ; preds = %61
  %889 = call i32 @putchar(i8 signext 40)
  %890 = load i32, i32* @sysdecode_lio_listio_mode, align 4
  %891 = load i32*, i32** %6, align 8
  %892 = load i32, i32* %891, align 4
  %893 = call i32 @print_integer_arg(i32 %890, i32 %892)
  %894 = load i32*, i32** %6, align 8
  %895 = getelementptr inbounds i32, i32* %894, i32 1
  store i32* %895, i32** %6, align 8
  %896 = load i32, i32* %5, align 4
  %897 = add nsw i32 %896, -1
  store i32 %897, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

898:                                              ; preds = %61
  %899 = call i32 @putchar(i8 signext 40)
  %900 = load i32, i32* @sysdecode_mlockall_flags, align 4
  %901 = load i32*, i32** %6, align 8
  %902 = load i32, i32* %901, align 4
  %903 = call i32 @print_mask_arg(i32 %900, i32 %902)
  %904 = load i32*, i32** %6, align 8
  %905 = getelementptr inbounds i32, i32* %904, i32 1
  store i32* %905, i32** %6, align 8
  %906 = load i32, i32* %5, align 4
  %907 = add nsw i32 %906, -1
  store i32 %907, i32* %5, align 4
  br label %1253

908:                                              ; preds = %61
  %909 = load i32*, i32** %6, align 8
  %910 = load i32, i32* %5, align 4
  %911 = load i8, i8* %11, align 1
  %912 = call i32 @print_number(i32* %909, i32 %910, i8 signext %911)
  %913 = call i32 @putchar(i8 signext 44)
  %914 = load i32, i32* @sysdecode_scheduler_policy, align 4
  %915 = load i32*, i32** %6, align 8
  %916 = load i32, i32* %915, align 4
  %917 = call i32 @print_integer_arg(i32 %914, i32 %916)
  %918 = load i32*, i32** %6, align 8
  %919 = getelementptr inbounds i32, i32* %918, i32 1
  store i32* %919, i32** %6, align 8
  %920 = load i32, i32* %5, align 4
  %921 = add nsw i32 %920, -1
  store i32 %921, i32* %5, align 4
  br label %1253

922:                                              ; preds = %61, %61
  %923 = call i32 @putchar(i8 signext 40)
  %924 = load i32, i32* @sysdecode_scheduler_policy, align 4
  %925 = load i32*, i32** %6, align 8
  %926 = load i32, i32* %925, align 4
  %927 = call i32 @print_integer_arg(i32 %924, i32 %926)
  %928 = load i32*, i32** %6, align 8
  %929 = getelementptr inbounds i32, i32* %928, i32 1
  store i32* %929, i32** %6, align 8
  %930 = load i32, i32* %5, align 4
  %931 = add nsw i32 %930, -1
  store i32 %931, i32* %5, align 4
  br label %1253

932:                                              ; preds = %61
  %933 = load i32*, i32** %6, align 8
  %934 = load i32, i32* %5, align 4
  %935 = load i8, i8* %11, align 1
  %936 = call i32 @print_number(i32* %933, i32 %934, i8 signext %935)
  %937 = load i32*, i32** %6, align 8
  %938 = load i32, i32* %5, align 4
  %939 = load i8, i8* %11, align 1
  %940 = call i32 @print_number(i32* %937, i32 %938, i8 signext %939)
  %941 = load i32*, i32** %6, align 8
  %942 = load i32, i32* %5, align 4
  %943 = load i8, i8* %11, align 1
  %944 = call i32 @print_number(i32* %941, i32 %942, i8 signext %943)
  %945 = load i32*, i32** %6, align 8
  %946 = load i32, i32* %5, align 4
  %947 = load i8, i8* %11, align 1
  %948 = call i32 @print_number(i32* %945, i32 %946, i8 signext %947)
  %949 = load i32*, i32** %6, align 8
  %950 = load i32, i32* %5, align 4
  %951 = load i8, i8* %11, align 1
  %952 = call i32 @print_number(i32* %949, i32 %950, i8 signext %951)
  %953 = load i32*, i32** %6, align 8
  %954 = load i32, i32* %5, align 4
  %955 = load i8, i8* %11, align 1
  %956 = call i32 @print_number(i32* %953, i32 %954, i8 signext %955)
  %957 = call i32 @putchar(i8 signext 44)
  %958 = load i32, i32* @sysdecode_sendfile_flags, align 4
  %959 = load i32*, i32** %6, align 8
  %960 = load i32, i32* %959, align 4
  %961 = call i32 @print_mask_arg(i32 %958, i32 %960)
  %962 = load i32*, i32** %6, align 8
  %963 = getelementptr inbounds i32, i32* %962, i32 1
  store i32* %963, i32** %6, align 8
  %964 = load i32, i32* %5, align 4
  %965 = add nsw i32 %964, -1
  store i32 %965, i32* %5, align 4
  br label %1253

966:                                              ; preds = %61
  %967 = load i32*, i32** %6, align 8
  %968 = load i32, i32* %5, align 4
  %969 = load i8, i8* %11, align 1
  %970 = call i32 @print_number(i32* %967, i32 %968, i8 signext %969)
  %971 = call i32 @putchar(i8 signext 44)
  %972 = load i32, i32* @sysdecode_kldsym_cmd, align 4
  %973 = load i32*, i32** %6, align 8
  %974 = load i32, i32* %973, align 4
  %975 = call i32 @print_integer_arg(i32 %972, i32 %974)
  %976 = load i32*, i32** %6, align 8
  %977 = getelementptr inbounds i32, i32* %976, i32 1
  store i32* %977, i32** %6, align 8
  %978 = load i32, i32* %5, align 4
  %979 = add nsw i32 %978, -1
  store i32 %979, i32* %5, align 4
  br label %1253

980:                                              ; preds = %61
  %981 = call i32 @putchar(i8 signext 40)
  %982 = load i32, i32* @sysdecode_sigprocmask_how, align 4
  %983 = load i32*, i32** %6, align 8
  %984 = load i32, i32* %983, align 4
  %985 = call i32 @print_integer_arg(i32 %982, i32 %984)
  %986 = load i32*, i32** %6, align 8
  %987 = getelementptr inbounds i32, i32* %986, i32 1
  store i32* %987, i32** %6, align 8
  %988 = load i32, i32* %5, align 4
  %989 = add nsw i32 %988, -1
  store i32 %989, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

990:                                              ; preds = %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61
  %991 = load i32*, i32** %6, align 8
  %992 = load i32, i32* %5, align 4
  %993 = load i8, i8* %11, align 1
  %994 = call i32 @print_number(i32* %991, i32 %992, i8 signext %993)
  %995 = call i32 @putchar(i8 signext 44)
  %996 = load i32, i32* @sysdecode_acltype, align 4
  %997 = load i32*, i32** %6, align 8
  %998 = load i32, i32* %997, align 4
  %999 = call i32 @print_integer_arg(i32 %996, i32 %998)
  %1000 = load i32*, i32** %6, align 8
  %1001 = getelementptr inbounds i32, i32* %1000, i32 1
  store i32* %1001, i32** %6, align 8
  %1002 = load i32, i32* %5, align 4
  %1003 = add nsw i32 %1002, -1
  store i32 %1003, i32* %5, align 4
  br label %1253

1004:                                             ; preds = %61
  %1005 = call i32 @putchar(i8 signext 40)
  %1006 = load i32*, i32** %6, align 8
  %1007 = load i32, i32* %1006, align 4
  %1008 = call i32 @print_signal(i32 %1007)
  %1009 = load i32*, i32** %6, align 8
  %1010 = getelementptr inbounds i32, i32* %1009, i32 1
  store i32* %1010, i32** %6, align 8
  %1011 = load i32, i32* %5, align 4
  %1012 = add nsw i32 %1011, -1
  store i32 %1012, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

1013:                                             ; preds = %61
  %1014 = load i32*, i32** %6, align 8
  %1015 = load i32, i32* %5, align 4
  %1016 = load i8, i8* %11, align 1
  %1017 = call i32 @print_number(i32* %1014, i32 %1015, i8 signext %1016)
  %1018 = call i32 @putchar(i8 signext 44)
  %1019 = load i32, i32* @sysdecode_extattrnamespace, align 4
  %1020 = load i32*, i32** %6, align 8
  %1021 = load i32, i32* %1020, align 4
  %1022 = call i32 @print_integer_arg(i32 %1019, i32 %1021)
  %1023 = load i32*, i32** %6, align 8
  %1024 = getelementptr inbounds i32, i32* %1023, i32 1
  store i32* %1024, i32** %6, align 8
  %1025 = load i32, i32* %5, align 4
  %1026 = add nsw i32 %1025, -1
  store i32 %1026, i32* %5, align 4
  br label %1253

1027:                                             ; preds = %61
  %1028 = load i32*, i32** %6, align 8
  %1029 = load i32, i32* %5, align 4
  %1030 = load i8, i8* %11, align 1
  %1031 = call i32 @print_number(i32* %1028, i32 %1029, i8 signext %1030)
  %1032 = load i32*, i32** %6, align 8
  %1033 = load i32, i32* %5, align 4
  %1034 = load i8, i8* %11, align 1
  %1035 = call i32 @print_number(i32* %1032, i32 %1033, i8 signext %1034)
  %1036 = call i32 @putchar(i8 signext 44)
  %1037 = load i32, i32* @sysdecode_mount_flags, align 4
  %1038 = load i32*, i32** %6, align 8
  %1039 = load i32, i32* %1038, align 4
  %1040 = call i32 @print_mask_arg(i32 %1037, i32 %1039)
  %1041 = load i32*, i32** %6, align 8
  %1042 = getelementptr inbounds i32, i32* %1041, i32 1
  store i32* %1042, i32** %6, align 8
  %1043 = load i32, i32* %5, align 4
  %1044 = add nsw i32 %1043, -1
  store i32 %1044, i32* %5, align 4
  br label %1253

1045:                                             ; preds = %61
  %1046 = load i32*, i32** %6, align 8
  %1047 = load i32, i32* %5, align 4
  %1048 = load i8, i8* %11, align 1
  %1049 = call i32 @print_number(i32* %1046, i32 %1047, i8 signext %1048)
  %1050 = load i32*, i32** %6, align 8
  %1051 = load i32, i32* %5, align 4
  %1052 = load i8, i8* %11, align 1
  %1053 = call i32 @print_number(i32* %1050, i32 %1051, i8 signext %1052)
  %1054 = call i32 @putchar(i8 signext 44)
  %1055 = load i32, i32* @sysdecode_thr_create_flags, align 4
  %1056 = load i32*, i32** %6, align 8
  %1057 = load i32, i32* %1056, align 4
  %1058 = call i32 @print_mask_arg(i32 %1055, i32 %1057)
  %1059 = load i32*, i32** %6, align 8
  %1060 = getelementptr inbounds i32, i32* %1059, i32 1
  store i32* %1060, i32** %6, align 8
  %1061 = load i32, i32* %5, align 4
  %1062 = add nsw i32 %1061, -1
  store i32 %1062, i32* %5, align 4
  br label %1253

1063:                                             ; preds = %61
  %1064 = load i32*, i32** %6, align 8
  %1065 = load i32, i32* %5, align 4
  %1066 = load i8, i8* %11, align 1
  %1067 = call i32 @print_number(i32* %1064, i32 %1065, i8 signext %1066)
  %1068 = call i32 @putchar(i8 signext 44)
  %1069 = load i32*, i32** %6, align 8
  %1070 = load i32, i32* %1069, align 4
  %1071 = call i32 @print_signal(i32 %1070)
  %1072 = load i32*, i32** %6, align 8
  %1073 = getelementptr inbounds i32, i32* %1072, i32 1
  store i32* %1073, i32** %6, align 8
  %1074 = load i32, i32* %5, align 4
  %1075 = add nsw i32 %1074, -1
  store i32 %1075, i32* %5, align 4
  br label %1253

1076:                                             ; preds = %61
  %1077 = load i32*, i32** %6, align 8
  %1078 = load i32, i32* %5, align 4
  %1079 = load i8, i8* %11, align 1
  %1080 = call i32 @print_number(i32* %1077, i32 %1078, i8 signext %1079)
  %1081 = call i32 @putchar(i8 signext 44)
  %1082 = load i32, i32* @sysdecode_kldunload_flags, align 4
  %1083 = load i32*, i32** %6, align 8
  %1084 = load i32, i32* %1083, align 4
  %1085 = call i32 @print_integer_arg(i32 %1082, i32 %1084)
  %1086 = load i32*, i32** %6, align 8
  %1087 = getelementptr inbounds i32, i32* %1086, i32 1
  store i32* %1087, i32** %6, align 8
  %1088 = load i32, i32* %5, align 4
  %1089 = add nsw i32 %1088, -1
  store i32 %1089, i32* %5, align 4
  br label %1253

1090:                                             ; preds = %61, %61, %61
  %1091 = load i32*, i32** %6, align 8
  %1092 = load i32, i32* %5, align 4
  %1093 = load i8, i8* %11, align 1
  %1094 = call i32 @print_number(i32* %1091, i32 %1092, i8 signext %1093)
  %1095 = call i32 @putchar(i8 signext 44)
  %1096 = load i32, i32* @sysdecode_atfd, align 4
  %1097 = load i32*, i32** %6, align 8
  %1098 = load i32, i32* %1097, align 4
  %1099 = call i32 @print_integer_arg_valid(i32 %1096, i32 %1098)
  %1100 = load i32*, i32** %6, align 8
  %1101 = getelementptr inbounds i32, i32* %1100, i32 1
  store i32* %1101, i32** %6, align 8
  %1102 = load i32, i32* %5, align 4
  %1103 = add nsw i32 %1102, -1
  store i32 %1103, i32* %5, align 4
  %1104 = load i32*, i32** %6, align 8
  %1105 = load i32, i32* %5, align 4
  %1106 = load i8, i8* %11, align 1
  %1107 = call i32 @print_number(i32* %1104, i32 %1105, i8 signext %1106)
  br label %1253

1108:                                             ; preds = %61
  %1109 = load i32*, i32** %6, align 8
  %1110 = load i32, i32* %5, align 4
  %1111 = load i8, i8* %11, align 1
  %1112 = call i32 @print_number(i32* %1109, i32 %1110, i8 signext %1111)
  %1113 = call i32 @putchar(i8 signext 44)
  %1114 = load i32*, i32** %6, align 8
  %1115 = load i32, i32* %1114, align 4
  store i32 %1115, i32* %8, align 4
  %1116 = load i32*, i32** %6, align 8
  %1117 = getelementptr inbounds i32, i32* %1116, i32 1
  store i32* %1117, i32** %6, align 8
  %1118 = load i32, i32* %5, align 4
  %1119 = add nsw i32 %1118, -1
  store i32 %1119, i32* %5, align 4
  %1120 = load i32, i32* @sysdecode_cap_fcntlrights, align 4
  %1121 = load i32, i32* %8, align 4
  %1122 = call i32 @print_mask_arg32(i32 %1120, i32 %1121)
  br label %1253

1123:                                             ; preds = %61
  %1124 = load i32*, i32** %6, align 8
  %1125 = load i32, i32* %5, align 4
  %1126 = load i8, i8* %11, align 1
  %1127 = call i32 @print_number(i32* %1124, i32 %1125, i8 signext %1126)
  %1128 = load i32*, i32** %6, align 8
  %1129 = load i32, i32* %5, align 4
  %1130 = load i8, i8* %11, align 1
  %1131 = call i32 @print_number(i32* %1128, i32 %1129, i8 signext %1130)
  %1132 = load i32*, i32** %6, align 8
  %1133 = load i32, i32* %5, align 4
  %1134 = load i8, i8* %11, align 1
  %1135 = call i32 @print_number(i32* %1132, i32 %1133, i8 signext %1134)
  %1136 = call i32 @putchar(i8 signext 44)
  %1137 = load i32, i32* @sysdecode_fadvice, align 4
  %1138 = load i32*, i32** %6, align 8
  %1139 = load i32, i32* %1138, align 4
  %1140 = call i32 @print_integer_arg(i32 %1137, i32 %1139)
  %1141 = load i32*, i32** %6, align 8
  %1142 = getelementptr inbounds i32, i32* %1141, i32 1
  store i32* %1142, i32** %6, align 8
  %1143 = load i32, i32* %5, align 4
  %1144 = add nsw i32 %1143, -1
  store i32 %1144, i32* %5, align 4
  br label %1253

1145:                                             ; preds = %61
  %1146 = call i32 @putchar(i8 signext 40)
  %1147 = load i32, i32* @sysdecode_idtype, align 4
  %1148 = load i32*, i32** %6, align 8
  %1149 = load i32, i32* %1148, align 4
  %1150 = call i32 @print_integer_arg(i32 %1147, i32 %1149)
  store i8 44, i8* %11, align 1
  %1151 = load i32*, i32** %6, align 8
  %1152 = getelementptr inbounds i32, i32* %1151, i32 1
  store i32* %1152, i32** %6, align 8
  %1153 = load i32, i32* %5, align 4
  %1154 = add nsw i32 %1153, -1
  store i32 %1154, i32* %5, align 4
  %1155 = load i32*, i32** %7, align 8
  %1156 = load i32*, i32** %6, align 8
  %1157 = load i32, i32* %5, align 4
  %1158 = load i8, i8* %11, align 1
  %1159 = call i32 @print_number64(i32* %1155, i32* %1156, i32 %1157, i8 signext %1158)
  %1160 = call i32 @putchar(i8 signext 44)
  %1161 = load i32, i32* @sysdecode_procctl_cmd, align 4
  %1162 = load i32*, i32** %6, align 8
  %1163 = load i32, i32* %1162, align 4
  %1164 = call i32 @print_integer_arg(i32 %1161, i32 %1163)
  %1165 = load i32*, i32** %6, align 8
  %1166 = getelementptr inbounds i32, i32* %1165, i32 1
  store i32* %1166, i32** %6, align 8
  %1167 = load i32, i32* %5, align 4
  %1168 = add nsw i32 %1167, -1
  store i32 %1168, i32* %5, align 4
  br label %1253

1169:                                             ; preds = %61
  %1170 = load i32*, i32** %6, align 8
  %1171 = load i32, i32* %5, align 4
  %1172 = load i8, i8* %11, align 1
  %1173 = call i32 @print_number(i32* %1170, i32 %1171, i8 signext %1172)
  %1174 = call i32 @putchar(i8 signext 44)
  %1175 = load i32, i32* @sysdecode_umtx_op, align 4
  %1176 = load i32*, i32** %6, align 8
  %1177 = load i32, i32* %1176, align 4
  %1178 = call i32 @print_integer_arg(i32 %1175, i32 %1177)
  %1179 = load i32*, i32** %6, align 8
  %1180 = load i32, i32* %1179, align 4
  switch i32 %1180, label %1201 [
    i32 129, label %1181
    i32 128, label %1191
  ]

1181:                                             ; preds = %1169
  %1182 = load i32*, i32** %6, align 8
  %1183 = getelementptr inbounds i32, i32* %1182, i32 1
  store i32* %1183, i32** %6, align 8
  %1184 = load i32, i32* %5, align 4
  %1185 = add nsw i32 %1184, -1
  store i32 %1185, i32* %5, align 4
  %1186 = call i32 @putchar(i8 signext 44)
  %1187 = load i32, i32* @sysdecode_umtx_cvwait_flags, align 4
  %1188 = load i32*, i32** %6, align 8
  %1189 = load i32, i32* %1188, align 4
  %1190 = call i32 @print_mask_argul(i32 %1187, i32 %1189)
  br label %1201

1191:                                             ; preds = %1169
  %1192 = load i32*, i32** %6, align 8
  %1193 = getelementptr inbounds i32, i32* %1192, i32 1
  store i32* %1193, i32** %6, align 8
  %1194 = load i32, i32* %5, align 4
  %1195 = add nsw i32 %1194, -1
  store i32 %1195, i32* %5, align 4
  %1196 = call i32 @putchar(i8 signext 44)
  %1197 = load i32, i32* @sysdecode_umtx_rwlock_flags, align 4
  %1198 = load i32*, i32** %6, align 8
  %1199 = load i32, i32* %1198, align 4
  %1200 = call i32 @print_mask_argul(i32 %1197, i32 %1199)
  br label %1201

1201:                                             ; preds = %1169, %1191, %1181
  %1202 = load i32*, i32** %6, align 8
  %1203 = getelementptr inbounds i32, i32* %1202, i32 1
  store i32* %1203, i32** %6, align 8
  %1204 = load i32, i32* %5, align 4
  %1205 = add nsw i32 %1204, -1
  store i32 %1205, i32* %5, align 4
  br label %1253

1206:                                             ; preds = %61, %61
  %1207 = load i32*, i32** %6, align 8
  %1208 = load i32, i32* %5, align 4
  %1209 = load i8, i8* %11, align 1
  %1210 = call i32 @print_number(i32* %1207, i32 %1208, i8 signext %1209)
  %1211 = load i32*, i32** %7, align 8
  %1212 = load i32*, i32** %6, align 8
  %1213 = load i32, i32* %5, align 4
  %1214 = load i8, i8* %11, align 1
  %1215 = call i32 @print_number64(i32* %1211, i32* %1212, i32 %1213, i8 signext %1214)
  br label %1253

1216:                                             ; preds = %61
  %1217 = load i32*, i32** %6, align 8
  %1218 = load i32, i32* %5, align 4
  %1219 = load i8, i8* %11, align 1
  %1220 = call i32 @print_number(i32* %1217, i32 %1218, i8 signext %1219)
  %1221 = load i32*, i32** %6, align 8
  %1222 = load i32, i32* %5, align 4
  %1223 = load i8, i8* %11, align 1
  %1224 = call i32 @print_number(i32* %1221, i32 %1222, i8 signext %1223)
  %1225 = load i32*, i32** %6, align 8
  %1226 = load i32, i32* %5, align 4
  %1227 = load i8, i8* %11, align 1
  %1228 = call i32 @print_number(i32* %1225, i32 %1226, i8 signext %1227)
  br label %1253

1229:                                             ; preds = %61, %61
  %1230 = load i32*, i32** %6, align 8
  %1231 = load i32, i32* %5, align 4
  %1232 = load i8, i8* %11, align 1
  %1233 = call i32 @print_number(i32* %1230, i32 %1231, i8 signext %1232)
  %1234 = load i32*, i32** %6, align 8
  %1235 = load i32, i32* %5, align 4
  %1236 = load i8, i8* %11, align 1
  %1237 = call i32 @print_number(i32* %1234, i32 %1235, i8 signext %1236)
  br label %1253

1238:                                             ; preds = %61
  %1239 = load i32*, i32** %6, align 8
  %1240 = load i32, i32* %5, align 4
  %1241 = load i8, i8* %11, align 1
  %1242 = call i32 @print_number(i32* %1239, i32 %1240, i8 signext %1241)
  br label %1253

1243:                                             ; preds = %61
  %1244 = call i32 @putchar(i8 signext 40)
  %1245 = load i32, i32* @sysdecode_sysarch_number, align 4
  %1246 = load i32*, i32** %6, align 8
  %1247 = load i32, i32* %1246, align 4
  %1248 = call i32 @print_integer_arg(i32 %1245, i32 %1247)
  %1249 = load i32*, i32** %6, align 8
  %1250 = getelementptr inbounds i32, i32* %1249, i32 1
  store i32* %1250, i32** %6, align 8
  %1251 = load i32, i32* %5, align 4
  %1252 = add nsw i32 %1251, -1
  store i32 %1252, i32* %5, align 4
  store i8 44, i8* %11, align 1
  br label %1253

1253:                                             ; preds = %61, %1243, %1238, %1229, %1216, %1206, %1201, %1145, %1123, %1108, %1090, %1076, %1063, %1045, %1027, %1013, %1004, %990, %980, %966, %932, %922, %908, %898, %888, %878, %860, %840, %826, %808, %794, %776, %758, %748, %738, %733, %700, %690, %671, %657, %644, %630, %611, %588, %583, %556, %514, %461, %447, %429, %411, %384, %357, %339, %330, %320, %307, %294, %272, %254, %240, %222, %204, %191, %178, %150, %132, %127, %89, %79, %65
  %1254 = load %struct.ktr_syscall*, %struct.ktr_syscall** %3, align 8
  %1255 = getelementptr inbounds %struct.ktr_syscall, %struct.ktr_syscall* %1254, i32 0, i32 1
  %1256 = load i32, i32* %1255, align 4
  switch i32 %1256, label %1267 [
    i32 221, label %1257
    i32 212, label %1257
    i32 216, label %1257
    i32 213, label %1257
    i32 205, label %1257
    i32 191, label %1257
    i32 134, label %1257
    i32 132, label %1257
  ]

1257:                                             ; preds = %1253, %1253, %1253, %1253, %1253, %1253, %1253, %1253
  %1258 = call i32 @putchar(i8 signext 44)
  %1259 = load i32, i32* @sysdecode_atflags, align 4
  %1260 = load i32*, i32** %6, align 8
  %1261 = load i32, i32* %1260, align 4
  %1262 = call i32 @print_mask_arg0(i32 %1259, i32 %1261)
  %1263 = load i32*, i32** %6, align 8
  %1264 = getelementptr inbounds i32, i32* %1263, i32 1
  store i32* %1264, i32** %6, align 8
  %1265 = load i32, i32* %5, align 4
  %1266 = add nsw i32 %1265, -1
  store i32 %1266, i32* %5, align 4
  br label %1267

1267:                                             ; preds = %1253, %1257
  br label %1268

1268:                                             ; preds = %1267, %34, %28
  br label %1269

1269:                                             ; preds = %1272, %1268
  %1270 = load i32, i32* %5, align 4
  %1271 = icmp sgt i32 %1270, 0
  br i1 %1271, label %1272, label %1277

1272:                                             ; preds = %1269
  %1273 = load i32*, i32** %6, align 8
  %1274 = load i32, i32* %5, align 4
  %1275 = load i8, i8* %11, align 1
  %1276 = call i32 @print_number(i32* %1273, i32 %1274, i8 signext %1275)
  br label %1269

1277:                                             ; preds = %1269
  %1278 = call i32 @putchar(i8 signext 41)
  br label %1279

1279:                                             ; preds = %1277, %2
  %1280 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @syscallname(i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @print_integer_arg_valid(i32, i32) #1

declare dso_local i32 @print_number(i32*, i32, i8 signext) #1

declare dso_local i32 @ioctlname(i32) #1

declare dso_local i32 @print_integer_arg(i32, i32) #1

declare dso_local i32 @print_mask_arg(i32, i32) #1

declare dso_local i32 @decode_filemode(i32) #1

declare dso_local i32 @print_mask_arg0(i32, i32) #1

declare dso_local i32 @print_number64(i32*, i32*, i32, i8 signext) #1

declare dso_local i32 @decode_fileflags(i32) #1

declare dso_local i32 @print_signal(i32) #1

declare dso_local i32 @sysdecode_fcntl_arg_p(i32) #1

declare dso_local i32 @sysdecode_fcntl_arg(i32, i32, i32, i32) #1

declare dso_local i8* @sysdecode_sockopt_name(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sysdecode_quotactl_cmd(i32, i32) #1

declare dso_local i32 @print_mask_arg32(i32, i32) #1

declare dso_local i32 @print_mask_argul(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
