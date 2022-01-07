; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_kern_semctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_kern_semctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.semid_kernel = type { %struct.TYPE_12__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mtx = type { i32 }
%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%union.semun = type { %struct.semid_ds* }
%struct.semid_ds = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8*, i32, i32 }
%struct.prison = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"call to semctl(%d, %d, %d, 0x%p)\0A\00", align 1
@sem = common dso_local global i32* null, align 8
@ENOSYS = common dso_local global i32 0, align 4
@seminfo = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@sema = common dso_local global %struct.semid_kernel* null, align 8
@sema_mtx = common dso_local global %struct.mtx* null, align 8
@SEM_ALLOC = common dso_local global i32 0, align 4
@IPC_R = common dso_local global i32 0, align 4
@IPC_PRIVATE = common dso_local global i8* null, align 8
@sem_mtx = common dso_local global %struct.mtx zeroinitializer, align 4
@IPC_M = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"nsems changed\00", align 1
@IPC_W = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_semctl(%struct.thread* %0, i32 %1, i32 %2, i32 %3, %union.semun* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.semun*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ucred*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.prison*, align 8
  %19 = alloca %struct.semid_ds*, align 8
  %20 = alloca %struct.semid_kernel*, align 8
  %21 = alloca %struct.mtx*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca { i64, i32 }, align 8
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %union.semun* %4, %union.semun** %12, align 8
  store i32* %5, i32** %13, align 8
  %26 = load %struct.thread*, %struct.thread** %8, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.ucred*, %struct.ucred** %27, align 8
  store %struct.ucred* %28, %struct.ucred** %15, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %union.semun*, %union.semun** %12, align 8
  %33 = bitcast %union.semun* %32 to i8*
  %34 = call i32 @DPRINTF(i8* %33)
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @AUDIT_ARG_SVIPC_CMD(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %37)
  %39 = load %struct.thread*, %struct.thread** %8, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load %struct.ucred*, %struct.ucred** %40, align 8
  %42 = call %struct.prison* @sem_find_prison(%struct.ucred* %41)
  store %struct.prison* %42, %struct.prison** %18, align 8
  %43 = load i32*, i32** @sem, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %6
  %46 = load i32, i32* @ENOSYS, align 4
  store i32 %46, i32* %7, align 4
  br label %686

47:                                               ; preds = %6
  store i32* null, i32** %14, align 8
  %48 = load i32, i32* %11, align 4
  switch i32 %48, label %132 [
    i32 130, label %49
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 0), align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %49
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %7, align 4
  br label %686

58:                                               ; preds = %52
  %59 = load %struct.semid_kernel*, %struct.semid_kernel** @sema, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %59, i64 %61
  store %struct.semid_kernel* %62, %struct.semid_kernel** %20, align 8
  %63 = load %struct.mtx*, %struct.mtx** @sema_mtx, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mtx, %struct.mtx* %63, i64 %65
  store %struct.mtx* %66, %struct.mtx** %21, align 8
  %67 = load %struct.mtx*, %struct.mtx** %21, align 8
  %68 = call i32 @mtx_lock(%struct.mtx* %67)
  %69 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %70 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SEM_ALLOC, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %17, align 4
  br label %670

79:                                               ; preds = %58
  %80 = load %struct.prison*, %struct.prison** %18, align 8
  %81 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %82 = call i32 @sem_prison_cansee(%struct.prison* %80, %struct.semid_kernel* %81)
  store i32 %82, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %670

85:                                               ; preds = %79
  %86 = load %struct.thread*, %struct.thread** %8, align 8
  %87 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %88 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32, i32* @IPC_R, align 4
  %91 = call i32 @ipcperm(%struct.thread* %86, %struct.TYPE_11__* %89, i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %670

94:                                               ; preds = %85
  %95 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %96 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %95, i32 0, i32 0
  %97 = load %union.semun*, %union.semun** %12, align 8
  %98 = bitcast %union.semun* %97 to %struct.semid_ds**
  %99 = load %struct.semid_ds*, %struct.semid_ds** %98, align 8
  %100 = call i32 @bcopy(%struct.TYPE_12__* %96, %struct.semid_ds* %99, i32 24)
  %101 = load %struct.ucred*, %struct.ucred** %15, align 8
  %102 = getelementptr inbounds %struct.ucred, %struct.ucred* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %105 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %103, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %94
  %111 = load i8*, i8** @IPC_PRIVATE, align 8
  %112 = load %union.semun*, %union.semun** %12, align 8
  %113 = bitcast %union.semun* %112 to %struct.semid_ds**
  %114 = load %struct.semid_ds*, %struct.semid_ds** %113, align 8
  %115 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  store i8* %111, i8** %116, align 8
  br label %117

117:                                              ; preds = %110, %94
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %120 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = bitcast { i64, i32 }* %25 to i8*
  %123 = bitcast %struct.TYPE_11__* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 12, i1 false)
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @IXSEQ_TO_IPCID(i32 %118, i64 %125, i32 %127)
  %129 = load i32*, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  %130 = load %struct.mtx*, %struct.mtx** %21, align 8
  %131 = call i32 @mtx_unlock(%struct.mtx* %130)
  store i32 0, i32* %7, align 4
  br label %686

132:                                              ; preds = %47
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @IPCID_TO_IX(i32 %133)
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %24, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %24, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 0), align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137, %132
  %142 = load i32, i32* @EINVAL, align 4
  store i32 %142, i32* %7, align 4
  br label %686

143:                                              ; preds = %137
  %144 = load %struct.semid_kernel*, %struct.semid_kernel** @sema, align 8
  %145 = load i32, i32* %24, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %144, i64 %146
  store %struct.semid_kernel* %147, %struct.semid_kernel** %20, align 8
  %148 = load %struct.mtx*, %struct.mtx** @sema_mtx, align 8
  %149 = load i32, i32* %24, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.mtx, %struct.mtx* %148, i64 %150
  store %struct.mtx* %151, %struct.mtx** %21, align 8
  %152 = load i32, i32* %11, align 4
  %153 = icmp eq i32 %152, 133
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = call i32 @mtx_lock(%struct.mtx* @sem_mtx)
  br label %156

156:                                              ; preds = %154, %143
  %157 = load %struct.mtx*, %struct.mtx** %21, align 8
  %158 = call i32 @mtx_lock(%struct.mtx* %157)
  store i32 0, i32* %17, align 4
  %159 = load i32*, i32** %13, align 8
  store i32 0, i32* %159, align 4
  %160 = load i32, i32* %11, align 4
  switch i32 %160, label %667 [
    i32 133, label %161
    i32 132, label %181
    i32 131, label %242
    i32 137, label %282
    i32 136, label %321
    i32 135, label %360
    i32 138, label %399
    i32 134, label %477
    i32 128, label %516
    i32 129, label %576
  ]

161:                                              ; preds = %156
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.prison*, %struct.prison** %18, align 8
  %164 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %165 = call i32 @semvalid(i32 %162, %struct.prison* %163, %struct.semid_kernel* %164)
  store i32 %165, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %670

168:                                              ; preds = %161
  %169 = load %struct.thread*, %struct.thread** %8, align 8
  %170 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %171 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load i32, i32* @IPC_M, align 4
  %174 = call i32 @ipcperm(%struct.thread* %169, %struct.TYPE_11__* %172, i32 %173)
  store i32 %174, i32* %17, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %670

177:                                              ; preds = %168
  %178 = load i32, i32* %24, align 4
  %179 = load %struct.ucred*, %struct.ucred** %15, align 8
  %180 = call i32 @sem_remove(i32 %178, %struct.ucred* %179)
  br label %669

181:                                              ; preds = %156
  %182 = load %union.semun*, %union.semun** %12, align 8
  %183 = bitcast %union.semun* %182 to %struct.semid_ds**
  %184 = load %struct.semid_ds*, %struct.semid_ds** %183, align 8
  %185 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %184, i32 0, i32 0
  %186 = call i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_13__* %185)
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.prison*, %struct.prison** %18, align 8
  %189 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %190 = call i32 @semvalid(i32 %187, %struct.prison* %188, %struct.semid_kernel* %189)
  store i32 %190, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %181
  br label %670

193:                                              ; preds = %181
  %194 = load %struct.thread*, %struct.thread** %8, align 8
  %195 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %196 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load i32, i32* @IPC_M, align 4
  %199 = call i32 @ipcperm(%struct.thread* %194, %struct.TYPE_11__* %197, i32 %198)
  store i32 %199, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %670

202:                                              ; preds = %193
  %203 = load %union.semun*, %union.semun** %12, align 8
  %204 = bitcast %union.semun* %203 to %struct.semid_ds**
  %205 = load %struct.semid_ds*, %struct.semid_ds** %204, align 8
  store %struct.semid_ds* %205, %struct.semid_ds** %19, align 8
  %206 = load %struct.semid_ds*, %struct.semid_ds** %19, align 8
  %207 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %211 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  store i32 %209, i32* %213, align 8
  %214 = load %struct.semid_ds*, %struct.semid_ds** %19, align 8
  %215 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %219 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  store i32 %217, i32* %221, align 4
  %222 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %223 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, -512
  %228 = load %struct.semid_ds*, %struct.semid_ds** %19, align 8
  %229 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, 511
  %233 = or i32 %227, %232
  %234 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %235 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  store i32 %233, i32* %237, align 8
  %238 = load i32, i32* @time_second, align 4
  %239 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %240 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 3
  store i32 %238, i32* %241, align 4
  br label %669

242:                                              ; preds = %156
  %243 = load i32, i32* %9, align 4
  %244 = load %struct.prison*, %struct.prison** %18, align 8
  %245 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %246 = call i32 @semvalid(i32 %243, %struct.prison* %244, %struct.semid_kernel* %245)
  store i32 %246, i32* %17, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %670

249:                                              ; preds = %242
  %250 = load %struct.thread*, %struct.thread** %8, align 8
  %251 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %252 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = load i32, i32* @IPC_R, align 4
  %255 = call i32 @ipcperm(%struct.thread* %250, %struct.TYPE_11__* %253, i32 %254)
  store i32 %255, i32* %17, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %249
  br label %670

258:                                              ; preds = %249
  %259 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %260 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %259, i32 0, i32 0
  %261 = load %union.semun*, %union.semun** %12, align 8
  %262 = bitcast %union.semun* %261 to %struct.semid_ds**
  %263 = load %struct.semid_ds*, %struct.semid_ds** %262, align 8
  %264 = call i32 @bcopy(%struct.TYPE_12__* %260, %struct.semid_ds* %263, i32 24)
  %265 = load %struct.ucred*, %struct.ucred** %15, align 8
  %266 = getelementptr inbounds %struct.ucred, %struct.ucred* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %269 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %268, i32 0, i32 1
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %267, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %258
  %275 = load i8*, i8** @IPC_PRIVATE, align 8
  %276 = load %union.semun*, %union.semun** %12, align 8
  %277 = bitcast %union.semun* %276 to %struct.semid_ds**
  %278 = load %struct.semid_ds*, %struct.semid_ds** %277, align 8
  %279 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  store i8* %275, i8** %280, align 8
  br label %281

281:                                              ; preds = %274, %258
  br label %669

282:                                              ; preds = %156
  %283 = load i32, i32* %9, align 4
  %284 = load %struct.prison*, %struct.prison** %18, align 8
  %285 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %286 = call i32 @semvalid(i32 %283, %struct.prison* %284, %struct.semid_kernel* %285)
  store i32 %286, i32* %17, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  br label %670

289:                                              ; preds = %282
  %290 = load %struct.thread*, %struct.thread** %8, align 8
  %291 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %292 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 2
  %294 = load i32, i32* @IPC_R, align 4
  %295 = call i32 @ipcperm(%struct.thread* %290, %struct.TYPE_11__* %293, i32 %294)
  store i32 %295, i32* %17, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %289
  br label %670

298:                                              ; preds = %289
  %299 = load i32, i32* %10, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %298
  %302 = load i32, i32* %10, align 4
  %303 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %304 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp sge i32 %302, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %301, %298
  %309 = load i32, i32* @EINVAL, align 4
  store i32 %309, i32* %17, align 4
  br label %670

310:                                              ; preds = %301
  %311 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %312 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %13, align 8
  store i32 %319, i32* %320, align 4
  br label %669

321:                                              ; preds = %156
  %322 = load i32, i32* %9, align 4
  %323 = load %struct.prison*, %struct.prison** %18, align 8
  %324 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %325 = call i32 @semvalid(i32 %322, %struct.prison* %323, %struct.semid_kernel* %324)
  store i32 %325, i32* %17, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %321
  br label %670

328:                                              ; preds = %321
  %329 = load %struct.thread*, %struct.thread** %8, align 8
  %330 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %331 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 2
  %333 = load i32, i32* @IPC_R, align 4
  %334 = call i32 @ipcperm(%struct.thread* %329, %struct.TYPE_11__* %332, i32 %333)
  store i32 %334, i32* %17, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %328
  br label %670

337:                                              ; preds = %328
  %338 = load i32, i32* %10, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %337
  %341 = load i32, i32* %10, align 4
  %342 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %343 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp sge i32 %341, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %340, %337
  %348 = load i32, i32* @EINVAL, align 4
  store i32 %348, i32* %17, align 4
  br label %670

349:                                              ; preds = %340
  %350 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %351 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32*, i32** %13, align 8
  store i32 %358, i32* %359, align 4
  br label %669

360:                                              ; preds = %156
  %361 = load i32, i32* %9, align 4
  %362 = load %struct.prison*, %struct.prison** %18, align 8
  %363 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %364 = call i32 @semvalid(i32 %361, %struct.prison* %362, %struct.semid_kernel* %363)
  store i32 %364, i32* %17, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %360
  br label %670

367:                                              ; preds = %360
  %368 = load %struct.thread*, %struct.thread** %8, align 8
  %369 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %370 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 2
  %372 = load i32, i32* @IPC_R, align 4
  %373 = call i32 @ipcperm(%struct.thread* %368, %struct.TYPE_11__* %371, i32 %372)
  store i32 %373, i32* %17, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %367
  br label %670

376:                                              ; preds = %367
  %377 = load i32, i32* %10, align 4
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %376
  %380 = load i32, i32* %10, align 4
  %381 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %382 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = icmp sge i32 %380, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %379, %376
  %387 = load i32, i32* @EINVAL, align 4
  store i32 %387, i32* %17, align 4
  br label %670

388:                                              ; preds = %379
  %389 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %390 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %391, align 8
  %393 = load i32, i32* %10, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = load i32*, i32** %13, align 8
  store i32 %397, i32* %398, align 4
  br label %669

399:                                              ; preds = %156
  %400 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %401 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  store i32 %403, i32* %23, align 4
  %404 = load %struct.mtx*, %struct.mtx** %21, align 8
  %405 = call i32 @mtx_unlock(%struct.mtx* %404)
  %406 = load i32, i32* %23, align 4
  %407 = sext i32 %406 to i64
  %408 = mul i64 4, %407
  %409 = trunc i64 %408 to i32
  %410 = load i32, i32* @M_TEMP, align 4
  %411 = load i32, i32* @M_WAITOK, align 4
  %412 = call i32* @malloc(i32 %409, i32 %410, i32 %411)
  store i32* %412, i32** %14, align 8
  %413 = load %struct.mtx*, %struct.mtx** %21, align 8
  %414 = call i32 @mtx_lock(%struct.mtx* %413)
  %415 = load i32, i32* %9, align 4
  %416 = load %struct.prison*, %struct.prison** %18, align 8
  %417 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %418 = call i32 @semvalid(i32 %415, %struct.prison* %416, %struct.semid_kernel* %417)
  store i32 %418, i32* %17, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %399
  br label %670

421:                                              ; preds = %399
  %422 = load i32, i32* %23, align 4
  %423 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %424 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = icmp eq i32 %422, %426
  %428 = zext i1 %427 to i32
  %429 = call i32 @KASSERT(i32 %428, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %430 = load %struct.thread*, %struct.thread** %8, align 8
  %431 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %432 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i32 0, i32 2
  %434 = load i32, i32* @IPC_R, align 4
  %435 = call i32 @ipcperm(%struct.thread* %430, %struct.TYPE_11__* %433, i32 %434)
  store i32 %435, i32* %17, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %421
  br label %670

438:                                              ; preds = %421
  store i32 0, i32* %16, align 4
  br label %439

439:                                              ; preds = %460, %438
  %440 = load i32, i32* %16, align 4
  %441 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %442 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = icmp slt i32 %440, %444
  br i1 %445, label %446, label %463

446:                                              ; preds = %439
  %447 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %448 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 1
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %449, align 8
  %451 = load i32, i32* %16, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 4
  %456 = load i32*, i32** %14, align 8
  %457 = load i32, i32* %16, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  store i32 %455, i32* %459, align 4
  br label %460

460:                                              ; preds = %446
  %461 = load i32, i32* %16, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %16, align 4
  br label %439

463:                                              ; preds = %439
  %464 = load %struct.mtx*, %struct.mtx** %21, align 8
  %465 = call i32 @mtx_unlock(%struct.mtx* %464)
  %466 = load i32*, i32** %14, align 8
  %467 = load %union.semun*, %union.semun** %12, align 8
  %468 = bitcast %union.semun* %467 to i32*
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* %23, align 4
  %471 = sext i32 %470 to i64
  %472 = mul i64 %471, 4
  %473 = trunc i64 %472 to i32
  %474 = call i32 @copyout(i32* %466, i32 %469, i32 %473)
  store i32 %474, i32* %17, align 4
  %475 = load %struct.mtx*, %struct.mtx** %21, align 8
  %476 = call i32 @mtx_lock(%struct.mtx* %475)
  br label %669

477:                                              ; preds = %156
  %478 = load i32, i32* %9, align 4
  %479 = load %struct.prison*, %struct.prison** %18, align 8
  %480 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %481 = call i32 @semvalid(i32 %478, %struct.prison* %479, %struct.semid_kernel* %480)
  store i32 %481, i32* %17, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %477
  br label %670

484:                                              ; preds = %477
  %485 = load %struct.thread*, %struct.thread** %8, align 8
  %486 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %487 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 2
  %489 = load i32, i32* @IPC_R, align 4
  %490 = call i32 @ipcperm(%struct.thread* %485, %struct.TYPE_11__* %488, i32 %489)
  store i32 %490, i32* %17, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %484
  br label %670

493:                                              ; preds = %484
  %494 = load i32, i32* %10, align 4
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %503, label %496

496:                                              ; preds = %493
  %497 = load i32, i32* %10, align 4
  %498 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %499 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = icmp sge i32 %497, %501
  br i1 %502, label %503, label %505

503:                                              ; preds = %496, %493
  %504 = load i32, i32* @EINVAL, align 4
  store i32 %504, i32* %17, align 4
  br label %670

505:                                              ; preds = %496
  %506 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %507 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %507, i32 0, i32 1
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** %508, align 8
  %510 = load i32, i32* %10, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i64 %511
  %513 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 4
  %515 = load i32*, i32** %13, align 8
  store i32 %514, i32* %515, align 4
  br label %669

516:                                              ; preds = %156
  %517 = load i32, i32* %9, align 4
  %518 = load %struct.prison*, %struct.prison** %18, align 8
  %519 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %520 = call i32 @semvalid(i32 %517, %struct.prison* %518, %struct.semid_kernel* %519)
  store i32 %520, i32* %17, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %516
  br label %670

523:                                              ; preds = %516
  %524 = load %struct.thread*, %struct.thread** %8, align 8
  %525 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %526 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %526, i32 0, i32 2
  %528 = load i32, i32* @IPC_W, align 4
  %529 = call i32 @ipcperm(%struct.thread* %524, %struct.TYPE_11__* %527, i32 %528)
  store i32 %529, i32* %17, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %523
  br label %670

532:                                              ; preds = %523
  %533 = load i32, i32* %10, align 4
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %542, label %535

535:                                              ; preds = %532
  %536 = load i32, i32* %10, align 4
  %537 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %538 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = icmp sge i32 %536, %540
  br i1 %541, label %542, label %544

542:                                              ; preds = %535, %532
  %543 = load i32, i32* @EINVAL, align 4
  store i32 %543, i32* %17, align 4
  br label %670

544:                                              ; preds = %535
  %545 = load %union.semun*, %union.semun** %12, align 8
  %546 = bitcast %union.semun* %545 to i32*
  %547 = load i32, i32* %546, align 8
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %544
  %550 = load %union.semun*, %union.semun** %12, align 8
  %551 = bitcast %union.semun* %550 to i32*
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 1), align 4
  %554 = icmp sgt i32 %552, %553
  br i1 %554, label %555, label %557

555:                                              ; preds = %549, %544
  %556 = load i32, i32* @ERANGE, align 4
  store i32 %556, i32* %17, align 4
  br label %670

557:                                              ; preds = %549
  %558 = load %union.semun*, %union.semun** %12, align 8
  %559 = bitcast %union.semun* %558 to i32*
  %560 = load i32, i32* %559, align 8
  %561 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %562 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %562, i32 0, i32 1
  %564 = load %struct.TYPE_9__*, %struct.TYPE_9__** %563, align 8
  %565 = load i32, i32* %10, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %567, i32 0, i32 2
  store i32 %560, i32* %568, align 4
  %569 = call i32 (...) @SEMUNDO_LOCK()
  %570 = load i32, i32* %24, align 4
  %571 = load i32, i32* %10, align 4
  %572 = call i32 @semundo_clear(i32 %570, i32 %571)
  %573 = call i32 (...) @SEMUNDO_UNLOCK()
  %574 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %575 = call i32 @wakeup(%struct.semid_kernel* %574)
  br label %669

576:                                              ; preds = %156
  %577 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %578 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  store i32 %580, i32* %23, align 4
  %581 = load %struct.mtx*, %struct.mtx** %21, align 8
  %582 = call i32 @mtx_unlock(%struct.mtx* %581)
  %583 = load i32, i32* %23, align 4
  %584 = sext i32 %583 to i64
  %585 = mul i64 4, %584
  %586 = trunc i64 %585 to i32
  %587 = load i32, i32* @M_TEMP, align 4
  %588 = load i32, i32* @M_WAITOK, align 4
  %589 = call i32* @malloc(i32 %586, i32 %587, i32 %588)
  store i32* %589, i32** %14, align 8
  %590 = load %union.semun*, %union.semun** %12, align 8
  %591 = bitcast %union.semun* %590 to i32*
  %592 = load i32, i32* %591, align 8
  %593 = load i32*, i32** %14, align 8
  %594 = load i32, i32* %23, align 4
  %595 = sext i32 %594 to i64
  %596 = mul i64 %595, 4
  %597 = trunc i64 %596 to i32
  %598 = call i32 @copyin(i32 %592, i32* %593, i32 %597)
  store i32 %598, i32* %17, align 4
  %599 = load %struct.mtx*, %struct.mtx** %21, align 8
  %600 = call i32 @mtx_lock(%struct.mtx* %599)
  %601 = load i32, i32* %17, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %604

603:                                              ; preds = %576
  br label %669

604:                                              ; preds = %576
  %605 = load i32, i32* %9, align 4
  %606 = load %struct.prison*, %struct.prison** %18, align 8
  %607 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %608 = call i32 @semvalid(i32 %605, %struct.prison* %606, %struct.semid_kernel* %607)
  store i32 %608, i32* %17, align 4
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %611

610:                                              ; preds = %604
  br label %670

611:                                              ; preds = %604
  %612 = load i32, i32* %23, align 4
  %613 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %614 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %613, i32 0, i32 0
  %615 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 8
  %617 = icmp eq i32 %612, %616
  %618 = zext i1 %617 to i32
  %619 = call i32 @KASSERT(i32 %618, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %620 = load %struct.thread*, %struct.thread** %8, align 8
  %621 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %622 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %622, i32 0, i32 2
  %624 = load i32, i32* @IPC_W, align 4
  %625 = call i32 @ipcperm(%struct.thread* %620, %struct.TYPE_11__* %623, i32 %624)
  store i32 %625, i32* %17, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %628

627:                                              ; preds = %611
  br label %670

628:                                              ; preds = %611
  store i32 0, i32* %16, align 4
  br label %629

629:                                              ; preds = %657, %628
  %630 = load i32, i32* %16, align 4
  %631 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %632 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = icmp slt i32 %630, %634
  br i1 %635, label %636, label %660

636:                                              ; preds = %629
  %637 = load i32*, i32** %14, align 8
  %638 = load i32, i32* %16, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i32, i32* %637, i64 %639
  %641 = load i32, i32* %640, align 4
  store i32 %641, i32* %22, align 4
  %642 = load i32, i32* %22, align 4
  %643 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @seminfo, i32 0, i32 1), align 4
  %644 = icmp sgt i32 %642, %643
  br i1 %644, label %645, label %647

645:                                              ; preds = %636
  %646 = load i32, i32* @ERANGE, align 4
  store i32 %646, i32* %17, align 4
  br label %660

647:                                              ; preds = %636
  %648 = load i32, i32* %22, align 4
  %649 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %650 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %650, i32 0, i32 1
  %652 = load %struct.TYPE_9__*, %struct.TYPE_9__** %651, align 8
  %653 = load i32, i32* %16, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %652, i64 %654
  %656 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %655, i32 0, i32 2
  store i32 %648, i32* %656, align 4
  br label %657

657:                                              ; preds = %647
  %658 = load i32, i32* %16, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %16, align 4
  br label %629

660:                                              ; preds = %645, %629
  %661 = call i32 (...) @SEMUNDO_LOCK()
  %662 = load i32, i32* %24, align 4
  %663 = call i32 @semundo_clear(i32 %662, i32 -1)
  %664 = call i32 (...) @SEMUNDO_UNLOCK()
  %665 = load %struct.semid_kernel*, %struct.semid_kernel** %20, align 8
  %666 = call i32 @wakeup(%struct.semid_kernel* %665)
  br label %669

667:                                              ; preds = %156
  %668 = load i32, i32* @EINVAL, align 4
  store i32 %668, i32* %17, align 4
  br label %669

669:                                              ; preds = %667, %660, %603, %557, %505, %463, %388, %349, %310, %281, %202, %177
  br label %670

670:                                              ; preds = %669, %627, %610, %555, %542, %531, %522, %503, %492, %483, %437, %420, %386, %375, %366, %347, %336, %327, %308, %297, %288, %257, %248, %201, %192, %176, %167, %93, %84, %77
  %671 = load %struct.mtx*, %struct.mtx** %21, align 8
  %672 = call i32 @mtx_unlock(%struct.mtx* %671)
  %673 = load i32, i32* %11, align 4
  %674 = icmp eq i32 %673, 133
  br i1 %674, label %675, label %677

675:                                              ; preds = %670
  %676 = call i32 @mtx_unlock(%struct.mtx* @sem_mtx)
  br label %677

677:                                              ; preds = %675, %670
  %678 = load i32*, i32** %14, align 8
  %679 = icmp ne i32* %678, null
  br i1 %679, label %680, label %684

680:                                              ; preds = %677
  %681 = load i32*, i32** %14, align 8
  %682 = load i32, i32* @M_TEMP, align 4
  %683 = call i32 @free(i32* %681, i32 %682)
  br label %684

684:                                              ; preds = %680, %677
  %685 = load i32, i32* %17, align 4
  store i32 %685, i32* %7, align 4
  br label %686

686:                                              ; preds = %684, %141, %117, %56, %45
  %687 = load i32, i32* %7, align 4
  ret i32 %687
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_CMD(i32) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local %struct.prison* @sem_find_prison(%struct.ucred*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @sem_prison_cansee(%struct.prison*, %struct.semid_kernel*) #1

declare dso_local i32 @ipcperm(%struct.thread*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_12__*, %struct.semid_ds*, i32) #1

declare dso_local i32 @IXSEQ_TO_IPCID(i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @IPCID_TO_IX(i32) #1

declare dso_local i32 @semvalid(i32, %struct.prison*, %struct.semid_kernel*) #1

declare dso_local i32 @sem_remove(i32, %struct.ucred*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_13__*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @SEMUNDO_LOCK(...) #1

declare dso_local i32 @semundo_clear(i32, i32) #1

declare dso_local i32 @SEMUNDO_UNLOCK(...) #1

declare dso_local i32 @wakeup(%struct.semid_kernel*) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
