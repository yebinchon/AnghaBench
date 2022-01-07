; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_kern_shmat_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_kern_shmat_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.thread = type { i32*, i32, %struct.proc* }
%struct.proc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, %struct.shmmap_state* }
%struct.shmmap_state = type { i32, i32 }
%struct.prison = type { i32 }
%struct.shmid_kernel = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@shminfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@M_SHM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"raced\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SHM_RDONLY = common dso_local global i32 0, align 4
@IPC_R = common dso_local global i32 0, align 4
@IPC_W = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@MAP_INHERIT_SHARE = common dso_local global i32 0, align 4
@MAP_PREFAULT_PARTIAL = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@SHM_RND = common dso_local global i32 0, align 4
@SHMLBA = common dso_local global i32 0, align 4
@SHM_REMAP = common dso_local global i32 0, align 4
@MAP_REMAP = common dso_local global i32 0, align 4
@VMFS_NO_SPACE = common dso_local global i32 0, align 4
@RLIMIT_DATA = common dso_local global i32 0, align 4
@VMFS_OPTIMAL_SPACE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i8*, i32)* @kern_shmat_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_shmat_locked(%struct.thread* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.prison*, align 8
  %11 = alloca %struct.proc*, align 8
  %12 = alloca %struct.shmid_kernel*, align 8
  %13 = alloca %struct.shmmap_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 2
  %24 = load %struct.proc*, %struct.proc** %23, align 8
  store %struct.proc* %24, %struct.proc** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @AUDIT_ARG_VALUE(i32 %27)
  %29 = call i32 (...) @SYSVSHM_ASSERT_LOCKED()
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.prison* @shm_find_prison(i32 %32)
  store %struct.prison* %33, %struct.prison** %10, align 8
  %34 = load %struct.prison*, %struct.prison** %10, align 8
  %35 = icmp eq %struct.prison* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOSYS, align 4
  store i32 %37, i32* %5, align 4
  br label %258

38:                                               ; preds = %4
  %39 = load %struct.proc*, %struct.proc** %11, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.shmmap_state*, %struct.shmmap_state** %42, align 8
  store %struct.shmmap_state* %43, %struct.shmmap_state** %13, align 8
  %44 = load %struct.shmmap_state*, %struct.shmmap_state** %13, align 8
  %45 = icmp eq %struct.shmmap_state* %44, null
  br i1 %45, label %46, label %81

46:                                               ; preds = %38
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shminfo, i32 0, i32 0), align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @M_SHM, align 4
  %52 = load i32, i32* @M_WAITOK, align 4
  %53 = call %struct.shmmap_state* @malloc(i32 %50, i32 %51, i32 %52)
  store %struct.shmmap_state* %53, %struct.shmmap_state** %13, align 8
  store i32 0, i32* %20, align 4
  br label %54

54:                                               ; preds = %64, %46
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shminfo, i32 0, i32 0), align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.shmmap_state*, %struct.shmmap_state** %13, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %59, i64 %61
  %63 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 4
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %20, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %20, align 4
  br label %54

67:                                               ; preds = %54
  %68 = load %struct.proc*, %struct.proc** %11, align 8
  %69 = getelementptr inbounds %struct.proc, %struct.proc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load %struct.shmmap_state*, %struct.shmmap_state** %71, align 8
  %73 = icmp eq %struct.shmmap_state* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @KASSERT(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.shmmap_state*, %struct.shmmap_state** %13, align 8
  %77 = load %struct.proc*, %struct.proc** %11, align 8
  %78 = getelementptr inbounds %struct.proc, %struct.proc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store %struct.shmmap_state* %76, %struct.shmmap_state** %80, align 8
  br label %81

81:                                               ; preds = %67, %38
  %82 = load %struct.prison*, %struct.prison** %10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call %struct.shmid_kernel* @shm_find_segment(%struct.prison* %82, i32 %83, i32 1)
  store %struct.shmid_kernel* %84, %struct.shmid_kernel** %12, align 8
  %85 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %86 = icmp eq %struct.shmid_kernel* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %5, align 4
  br label %258

89:                                               ; preds = %81
  %90 = load %struct.thread*, %struct.thread** %6, align 8
  %91 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %92 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @SHM_RDONLY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @IPC_R, align 4
  br label %104

100:                                              ; preds = %89
  %101 = load i32, i32* @IPC_R, align 4
  %102 = load i32, i32* @IPC_W, align 4
  %103 = or i32 %101, %102
  br label %104

104:                                              ; preds = %100, %98
  %105 = phi i32 [ %99, %98 ], [ %103, %100 ]
  %106 = call i32 @ipcperm(%struct.thread* %90, i32* %93, i32 %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %5, align 4
  br label %258

111:                                              ; preds = %104
  store i32 0, i32* %20, align 4
  br label %112

112:                                              ; preds = %125, %111
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shminfo, i32 0, i32 0), align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load %struct.shmmap_state*, %struct.shmmap_state** %13, align 8
  %118 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %128

122:                                              ; preds = %116
  %123 = load %struct.shmmap_state*, %struct.shmmap_state** %13, align 8
  %124 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %123, i32 1
  store %struct.shmmap_state* %124, %struct.shmmap_state** %13, align 8
  br label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %20, align 4
  br label %112

128:                                              ; preds = %121, %112
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shminfo, i32 0, i32 0), align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @EMFILE, align 4
  store i32 %133, i32* %5, align 4
  br label %258

134:                                              ; preds = %128
  %135 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %136 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @round_page(i32 %138)
  store i8* %139, i8** %16, align 8
  %140 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* @MAP_INHERIT_SHARE, align 4
  %142 = load i32, i32* @MAP_PREFAULT_PARTIAL, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @SHM_RDONLY, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %134
  %149 = load i32, i32* @VM_PROT_WRITE, align 4
  %150 = load i32, i32* %15, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %148, %134
  %153 = load i8*, i8** %8, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %189

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @SHM_RND, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i8*, i8** %8, align 8
  %162 = ptrtoint i8* %161 to i32
  %163 = load i32, i32* @SHMLBA, align 4
  %164 = call i32 @rounddown2(i32 %162, i32 %163)
  store i32 %164, i32* %14, align 4
  br label %178

165:                                              ; preds = %155
  %166 = load i8*, i8** %8, align 8
  %167 = ptrtoint i8* %166 to i32
  %168 = load i32, i32* @SHMLBA, align 4
  %169 = sub nsw i32 %168, 1
  %170 = and i32 %167, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load i8*, i8** %8, align 8
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %14, align 4
  br label %177

175:                                              ; preds = %165
  %176 = load i32, i32* @EINVAL, align 4
  store i32 %176, i32* %5, align 4
  br label %258

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177, %160
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @SHM_REMAP, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32, i32* @MAP_REMAP, align 4
  %185 = load i32, i32* %17, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %17, align 4
  br label %187

187:                                              ; preds = %183, %178
  %188 = load i32, i32* @VMFS_NO_SPACE, align 4
  store i32 %188, i32* %19, align 4
  br label %203

189:                                              ; preds = %152
  %190 = load %struct.proc*, %struct.proc** %11, align 8
  %191 = getelementptr inbounds %struct.proc, %struct.proc* %190, i32 0, i32 1
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct.thread*, %struct.thread** %6, align 8
  %197 = load i32, i32* @RLIMIT_DATA, align 4
  %198 = call i32 @lim_max(%struct.thread* %196, i32 %197)
  %199 = add nsw i32 %195, %198
  %200 = call i8* @round_page(i32 %199)
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* @VMFS_OPTIMAL_SPACE, align 4
  store i32 %202, i32* %19, align 4
  br label %203

203:                                              ; preds = %189, %187
  %204 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %205 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @vm_object_reference(i32 %206)
  %208 = load %struct.proc*, %struct.proc** %11, align 8
  %209 = getelementptr inbounds %struct.proc, %struct.proc* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %213 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i8*, i8** %16, align 8
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @vm_map_find(i32* %211, i32 %214, i32 0, i32* %14, i8* %215, i32 0, i32 %216, i32 %217, i32 %218, i32 %219)
  store i32 %220, i32* %21, align 4
  %221 = load i32, i32* %21, align 4
  %222 = load i32, i32* @KERN_SUCCESS, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %203
  %225 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %226 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @vm_object_deallocate(i32 %227)
  %229 = load i32, i32* @ENOMEM, align 4
  store i32 %229, i32* %5, align 4
  br label %258

230:                                              ; preds = %203
  %231 = load i32, i32* %14, align 4
  %232 = load %struct.shmmap_state*, %struct.shmmap_state** %13, align 8
  %233 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %7, align 4
  %235 = load %struct.shmmap_state*, %struct.shmmap_state** %13, align 8
  %236 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  %237 = load %struct.proc*, %struct.proc** %11, align 8
  %238 = getelementptr inbounds %struct.proc, %struct.proc* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %241 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 3
  store i32 %239, i32* %242, align 4
  %243 = load i32, i32* @time_second, align 4
  %244 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %245 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  store i32 %243, i32* %246, align 4
  %247 = load %struct.shmid_kernel*, %struct.shmid_kernel** %12, align 8
  %248 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* %14, align 4
  %253 = load %struct.thread*, %struct.thread** %6, align 8
  %254 = getelementptr inbounds %struct.thread, %struct.thread* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  store i32 %252, i32* %256, align 4
  %257 = load i32, i32* %18, align 4
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %230, %224, %175, %132, %109, %87, %36
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local i32 @SYSVSHM_ASSERT_LOCKED(...) #1

declare dso_local %struct.prison* @shm_find_prison(i32) #1

declare dso_local %struct.shmmap_state* @malloc(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.shmid_kernel* @shm_find_segment(%struct.prison*, i32, i32) #1

declare dso_local i32 @ipcperm(%struct.thread*, i32*, i32) #1

declare dso_local i8* @round_page(i32) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @lim_max(%struct.thread*, i32) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @vm_map_find(i32*, i32, i32, i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
