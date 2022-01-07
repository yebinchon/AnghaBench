; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_advlock_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_advlock_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ucred* }
%struct.flock = type { i64, i64, i32, i32 }
%struct.nfsmount = type { i32, i32, i32 (%struct.vnode*, i32, i64*, %struct.sockaddr_storage*, i32*, i32*, %struct.timeval*)*, i32, i32 (%struct.vnode*, i32, %struct.thread*, i32)* }
%struct.sockaddr_storage = type { i32 }
%struct.timeval = type { i32 }
%union.nfsfh = type { i32 }
%struct.sockaddr = type { i32 }
%struct.nlm_host = type { i32 }
%struct.rpc_callextra = type { i32*, %struct.nlm_feedback_arg*, i32, i32* }
%struct.nlm_feedback_arg = type { %struct.nfsmount*, i8* }
%struct.nlm_file_svid = type { i32, i8*, i32, i64 }
%struct.proc = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"nlm_advlock_1\00", align 1
@MNAMELEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@NLM_VERS4 = common dso_local global i32 0, align 4
@NLM_VERS = common dso_local global i32 0, align 4
@NFSMNT_SOFT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@nlm_feedback = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"F_FLOCK lock requests must be whole-file locks\00", align 1
@F_REMOTE = common dso_local global i32 0, align 4
@F_WAIT = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@nlm_svid_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*, i32, %struct.flock*, i32, i64, i64)* @nlm_advlock_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_advlock_internal(%struct.vnode* %0, i8* %1, i32 %2, %struct.flock* %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.flock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.thread*, align 8
  %16 = alloca %struct.nfsmount*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %union.nfsfh, align 4
  %20 = alloca %struct.sockaddr*, align 8
  %21 = alloca %struct.sockaddr_storage, align 4
  %22 = alloca i8*, align 8
  %23 = alloca %struct.timeval, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.nlm_host*, align 8
  %27 = alloca %struct.rpc_callextra, align 8
  %28 = alloca %struct.nlm_feedback_arg, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.ucred*, align 8
  %31 = alloca %struct.ucred*, align 8
  %32 = alloca %struct.nlm_file_svid*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.flock* %3, %struct.flock** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %36 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %36, %struct.thread** %15, align 8
  %37 = load %struct.vnode*, %struct.vnode** %8, align 8
  %38 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @MNAMELEN, align 4
  %40 = load i32, i32* @M_TEMP, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = call i8* @malloc(i32 %39, i32 %40, i32 %41)
  store i8* %42, i8** %22, align 8
  %43 = load %struct.vnode*, %struct.vnode** %8, align 8
  %44 = getelementptr inbounds %struct.vnode, %struct.vnode* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call %struct.nfsmount* @VFSTONFS(%struct.TYPE_2__* %45)
  store %struct.nfsmount* %46, %struct.nfsmount** %16, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 129
  br i1 %48, label %52, label %49

49:                                               ; preds = %7
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %60

52:                                               ; preds = %49, %7
  %53 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %54 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %53, i32 0, i32 4
  %55 = load i32 (%struct.vnode*, i32, %struct.thread*, i32)*, i32 (%struct.vnode*, i32, %struct.thread*, i32)** %54, align 8
  %56 = load %struct.vnode*, %struct.vnode** %8, align 8
  %57 = load i32, i32* @V_SAVE, align 4
  %58 = load %struct.thread*, %struct.thread** %15, align 8
  %59 = call i32 %55(%struct.vnode* %56, i32 %57, %struct.thread* %58, i32 1)
  br label %60

60:                                               ; preds = %52, %49
  %61 = load i8*, i8** %22, align 8
  %62 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %63 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strcpy(i8* %61, i32 %64)
  %66 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %67 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %66, i32 0, i32 2
  %68 = load i32 (%struct.vnode*, i32, i64*, %struct.sockaddr_storage*, i32*, i32*, %struct.timeval*)*, i32 (%struct.vnode*, i32, i64*, %struct.sockaddr_storage*, i32*, i32*, %struct.timeval*)** %67, align 8
  %69 = load %struct.vnode*, %struct.vnode** %8, align 8
  %70 = bitcast %union.nfsfh* %19 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %68(%struct.vnode* %69, i32 %71, i64* %18, %struct.sockaddr_storage* %21, i32* %35, i32* %17, %struct.timeval* %23)
  %73 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr*
  store %struct.sockaddr* %73, %struct.sockaddr** %20, align 8
  %74 = load i32, i32* %35, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* @NLM_VERS4, align 4
  store i32 %77, i32* %25, align 4
  br label %80

78:                                               ; preds = %60
  %79 = load i32, i32* @NLM_VERS, align 4
  store i32 %79, i32* %25, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %82 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NFSMNT_SOFT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %89 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %24, align 4
  br label %93

91:                                               ; preds = %80
  %92 = load i32, i32* @INT_MAX, align 4
  store i32 %92, i32* %24, align 4
  br label %93

93:                                               ; preds = %91, %87
  %94 = load %struct.thread*, %struct.thread** %15, align 8
  %95 = getelementptr inbounds %struct.thread, %struct.thread* %94, i32 0, i32 0
  %96 = load %struct.ucred*, %struct.ucred** %95, align 8
  store %struct.ucred* %96, %struct.ucred** %30, align 8
  %97 = load %struct.vnode*, %struct.vnode** %8, align 8
  %98 = getelementptr inbounds %struct.vnode, %struct.vnode* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load %struct.ucred*, %struct.ucred** %100, align 8
  %102 = load %struct.thread*, %struct.thread** %15, align 8
  %103 = getelementptr inbounds %struct.thread, %struct.thread* %102, i32 0, i32 0
  store %struct.ucred* %101, %struct.ucred** %103, align 8
  %104 = load %struct.thread*, %struct.thread** %15, align 8
  %105 = getelementptr inbounds %struct.thread, %struct.thread* %104, i32 0, i32 0
  %106 = load %struct.ucred*, %struct.ucred** %105, align 8
  %107 = call i32 @crhold(%struct.ucred* %106)
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %93
  %111 = load %struct.vnode*, %struct.vnode** %8, align 8
  %112 = call i32 @VOP_UNLOCK(%struct.vnode* %111, i32 0)
  br label %113

113:                                              ; preds = %110, %93
  %114 = load i8*, i8** %22, align 8
  %115 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %116 = load i32, i32* %25, align 4
  %117 = call %struct.nlm_host* @nlm_find_host_by_name(i8* %114, %struct.sockaddr* %115, i32 %116)
  store %struct.nlm_host* %117, %struct.nlm_host** %26, align 8
  %118 = load %struct.ucred*, %struct.ucred** %30, align 8
  %119 = call i32* @authunix_create(%struct.ucred* %118)
  store i32* %119, i32** %29, align 8
  %120 = call i32 @memset(%struct.rpc_callextra* %27, i32 0, i32 32)
  %121 = load i8*, i8** @FALSE, align 8
  %122 = getelementptr inbounds %struct.nlm_feedback_arg, %struct.nlm_feedback_arg* %28, i32 0, i32 1
  store i8* %121, i8** %122, align 8
  %123 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %124 = getelementptr inbounds %struct.nlm_feedback_arg, %struct.nlm_feedback_arg* %28, i32 0, i32 0
  store %struct.nfsmount* %123, %struct.nfsmount** %124, align 8
  %125 = load i32*, i32** %29, align 8
  %126 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %27, i32 0, i32 3
  store i32* %125, i32** %126, align 8
  %127 = load i32, i32* @nlm_feedback, align 4
  %128 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %27, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  %129 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %27, i32 0, i32 1
  store %struct.nlm_feedback_arg* %28, %struct.nlm_feedback_arg** %129, align 8
  %130 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %27, i32 0, i32 0
  store i32* null, i32** %130, align 8
  store %struct.nlm_file_svid* null, %struct.nlm_file_svid** %32, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @F_FLOCK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %113
  %136 = load i8*, i8** %9, align 8
  %137 = call %struct.nlm_file_svid* @nlm_find_svid(i8* %136)
  store %struct.nlm_file_svid* %137, %struct.nlm_file_svid** %32, align 8
  %138 = load %struct.flock*, %struct.flock** %11, align 8
  %139 = getelementptr inbounds %struct.flock, %struct.flock* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.flock*, %struct.flock** %11, align 8
  %144 = getelementptr inbounds %struct.flock, %struct.flock* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br label %147

147:                                              ; preds = %142, %135
  %148 = phi i1 [ false, %135 ], [ %146, %142 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @KASSERT(i32 %149, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %151 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %152 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %147
  %156 = load %struct.ucred*, %struct.ucred** %30, align 8
  %157 = call i64 @crdup(%struct.ucred* %156)
  %158 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %159 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %155, %147
  %161 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %162 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %33, align 4
  br label %179

164:                                              ; preds = %113
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @F_REMOTE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.flock*, %struct.flock** %11, align 8
  %171 = getelementptr inbounds %struct.flock, %struct.flock* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %33, align 4
  br label %178

173:                                              ; preds = %164
  %174 = load i8*, i8** %9, align 8
  %175 = bitcast i8* %174 to %struct.proc*
  %176 = getelementptr inbounds %struct.proc, %struct.proc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %33, align 4
  br label %178

178:                                              ; preds = %173, %169
  br label %179

179:                                              ; preds = %178, %160
  %180 = load i32, i32* %10, align 4
  switch i32 %180, label %353 [
    i32 129, label %181
    i32 128, label %305
    i32 130, label %340
  ]

181:                                              ; preds = %179
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @F_FLOCK, align 4
  %184 = load i32, i32* @F_WAIT, align 4
  %185 = or i32 %183, %184
  %186 = and i32 %182, %185
  %187 = load i32, i32* @F_FLOCK, align 4
  %188 = load i32, i32* @F_WAIT, align 4
  %189 = or i32 %187, %188
  %190 = icmp eq i32 %186, %189
  br i1 %190, label %191, label %268

191:                                              ; preds = %181
  %192 = load %struct.flock*, %struct.flock** %11, align 8
  %193 = getelementptr inbounds %struct.flock, %struct.flock* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @F_WRLCK, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %268

197:                                              ; preds = %191
  %198 = load %struct.nlm_host*, %struct.nlm_host** %26, align 8
  %199 = load i32, i32* %25, align 4
  %200 = load i32, i32* %24, align 4
  %201 = load %struct.vnode*, %struct.vnode** %8, align 8
  %202 = load %struct.flock*, %struct.flock** %11, align 8
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @F_WAIT, align 4
  %205 = xor i32 %204, -1
  %206 = and i32 %203, %205
  %207 = load i32, i32* %33, align 4
  %208 = load i64, i64* %18, align 8
  %209 = bitcast %union.nfsfh* %19 to i32*
  %210 = load i32, i32* %17, align 4
  %211 = load i64, i64* %13, align 8
  %212 = call i32 @nlm_setlock(%struct.nlm_host* %198, %struct.rpc_callextra* %27, i32 %199, %struct.timeval* %23, i32 %200, %struct.vnode* %201, i32 129, %struct.flock* %202, i32 %206, i32 %207, i64 %208, i32* %209, i32 %210, i64 %211)
  store i32 %212, i32* %34, align 4
  %213 = load i32, i32* %34, align 4
  %214 = load i32, i32* @EAGAIN, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %267

216:                                              ; preds = %197
  %217 = load %struct.flock*, %struct.flock** %11, align 8
  %218 = getelementptr inbounds %struct.flock, %struct.flock* %217, i32 0, i32 3
  store i32 128, i32* %218, align 4
  %219 = load %struct.nlm_host*, %struct.nlm_host** %26, align 8
  %220 = load i32, i32* %25, align 4
  %221 = load i32, i32* %24, align 4
  %222 = load %struct.vnode*, %struct.vnode** %8, align 8
  %223 = load %struct.flock*, %struct.flock** %11, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %33, align 4
  %226 = load i64, i64* %18, align 8
  %227 = bitcast %union.nfsfh* %19 to i32*
  %228 = load i32, i32* %17, align 4
  %229 = call i32 @nlm_clearlock(%struct.nlm_host* %219, %struct.rpc_callextra* %27, i32 %220, %struct.timeval* %23, i32 %221, %struct.vnode* %222, i32 128, %struct.flock* %223, i32 %224, i32 %225, i64 %226, i32* %227, i32 %228)
  store i32 %229, i32* %34, align 4
  %230 = load i32, i32* @F_WRLCK, align 4
  %231 = load %struct.flock*, %struct.flock** %11, align 8
  %232 = getelementptr inbounds %struct.flock, %struct.flock* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %34, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %266, label %235

235:                                              ; preds = %216
  %236 = call i32 @mtx_lock(i32* @nlm_svid_lock)
  %237 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %238 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %249

241:                                              ; preds = %235
  %242 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %243 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %243, align 8
  %246 = load i8*, i8** @FALSE, align 8
  %247 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %248 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  br label %249

249:                                              ; preds = %241, %235
  %250 = call i32 @mtx_unlock(i32* @nlm_svid_lock)
  %251 = load i32, i32* @F_WAIT, align 4
  %252 = load i32, i32* %12, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %12, align 4
  %254 = load %struct.nlm_host*, %struct.nlm_host** %26, align 8
  %255 = load i32, i32* %25, align 4
  %256 = load i32, i32* %24, align 4
  %257 = load %struct.vnode*, %struct.vnode** %8, align 8
  %258 = load %struct.flock*, %struct.flock** %11, align 8
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %33, align 4
  %261 = load i64, i64* %18, align 8
  %262 = bitcast %union.nfsfh* %19 to i32*
  %263 = load i32, i32* %17, align 4
  %264 = load i64, i64* %13, align 8
  %265 = call i32 @nlm_setlock(%struct.nlm_host* %254, %struct.rpc_callextra* %27, i32 %255, %struct.timeval* %23, i32 %256, %struct.vnode* %257, i32 129, %struct.flock* %258, i32 %259, i32 %260, i64 %261, i32* %262, i32 %263, i64 %264)
  store i32 %265, i32* %34, align 4
  br label %266

266:                                              ; preds = %249, %216
  br label %267

267:                                              ; preds = %266, %197
  br label %282

268:                                              ; preds = %191, %181
  %269 = load %struct.nlm_host*, %struct.nlm_host** %26, align 8
  %270 = load i32, i32* %25, align 4
  %271 = load i32, i32* %24, align 4
  %272 = load %struct.vnode*, %struct.vnode** %8, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.flock*, %struct.flock** %11, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %33, align 4
  %277 = load i64, i64* %18, align 8
  %278 = bitcast %union.nfsfh* %19 to i32*
  %279 = load i32, i32* %17, align 4
  %280 = load i64, i64* %13, align 8
  %281 = call i32 @nlm_setlock(%struct.nlm_host* %269, %struct.rpc_callextra* %27, i32 %270, %struct.timeval* %23, i32 %271, %struct.vnode* %272, i32 %273, %struct.flock* %274, i32 %275, i32 %276, i64 %277, i32* %278, i32 %279, i64 %280)
  store i32 %281, i32* %34, align 4
  br label %282

282:                                              ; preds = %268, %267
  %283 = load i32, i32* %34, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %304, label %285

285:                                              ; preds = %282
  %286 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %287 = icmp ne %struct.nlm_file_svid* %286, null
  br i1 %287, label %288, label %304

288:                                              ; preds = %285
  %289 = call i32 @mtx_lock(i32* @nlm_svid_lock)
  %290 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %291 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %290, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %302, label %294

294:                                              ; preds = %288
  %295 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %296 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  %299 = load i8*, i8** @TRUE, align 8
  %300 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %301 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %300, i32 0, i32 1
  store i8* %299, i8** %301, align 8
  br label %302

302:                                              ; preds = %294, %288
  %303 = call i32 @mtx_unlock(i32* @nlm_svid_lock)
  br label %304

304:                                              ; preds = %302, %285, %282
  br label %355

305:                                              ; preds = %179
  %306 = load %struct.nlm_host*, %struct.nlm_host** %26, align 8
  %307 = load i32, i32* %25, align 4
  %308 = load i32, i32* %24, align 4
  %309 = load %struct.vnode*, %struct.vnode** %8, align 8
  %310 = load i32, i32* %10, align 4
  %311 = load %struct.flock*, %struct.flock** %11, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %33, align 4
  %314 = load i64, i64* %18, align 8
  %315 = bitcast %union.nfsfh* %19 to i32*
  %316 = load i32, i32* %17, align 4
  %317 = call i32 @nlm_clearlock(%struct.nlm_host* %306, %struct.rpc_callextra* %27, i32 %307, %struct.timeval* %23, i32 %308, %struct.vnode* %309, i32 %310, %struct.flock* %311, i32 %312, i32 %313, i64 %314, i32* %315, i32 %316)
  store i32 %317, i32* %34, align 4
  %318 = load i32, i32* %34, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %339, label %320

320:                                              ; preds = %305
  %321 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %322 = icmp ne %struct.nlm_file_svid* %321, null
  br i1 %322, label %323, label %339

323:                                              ; preds = %320
  %324 = call i32 @mtx_lock(i32* @nlm_svid_lock)
  %325 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %326 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %325, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %337

329:                                              ; preds = %323
  %330 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %331 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, -1
  store i32 %333, i32* %331, align 8
  %334 = load i8*, i8** @FALSE, align 8
  %335 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %336 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %335, i32 0, i32 1
  store i8* %334, i8** %336, align 8
  br label %337

337:                                              ; preds = %329, %323
  %338 = call i32 @mtx_unlock(i32* @nlm_svid_lock)
  br label %339

339:                                              ; preds = %337, %320, %305
  br label %355

340:                                              ; preds = %179
  %341 = load %struct.nlm_host*, %struct.nlm_host** %26, align 8
  %342 = load i32, i32* %25, align 4
  %343 = load i32, i32* %24, align 4
  %344 = load %struct.vnode*, %struct.vnode** %8, align 8
  %345 = load i32, i32* %10, align 4
  %346 = load %struct.flock*, %struct.flock** %11, align 8
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %33, align 4
  %349 = load i64, i64* %18, align 8
  %350 = bitcast %union.nfsfh* %19 to i32*
  %351 = load i32, i32* %17, align 4
  %352 = call i32 @nlm_getlock(%struct.nlm_host* %341, %struct.rpc_callextra* %27, i32 %342, %struct.timeval* %23, i32 %343, %struct.vnode* %344, i32 %345, %struct.flock* %346, i32 %347, i32 %348, i64 %349, i32* %350, i32 %351)
  store i32 %352, i32* %34, align 4
  br label %355

353:                                              ; preds = %179
  %354 = load i32, i32* @EINVAL, align 4
  store i32 %354, i32* %34, align 4
  br label %355

355:                                              ; preds = %353, %340, %339, %304
  %356 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %357 = icmp ne %struct.nlm_file_svid* %356, null
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %32, align 8
  %360 = call i32 @nlm_free_svid(%struct.nlm_file_svid* %359)
  br label %361

361:                                              ; preds = %358, %355
  %362 = load %struct.thread*, %struct.thread** %15, align 8
  %363 = getelementptr inbounds %struct.thread, %struct.thread* %362, i32 0, i32 0
  %364 = load %struct.ucred*, %struct.ucred** %363, align 8
  store %struct.ucred* %364, %struct.ucred** %31, align 8
  %365 = load %struct.ucred*, %struct.ucred** %30, align 8
  %366 = load %struct.thread*, %struct.thread** %15, align 8
  %367 = getelementptr inbounds %struct.thread, %struct.thread* %366, i32 0, i32 0
  store %struct.ucred* %365, %struct.ucred** %367, align 8
  %368 = load %struct.ucred*, %struct.ucred** %31, align 8
  %369 = call i32 @crfree(%struct.ucred* %368)
  %370 = load i32*, i32** %29, align 8
  %371 = call i32 @AUTH_DESTROY(i32* %370)
  %372 = load %struct.nlm_host*, %struct.nlm_host** %26, align 8
  %373 = call i32 @nlm_host_release(%struct.nlm_host* %372)
  %374 = load i8*, i8** %22, align 8
  %375 = load i32, i32* @M_TEMP, align 4
  %376 = call i32 @free(i8* %374, i32 %375)
  %377 = load i32, i32* %34, align 4
  ret i32 %377
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local %struct.nfsmount* @VFSTONFS(%struct.TYPE_2__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local %struct.nlm_host* @nlm_find_host_by_name(i8*, %struct.sockaddr*, i32) #1

declare dso_local i32* @authunix_create(%struct.ucred*) #1

declare dso_local i32 @memset(%struct.rpc_callextra*, i32, i32) #1

declare dso_local %struct.nlm_file_svid* @nlm_find_svid(i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @crdup(%struct.ucred*) #1

declare dso_local i32 @nlm_setlock(%struct.nlm_host*, %struct.rpc_callextra*, i32, %struct.timeval*, i32, %struct.vnode*, i32, %struct.flock*, i32, i32, i64, i32*, i32, i64) #1

declare dso_local i32 @nlm_clearlock(%struct.nlm_host*, %struct.rpc_callextra*, i32, %struct.timeval*, i32, %struct.vnode*, i32, %struct.flock*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nlm_getlock(%struct.nlm_host*, %struct.rpc_callextra*, i32, %struct.timeval*, i32, %struct.vnode*, i32, %struct.flock*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @nlm_free_svid(%struct.nlm_file_svid*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @AUTH_DESTROY(i32*) #1

declare dso_local i32 @nlm_host_release(%struct.nlm_host*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
