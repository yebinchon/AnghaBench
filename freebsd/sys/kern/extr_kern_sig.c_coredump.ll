; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_coredump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred*, %struct.proc* }
%struct.ucred = type { i64 }
%struct.proc = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.thread* }
%struct.TYPE_2__ = type { i32 (%struct.thread*, %struct.vnode*, i64, i32)* }
%struct.vnode = type { i64, i32 }
%struct.flock = type { i32, i64, i64, i32 }
%struct.vattr = type { i32, i64, i32, i64 }
%struct.sbuf = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@P_HADTHREADS = common dso_local global i32 0, align 4
@S_CORE = common dso_local global i32 0, align 4
@do_coredump = common dso_local global i32 0, align 4
@sugid_coredump = common dso_local global i32 0, align 4
@P_SUGID = common dso_local global i32 0, align 4
@P2_NOTRACE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@RLIMIT_CORE = common dso_local global i32 0, align 4
@RACCT_CORE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@compress_user_cores = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VV_SYSTEM = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@set_core_nodump_flag = common dso_local global i64 0, align 8
@UF_NODUMP = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ACORE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@coredump_devctl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"comm=\22\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\22 core=\22\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"coredump\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @coredump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coredump(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.flock, align 8
  %8 = alloca %struct.vattr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sbuf*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  store %struct.proc* %20, %struct.proc** %4, align 8
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load %struct.ucred*, %struct.ucred** %22, align 8
  store %struct.ucred* %23, %struct.ucred** %5, align 8
  store i8* null, i8** %16, align 8
  %24 = load %struct.proc*, %struct.proc** %4, align 8
  %25 = load i32, i32* @MA_OWNED, align 4
  %26 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %24, i32 %25)
  %27 = load %struct.proc*, %struct.proc** %4, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @P_HADTHREADS, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %1
  %34 = load %struct.proc*, %struct.proc** %4, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 8
  %36 = load %struct.thread*, %struct.thread** %35, align 8
  %37 = load %struct.thread*, %struct.thread** %3, align 8
  %38 = icmp eq %struct.thread* %36, %37
  br label %39

39:                                               ; preds = %33, %1
  %40 = phi i1 [ true, %1 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @MPASS(i32 %41)
  %43 = load %struct.proc*, %struct.proc** %4, align 8
  %44 = load i32, i32* @S_CORE, align 4
  %45 = call i32 @_STOPEVENT(%struct.proc* %43, i32 %44, i32 0)
  %46 = load i32, i32* @do_coredump, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %39
  %49 = load i32, i32* @sugid_coredump, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load %struct.proc*, %struct.proc** %4, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @P_SUGID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51, %48
  %59 = load %struct.proc*, %struct.proc** %4, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @P2_NOTRACE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58, %51, %39
  %66 = load %struct.proc*, %struct.proc** %4, align 8
  %67 = call i32 @PROC_UNLOCK(%struct.proc* %66)
  %68 = load i32, i32* @EFAULT, align 4
  store i32 %68, i32* %2, align 4
  br label %308

69:                                               ; preds = %58
  %70 = load %struct.thread*, %struct.thread** %3, align 8
  %71 = load i32, i32* @RLIMIT_CORE, align 4
  %72 = call i64 @lim_cur(%struct.thread* %70, i32 %71)
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.proc*, %struct.proc** %4, align 8
  %77 = load i32, i32* @RACCT_CORE, align 4
  %78 = call i64 @racct_get_available(%struct.proc* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %69
  %81 = load %struct.proc*, %struct.proc** %4, align 8
  %82 = call i32 @PROC_UNLOCK(%struct.proc* %81)
  %83 = load i32, i32* @EFBIG, align 4
  store i32 %83, i32* %2, align 4
  br label %308

84:                                               ; preds = %75
  %85 = load %struct.proc*, %struct.proc** %4, align 8
  %86 = call i32 @PROC_UNLOCK(%struct.proc* %85)
  %87 = load %struct.proc*, %struct.proc** %4, align 8
  %88 = getelementptr inbounds %struct.proc, %struct.proc* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ucred*, %struct.ucred** %5, align 8
  %91 = getelementptr inbounds %struct.ucred, %struct.ucred* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.proc*, %struct.proc** %4, align 8
  %94 = getelementptr inbounds %struct.proc, %struct.proc* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.thread*, %struct.thread** %3, align 8
  %97 = load i32, i32* @compress_user_cores, align 4
  %98 = load %struct.proc*, %struct.proc** %4, align 8
  %99 = getelementptr inbounds %struct.proc, %struct.proc* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @corefile_open(i32 %89, i64 %92, i32 %95, %struct.thread* %96, i32 %97, i32 %100, %struct.vnode** %6, i8** %12)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %84
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %2, align 4
  br label %308

106:                                              ; preds = %84
  %107 = load %struct.vnode*, %struct.vnode** %6, align 8
  %108 = getelementptr inbounds %struct.vnode, %struct.vnode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @VREG, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %135, label %112

112:                                              ; preds = %106
  %113 = load %struct.vnode*, %struct.vnode** %6, align 8
  %114 = load %struct.ucred*, %struct.ucred** %5, align 8
  %115 = call i64 @VOP_GETATTR(%struct.vnode* %113, %struct.vattr* %8, %struct.ucred* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %135, label %121

121:                                              ; preds = %117
  %122 = load %struct.vnode*, %struct.vnode** %6, align 8
  %123 = getelementptr inbounds %struct.vnode, %struct.vnode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @VV_SYSTEM, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ucred*, %struct.ucred** %5, align 8
  %132 = getelementptr inbounds %struct.ucred, %struct.ucred* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %128, %121, %117, %112, %106
  %136 = load %struct.vnode*, %struct.vnode** %6, align 8
  %137 = call i32 @VOP_UNLOCK(%struct.vnode* %136, i32 0)
  %138 = load i32, i32* @EFAULT, align 4
  store i32 %138, i32* %9, align 4
  br label %293

139:                                              ; preds = %128
  %140 = load %struct.vnode*, %struct.vnode** %6, align 8
  %141 = call i32 @VOP_UNLOCK(%struct.vnode* %140, i32 0)
  %142 = load %struct.vnode*, %struct.vnode** %6, align 8
  %143 = load i32, i32* @OFF_MAX, align 4
  %144 = call i8* @vn_rangelock_wlock(%struct.vnode* %142, i32 0, i32 %143)
  store i8* %144, i8** %13, align 8
  %145 = load i32, i32* @SEEK_SET, align 4
  %146 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 3
  store i32 %145, i32* %146, align 8
  %147 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* @F_WRLCK, align 4
  %150 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 0
  store i32 %149, i32* %150, align 8
  %151 = load %struct.vnode*, %struct.vnode** %6, align 8
  %152 = load %struct.proc*, %struct.proc** %4, align 8
  %153 = ptrtoint %struct.proc* %152 to i32
  %154 = load i32, i32* @F_SETLK, align 4
  %155 = load i32, i32* @F_FLOCK, align 4
  %156 = call i64 @VOP_ADVLOCK(%struct.vnode* %151, i32 %153, i32 %154, %struct.flock* %7, i32 %155)
  %157 = icmp eq i64 %156, 0
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %11, align 4
  %159 = call i32 @VATTR_NULL(%struct.vattr* %8)
  %160 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load i64, i64* @set_core_nodump_flag, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %139
  %164 = load i32, i32* @UF_NODUMP, align 4
  %165 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 2
  store i32 %164, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %139
  %167 = load %struct.vnode*, %struct.vnode** %6, align 8
  %168 = load i32, i32* @LK_EXCLUSIVE, align 4
  %169 = load i32, i32* @LK_RETRY, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @vn_lock(%struct.vnode* %167, i32 %170)
  %172 = load %struct.vnode*, %struct.vnode** %6, align 8
  %173 = load %struct.ucred*, %struct.ucred** %5, align 8
  %174 = call i32 @VOP_SETATTR(%struct.vnode* %172, %struct.vattr* %8, %struct.ucred* %173)
  %175 = load %struct.vnode*, %struct.vnode** %6, align 8
  %176 = call i32 @VOP_UNLOCK(%struct.vnode* %175, i32 0)
  %177 = load %struct.proc*, %struct.proc** %4, align 8
  %178 = call i32 @PROC_LOCK(%struct.proc* %177)
  %179 = load i32, i32* @ACORE, align 4
  %180 = load %struct.proc*, %struct.proc** %4, align 8
  %181 = getelementptr inbounds %struct.proc, %struct.proc* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load %struct.proc*, %struct.proc** %4, align 8
  %185 = call i32 @PROC_UNLOCK(%struct.proc* %184)
  %186 = load %struct.proc*, %struct.proc** %4, align 8
  %187 = getelementptr inbounds %struct.proc, %struct.proc* %186, i32 0, i32 3
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32 (%struct.thread*, %struct.vnode*, i64, i32)*, i32 (%struct.thread*, %struct.vnode*, i64, i32)** %189, align 8
  %191 = icmp ne i32 (%struct.thread*, %struct.vnode*, i64, i32)* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %166
  %193 = load %struct.proc*, %struct.proc** %4, align 8
  %194 = getelementptr inbounds %struct.proc, %struct.proc* %193, i32 0, i32 3
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32 (%struct.thread*, %struct.vnode*, i64, i32)*, i32 (%struct.thread*, %struct.vnode*, i64, i32)** %196, align 8
  %198 = load %struct.thread*, %struct.thread** %3, align 8
  %199 = load %struct.vnode*, %struct.vnode** %6, align 8
  %200 = load i64, i64* %14, align 8
  %201 = call i32 %197(%struct.thread* %198, %struct.vnode* %199, i64 %200, i32 0)
  store i32 %201, i32* %9, align 4
  br label %204

202:                                              ; preds = %166
  %203 = load i32, i32* @ENOSYS, align 4
  store i32 %203, i32* %9, align 4
  br label %204

204:                                              ; preds = %202, %192
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i32, i32* @F_UNLCK, align 4
  %209 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 0
  store i32 %208, i32* %209, align 8
  %210 = load %struct.vnode*, %struct.vnode** %6, align 8
  %211 = load %struct.proc*, %struct.proc** %4, align 8
  %212 = ptrtoint %struct.proc* %211 to i32
  %213 = load i32, i32* @F_UNLCK, align 4
  %214 = load i32, i32* @F_FLOCK, align 4
  %215 = call i64 @VOP_ADVLOCK(%struct.vnode* %210, i32 %212, i32 %213, %struct.flock* %7, i32 %214)
  br label %216

216:                                              ; preds = %207, %204
  %217 = load %struct.vnode*, %struct.vnode** %6, align 8
  %218 = load i8*, i8** %13, align 8
  %219 = call i32 @vn_rangelock_unlock(%struct.vnode* %217, i8* %218)
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %216
  %223 = load i64, i64* @coredump_devctl, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222, %216
  br label %293

226:                                              ; preds = %222
  %227 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %227, %struct.sbuf** %17, align 8
  %228 = load %struct.thread*, %struct.thread** %3, align 8
  %229 = load %struct.proc*, %struct.proc** %4, align 8
  %230 = getelementptr inbounds %struct.proc, %struct.proc* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @vn_fullpath_global(%struct.thread* %228, i32 %231, i8** %15, i8** %16)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  br label %290

235:                                              ; preds = %226
  %236 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %237 = call i32 @sbuf_printf(%struct.sbuf* %236, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %238 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %239 = load i8*, i8** %15, align 8
  %240 = call i32 @devctl_safe_quote_sb(%struct.sbuf* %238, i8* %239)
  %241 = load i8*, i8** %16, align 8
  %242 = load i32, i32* @M_TEMP, align 4
  %243 = call i32 @free(i8* %241, i32 %242)
  %244 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %245 = call i32 @sbuf_printf(%struct.sbuf* %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %246 = load i8*, i8** %12, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 47
  br i1 %250, label %251, label %276

251:                                              ; preds = %235
  %252 = load i32, i32* @MAXPATHLEN, align 4
  %253 = load i32, i32* @M_TEMP, align 4
  %254 = load i32, i32* @M_WAITOK, align 4
  %255 = call i8* @malloc(i32 %252, i32 %253, i32 %254)
  store i8* %255, i8** %15, align 8
  %256 = load %struct.thread*, %struct.thread** %3, align 8
  %257 = load i8*, i8** %15, align 8
  %258 = load i32, i32* @UIO_SYSSPACE, align 4
  %259 = load i32, i32* @MAXPATHLEN, align 4
  %260 = load i32, i32* @MAXPATHLEN, align 4
  %261 = call i64 @kern___getcwd(%struct.thread* %256, i8* %257, i32 %258, i32 %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %251
  %264 = load i8*, i8** %15, align 8
  %265 = load i32, i32* @M_TEMP, align 4
  %266 = call i32 @free(i8* %264, i32 %265)
  br label %290

267:                                              ; preds = %251
  %268 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %269 = load i8*, i8** %15, align 8
  %270 = call i32 @devctl_safe_quote_sb(%struct.sbuf* %268, i8* %269)
  %271 = load i8*, i8** %15, align 8
  %272 = load i32, i32* @M_TEMP, align 4
  %273 = call i32 @free(i8* %271, i32 %272)
  %274 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %275 = call i32 @sbuf_putc(%struct.sbuf* %274, i8 signext 47)
  br label %276

276:                                              ; preds = %267, %235
  %277 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %278 = load i8*, i8** %12, align 8
  %279 = call i32 @devctl_safe_quote_sb(%struct.sbuf* %277, i8* %278)
  %280 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %281 = call i32 @sbuf_printf(%struct.sbuf* %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %282 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %283 = call i64 @sbuf_finish(%struct.sbuf* %282)
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %276
  %286 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %287 = call i32 @sbuf_data(%struct.sbuf* %286)
  %288 = call i32 @devctl_notify(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %285, %276
  br label %290

290:                                              ; preds = %289, %263, %234
  %291 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %292 = call i32 @sbuf_delete(%struct.sbuf* %291)
  br label %293

293:                                              ; preds = %290, %225, %135
  %294 = load %struct.vnode*, %struct.vnode** %6, align 8
  %295 = load i32, i32* @FWRITE, align 4
  %296 = load %struct.ucred*, %struct.ucred** %5, align 8
  %297 = load %struct.thread*, %struct.thread** %3, align 8
  %298 = call i32 @vn_close(%struct.vnode* %294, i32 %295, %struct.ucred* %296, %struct.thread* %297)
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %9, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %293
  %302 = load i32, i32* %10, align 4
  store i32 %302, i32* %9, align 4
  br label %303

303:                                              ; preds = %301, %293
  %304 = load i8*, i8** %12, align 8
  %305 = load i32, i32* @M_TEMP, align 4
  %306 = call i32 @free(i8* %304, i32 %305)
  %307 = load i32, i32* %9, align 4
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %303, %104, %80, %65
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @_STOPEVENT(%struct.proc*, i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @lim_cur(%struct.thread*, i32) #1

declare dso_local i64 @racct_get_available(%struct.proc*, i32) #1

declare dso_local i32 @corefile_open(i32, i64, i32, %struct.thread*, i32, i32, %struct.vnode**, i8**) #1

declare dso_local i64 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i8* @vn_rangelock_wlock(%struct.vnode*, i32, i32) #1

declare dso_local i64 @VOP_ADVLOCK(%struct.vnode*, i32, i32, %struct.flock*, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @vn_rangelock_unlock(%struct.vnode*, i8*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i64 @vn_fullpath_global(%struct.thread*, i32, i8**, i8**) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*) #1

declare dso_local i32 @devctl_safe_quote_sb(%struct.sbuf*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @kern___getcwd(%struct.thread*, i8*, i32, i32, i32) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @vn_close(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
