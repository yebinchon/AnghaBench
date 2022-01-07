; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sys_semget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sys_semget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__, i32*, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.thread = type { i32*, i32, %struct.ucred* }
%struct.ucred = type { i64, i32, i32 }
%struct.semget_args = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"semget(0x%x, %d, 0%o)\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@sem_mtx = common dso_local global i32 0, align 4
@IPC_PRIVATE = common dso_local global i32 0, align 4
@seminfo = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@sema = common dso_local global %struct.TYPE_11__* null, align 8
@SEM_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"found public key\0A\00", align 1
@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"not exclusive\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"too small\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"need to allocate the semid_kernel\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"nsems out of range (0<%d<=%d)\0A\00", align 1
@semtot = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"not enough semaphores left (need %d, got %d)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"no more semid_kernel's available\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"semid %d is available\0A\00", align 1
@sema_mtx = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"Lost semaphore %d\00", align 1
@time_second = common dso_local global i32 0, align 4
@sem = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"sembase = %p, next = %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"didn't find it and wasn't asked to create it\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RACCT_NSEM = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_semget(%struct.thread* %0, %struct.semget_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.semget_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.semget_args* %1, %struct.semget_args** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.semget_args*, %struct.semget_args** %5, align 8
  %14 = getelementptr inbounds %struct.semget_args, %struct.semget_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.semget_args*, %struct.semget_args** %5, align 8
  %17 = getelementptr inbounds %struct.semget_args, %struct.semget_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.semget_args*, %struct.semget_args** %5, align 8
  %20 = getelementptr inbounds %struct.semget_args, %struct.semget_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 2
  %24 = load %struct.ucred*, %struct.ucred** %23, align 8
  store %struct.ucred* %24, %struct.ucred** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DPRINTF(i8* %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @AUDIT_ARG_VALUE(i32 %31)
  %33 = load %struct.ucred*, %struct.ucred** %11, align 8
  %34 = call i32* @sem_find_prison(%struct.ucred* %33)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOSYS, align 4
  store i32 %37, i32* %3, align 4
  br label %411

38:                                               ; preds = %2
  %39 = call i32 @mtx_lock(i32* @sem_mtx)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IPC_PRIVATE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %148

43:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %94, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 0), align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %97

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SEM_ALLOC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %48
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = icmp ne %struct.TYPE_13__* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %60
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ucred*, %struct.ucred** %11, align 8
  %78 = getelementptr inbounds %struct.ucred, %struct.ucred* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %68
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %97

93:                                               ; preds = %81, %68, %60, %48
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %44

97:                                               ; preds = %92, %44
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 0), align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %97
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %102)
  %104 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @IPC_CREAT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @IPC_EXCL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @EEXIST, align 4
  store i32 %116, i32* %7, align 4
  br label %408

117:                                              ; preds = %109, %101
  %118 = load %struct.thread*, %struct.thread** %4, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 448
  %127 = call i32 @ipcperm(%struct.thread* %118, %struct.TYPE_12__* %124, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  br label %408

130:                                              ; preds = %117
  %131 = load i32, i32* %9, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %130
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %133
  %144 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @EINVAL, align 4
  store i32 %145, i32* %7, align 4
  br label %408

146:                                              ; preds = %133, %130
  br label %393

147:                                              ; preds = %97
  br label %148

148:                                              ; preds = %147, %38
  %149 = call i32 @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @IPC_PRIVATE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @IPC_CREAT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %389

158:                                              ; preds = %153, %148
  %159 = load i32, i32* %9, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 1), align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %161, %158
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 1), align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @DPRINTF(i8* %169)
  %171 = load i32, i32* @EINVAL, align 4
  store i32 %171, i32* %7, align 4
  br label %408

172:                                              ; preds = %161
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 2), align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* @semtot, align 8
  %178 = sub i64 %176, %177
  %179 = icmp ugt i64 %174, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 2), align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* @semtot, align 8
  %185 = sub i64 %183, %184
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @DPRINTF(i8* %186)
  %188 = load i32, i32* @ENOSPC, align 4
  store i32 %188, i32* %7, align 4
  br label %408

189:                                              ; preds = %172
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %208, %189
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 0), align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %190
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @SEM_ALLOC, align 4
  %204 = and i32 %202, %203
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %194
  br label %211

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %190

211:                                              ; preds = %206, %190
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 0), align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %217 = load i32, i32* @ENOSPC, align 4
  store i32 %217, i32* %7, align 4
  br label %408

218:                                              ; preds = %211
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = inttoptr i64 %220 to i8*
  %222 = call i32 @DPRINTF(i8* %221)
  %223 = load i32*, i32** @sema_mtx, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = call i32 @mtx_lock(i32* %226)
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @SEM_ALLOC, align 4
  %237 = and i32 %235, %236
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 @KASSERT(i32 %239, i8* %242)
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  store i32 %244, i32* %251, align 4
  %252 = load %struct.ucred*, %struct.ucred** %11, align 8
  %253 = getelementptr inbounds %struct.ucred, %struct.ucred* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 6
  store i32 %254, i32* %261, align 4
  %262 = load %struct.ucred*, %struct.ucred** %11, align 8
  %263 = getelementptr inbounds %struct.ucred, %struct.ucred* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 5
  store i32 %264, i32* %271, align 4
  %272 = load %struct.ucred*, %struct.ucred** %11, align 8
  %273 = getelementptr inbounds %struct.ucred, %struct.ucred* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 4
  store i32 %274, i32* %281, align 4
  %282 = load %struct.ucred*, %struct.ucred** %11, align 8
  %283 = getelementptr inbounds %struct.ucred, %struct.ucred* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  store i32 %284, i32* %291, align 4
  %292 = load i32, i32* %10, align 4
  %293 = and i32 %292, 511
  %294 = load i32, i32* @SEM_ALLOC, align 4
  %295 = or i32 %293, %294
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  store i32 %295, i32* %302, align 4
  %303 = load %struct.ucred*, %struct.ucred** %11, align 8
  %304 = call %struct.TYPE_13__* @crhold(%struct.ucred* %303)
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 1
  store %struct.TYPE_13__* %304, %struct.TYPE_13__** %309, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  %319 = and i32 %318, 32767
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %321 = load i32, i32* %6, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 2
  store i32 %319, i32* %326, align 4
  %327 = load i32, i32* %9, align 4
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  store i32 %327, i32* %333, align 8
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %335 = load i32, i32* %6, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 4
  store i64 0, i64* %339, align 8
  %340 = load i32, i32* @time_second, align 4
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %342 = load i32, i32* %6, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 3
  store i32 %340, i32* %346, align 8
  %347 = load i32*, i32** @sem, align 8
  %348 = load i64, i64* @semtot, align 8
  %349 = getelementptr inbounds i32, i32* %347, i64 %348
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 2
  store i32* %349, i32** %355, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = load i64, i64* @semtot, align 8
  %359 = add i64 %358, %357
  store i64 %359, i64* @semtot, align 8
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = mul i64 4, %368
  %370 = trunc i64 %369 to i32
  %371 = call i32 @bzero(i32* %366, i32 %370)
  %372 = load i32*, i32** @sema_mtx, align 8
  %373 = load i32, i32* %6, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = call i32 @mtx_unlock(i32* %375)
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %378 = load i32, i32* %6, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 2
  %383 = load i32*, i32** %382, align 8
  %384 = load i32*, i32** @sem, align 8
  %385 = load i64, i64* @semtot, align 8
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  %387 = bitcast i32* %386 to i8*
  %388 = call i32 @DPRINTF(i8* %387)
  br label %392

389:                                              ; preds = %153
  %390 = call i32 @DPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %391 = load i32, i32* @ENOENT, align 4
  store i32 %391, i32* %7, align 4
  br label %408

392:                                              ; preds = %218
  br label %393

393:                                              ; preds = %392, %146
  %394 = load i32, i32* %6, align 4
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sema, align 8
  %396 = load i32, i32* %6, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 1
  %401 = bitcast %struct.TYPE_12__* %12 to i8*
  %402 = bitcast %struct.TYPE_12__* %400 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %401, i8* align 4 %402, i64 28, i1 false)
  %403 = call i32 @IXSEQ_TO_IPCID(i32 %394, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %12)
  %404 = load %struct.thread*, %struct.thread** %4, align 8
  %405 = getelementptr inbounds %struct.thread, %struct.thread* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 0
  store i32 %403, i32* %407, align 4
  br label %408

408:                                              ; preds = %393, %389, %215, %180, %165, %143, %129, %114
  %409 = call i32 @mtx_unlock(i32* @sem_mtx)
  %410 = load i32, i32* %7, align 4
  store i32 %410, i32* %3, align 4
  br label %411

411:                                              ; preds = %408, %36
  %412 = load i32, i32* %3, align 4
  ret i32 %412
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local i32* @sem_find_prison(%struct.ucred*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local i32 @ipcperm(%struct.thread*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @crhold(%struct.ucred*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @IXSEQ_TO_IPCID(i32, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
