; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sys_semop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sys_semop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.semid_kernel = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, %struct.sem*, %struct.TYPE_10__ }
%struct.sem = type { i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i16 }
%struct.mtx = type { i32 }
%struct.thread = type { i64*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.semop_args = type { i32, i64, i32 }
%struct.sembuf = type { i64, i32, i64 }
%struct.prison = type { i32 }
%struct.sem_undo = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"call to semop(%d, %p, %u)\0A\00", align 1
@sem = common dso_local global i32* null, align 8
@ENOSYS = common dso_local global i32 0, align 4
@seminfo = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"too many sops (max=%d, nsops=%d)\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"error = %d from copyin(%p, %p, %d)\0A\00", align 1
@M_SEM = common dso_local global i32 0, align 4
@sema = common dso_local global %struct.semid_kernel* null, align 8
@sema_mtx = common dso_local global %struct.mtx* null, align 8
@SEM_ALLOC = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@SEM_UNDO = common dso_local global i32 0, align 4
@SEM_R = common dso_local global i64 0, align 8
@SEM_A = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"error = %d from ipaccess\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"semop:  semakptr=%p, __sem_base=%p, semptr=%p, sem[%d]=%d : op=%d, flag=%s\0A\00", align 1
@IPC_NOWAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"semop:  can't do it now\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"semop:  not zero now\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"semop:  rollback 0 through %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"semop:  good night!\0A\00", align 1
@PZERO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"semwait\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"semop:  good morning (error=%d)!\0A\00", align 1
@EIDRM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"semop:  good morning!\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"semop - can't undo undos\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"error = %d from semundo_adjust\0A\00", align 1
@time_second = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"semop:  doing wakeup\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"semop:  back from wakeup\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"semop:  done\0A\00", align 1
@RACCT_NSEMOP = common dso_local global i32 0, align 4
@SMALL_SOPS = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_semop(%struct.thread* %0, %struct.semop_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.semop_args*, align 8
  %6 = alloca [8 x %struct.sembuf], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.prison*, align 8
  %10 = alloca %struct.sembuf*, align 8
  %11 = alloca %struct.semid_kernel*, align 8
  %12 = alloca %struct.sembuf*, align 8
  %13 = alloca %struct.sem*, align 8
  %14 = alloca %struct.sem_undo*, align 8
  %15 = alloca %struct.mtx*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.semop_args* %1, %struct.semop_args** %5, align 8
  %24 = load %struct.semop_args*, %struct.semop_args** %5, align 8
  %25 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.semop_args*, %struct.semop_args** %5, align 8
  %28 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  store %struct.sembuf* null, %struct.sembuf** %12, align 8
  store %struct.sem* null, %struct.sem** %13, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DPRINTF(i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %35)
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.prison* @sem_find_prison(i32 %39)
  store %struct.prison* %40, %struct.prison** %9, align 8
  %41 = load i32*, i32** @sem, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOSYS, align 4
  store i32 %44, i32* %3, align 4
  br label %649

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @IPCID_TO_IX(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seminfo, i32 0, i32 0), align 8
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %45
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %3, align 4
  br label %649

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = icmp ule i64 %57, 8
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = getelementptr inbounds [8 x %struct.sembuf], [8 x %struct.sembuf]* %6, i64 0, i64 0
  store %struct.sembuf* %60, %struct.sembuf** %10, align 8
  br label %78

61:                                               ; preds = %56
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seminfo, i32 0, i32 1), align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seminfo, i32 0, i32 1), align 8
  %67 = load i64, i64* %8, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @DPRINTF(i8* %68)
  %70 = load i32, i32* @E2BIG, align 4
  store i32 %70, i32* %3, align 4
  br label %649

71:                                               ; preds = %61
  %72 = load i64, i64* %8, align 8
  %73 = mul i64 %72, 24
  %74 = load i32, i32* @M_TEMP, align 4
  %75 = load i32, i32* @M_WAITOK, align 4
  %76 = call %struct.sembuf* @malloc(i64 %73, i32 %74, i32 %75)
  store %struct.sembuf* %76, %struct.sembuf** %10, align 8
  br label %77

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.semop_args*, %struct.semop_args** %5, align 8
  %80 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %83 = load i64, i64* %8, align 8
  %84 = mul i64 %83, 24
  %85 = call i32 @copyin(i32 %81, %struct.sembuf* %82, i64 %84)
  store i32 %85, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %78
  %88 = load i32, i32* %19, align 4
  %89 = load %struct.semop_args*, %struct.semop_args** %5, align 8
  %90 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = mul i64 %93, 24
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @DPRINTF(i8* %95)
  %97 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %98 = getelementptr inbounds [8 x %struct.sembuf], [8 x %struct.sembuf]* %6, i64 0, i64 0
  %99 = icmp ne %struct.sembuf* %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %87
  %101 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %102 = load i32, i32* @M_SEM, align 4
  %103 = call i32 @free(%struct.sembuf* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %87
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %3, align 4
  br label %649

106:                                              ; preds = %78
  %107 = load %struct.semid_kernel*, %struct.semid_kernel** @sema, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %107, i64 %109
  store %struct.semid_kernel* %110, %struct.semid_kernel** %11, align 8
  %111 = load %struct.mtx*, %struct.mtx** @sema_mtx, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.mtx, %struct.mtx* %111, i64 %113
  store %struct.mtx* %114, %struct.mtx** %15, align 8
  %115 = load %struct.mtx*, %struct.mtx** %15, align 8
  %116 = call i32 @mtx_lock(%struct.mtx* %115)
  %117 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %118 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SEM_ALLOC, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %106
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %19, align 4
  br label %637

127:                                              ; preds = %106
  %128 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %129 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i16, i16* %131, align 4
  store i16 %132, i16* %22, align 2
  %133 = load i16, i16* %22, align 2
  %134 = zext i16 %133 to i32
  %135 = load %struct.semop_args*, %struct.semop_args** %5, align 8
  %136 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call zeroext i16 @IPCID_TO_SEQ(i32 %137)
  %139 = zext i16 %138 to i32
  %140 = icmp ne i32 %134, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = load i32, i32* @EINVAL, align 4
  store i32 %142, i32* %19, align 4
  br label %637

143:                                              ; preds = %127
  %144 = load %struct.prison*, %struct.prison** %9, align 8
  %145 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %146 = call i32 @sem_prison_cansee(%struct.prison* %144, %struct.semid_kernel* %145)
  store i32 %146, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %637

149:                                              ; preds = %143
  store i64 0, i64* %17, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %16, align 8
  br label %150

150:                                              ; preds = %194, %149
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* %8, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %197

154:                                              ; preds = %150
  %155 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %156 = load i64, i64* %16, align 8
  %157 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %155, i64 %156
  store %struct.sembuf* %157, %struct.sembuf** %12, align 8
  %158 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %159 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %162 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp uge i64 %160, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = load i32, i32* @EFBIG, align 4
  store i32 %167, i32* %19, align 4
  br label %637

168:                                              ; preds = %154
  %169 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %170 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @SEM_UNDO, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %177 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 1, i32* %21, align 4
  br label %181

181:                                              ; preds = %180, %175, %168
  %182 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %183 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i64, i64* @SEM_R, align 8
  br label %190

188:                                              ; preds = %181
  %189 = load i64, i64* @SEM_A, align 8
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i64 [ %187, %186 ], [ %189, %188 ]
  %192 = load i64, i64* %17, align 8
  %193 = or i64 %192, %191
  store i64 %193, i64* %17, align 8
  br label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %16, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %16, align 8
  br label %150

197:                                              ; preds = %150
  %198 = load %struct.thread*, %struct.thread** %4, align 8
  %199 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %200 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 3
  %202 = load i64, i64* %17, align 8
  %203 = call i32 @ipcperm(%struct.thread* %198, %struct.TYPE_10__* %201, i64 %202)
  store i32 %203, i32* %19, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %197
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  %209 = call i32 @DPRINTF(i8* %208)
  br label %637

210:                                              ; preds = %197
  br label %211

211:                                              ; preds = %461, %210
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %16, align 8
  br label %212

212:                                              ; preds = %329, %211
  %213 = load i64, i64* %16, align 8
  %214 = load i64, i64* %8, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %332

216:                                              ; preds = %212
  %217 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %218 = load i64, i64* %16, align 8
  %219 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %217, i64 %218
  store %struct.sembuf* %219, %struct.sembuf** %12, align 8
  %220 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %221 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load %struct.sem*, %struct.sem** %222, align 8
  %224 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %225 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.sem, %struct.sem* %223, i64 %226
  store %struct.sem* %227, %struct.sem** %13, align 8
  %228 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %229 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %230 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 2
  %232 = load %struct.sem*, %struct.sem** %231, align 8
  %233 = load %struct.sem*, %struct.sem** %13, align 8
  %234 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %235 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.sem*, %struct.sem** %13, align 8
  %238 = getelementptr inbounds %struct.sem, %struct.sem* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %241 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %244 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @IPC_NOWAIT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %251 = call i32 @DPRINTF(i8* %250)
  %252 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %253 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %256, label %287

256:                                              ; preds = %216
  %257 = load %struct.sem*, %struct.sem** %13, align 8
  %258 = getelementptr inbounds %struct.sem, %struct.sem* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %261 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %259, %262
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %256
  %266 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %332

267:                                              ; preds = %256
  %268 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %269 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.sem*, %struct.sem** %13, align 8
  %272 = getelementptr inbounds %struct.sem, %struct.sem* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, %270
  store i64 %274, i64* %272, align 8
  %275 = load %struct.sem*, %struct.sem** %13, align 8
  %276 = getelementptr inbounds %struct.sem, %struct.sem* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %267
  %280 = load %struct.sem*, %struct.sem** %13, align 8
  %281 = getelementptr inbounds %struct.sem, %struct.sem* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp sgt i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  store i32 1, i32* %20, align 4
  br label %285

285:                                              ; preds = %284, %279, %267
  br label %286

286:                                              ; preds = %285
  br label %328

287:                                              ; preds = %216
  %288 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %289 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load %struct.sem*, %struct.sem** %13, align 8
  %294 = getelementptr inbounds %struct.sem, %struct.sem* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %332

299:                                              ; preds = %292
  br label %327

300:                                              ; preds = %287
  %301 = load %struct.sem*, %struct.sem** %13, align 8
  %302 = getelementptr inbounds %struct.sem, %struct.sem* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %305 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = add nsw i64 %303, %306
  %308 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seminfo, i32 0, i32 2), align 8
  %309 = icmp sgt i64 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %300
  %311 = load i32, i32* @ERANGE, align 4
  store i32 %311, i32* %19, align 4
  br label %332

312:                                              ; preds = %300
  %313 = load %struct.sem*, %struct.sem** %13, align 8
  %314 = getelementptr inbounds %struct.sem, %struct.sem* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = icmp sgt i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  store i32 1, i32* %20, align 4
  br label %318

318:                                              ; preds = %317, %312
  %319 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %320 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.sem*, %struct.sem** %13, align 8
  %323 = getelementptr inbounds %struct.sem, %struct.sem* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = add nsw i64 %324, %321
  store i64 %325, i64* %323, align 8
  br label %326

326:                                              ; preds = %318
  br label %327

327:                                              ; preds = %326, %299
  br label %328

328:                                              ; preds = %327, %286
  br label %329

329:                                              ; preds = %328
  %330 = load i64, i64* %16, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %16, align 8
  br label %212

332:                                              ; preds = %310, %297, %265, %212
  %333 = load i64, i64* %16, align 8
  %334 = load i64, i64* %8, align 8
  %335 = icmp uge i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  br label %463

337:                                              ; preds = %332
  %338 = load i64, i64* %16, align 8
  %339 = sub i64 %338, 1
  %340 = inttoptr i64 %339 to i8*
  %341 = call i32 @DPRINTF(i8* %340)
  store i64 0, i64* %17, align 8
  br label %342

342:                                              ; preds = %365, %337
  %343 = load i64, i64* %17, align 8
  %344 = load i64, i64* %16, align 8
  %345 = icmp ult i64 %343, %344
  br i1 %345, label %346, label %368

346:                                              ; preds = %342
  %347 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %348 = load i64, i64* %17, align 8
  %349 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %347, i64 %348
  %350 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %353 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 2
  %355 = load %struct.sem*, %struct.sem** %354, align 8
  %356 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %357 = load i64, i64* %17, align 8
  %358 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %356, i64 %357
  %359 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %struct.sem, %struct.sem* %355, i64 %360
  %362 = getelementptr inbounds %struct.sem, %struct.sem* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = sub nsw i64 %363, %351
  store i64 %364, i64* %362, align 8
  br label %365

365:                                              ; preds = %346
  %366 = load i64, i64* %17, align 8
  %367 = add i64 %366, 1
  store i64 %367, i64* %17, align 8
  br label %342

368:                                              ; preds = %342
  %369 = load i32, i32* %19, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %368
  br label %637

372:                                              ; preds = %368
  %373 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %374 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @IPC_NOWAIT, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %372
  %380 = load i32, i32* @EAGAIN, align 4
  store i32 %380, i32* %19, align 4
  br label %637

381:                                              ; preds = %372
  %382 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %383 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = load %struct.sem*, %struct.sem** %13, align 8
  %388 = getelementptr inbounds %struct.sem, %struct.sem* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %389, 1
  store i64 %390, i64* %388, align 8
  br label %396

391:                                              ; preds = %381
  %392 = load %struct.sem*, %struct.sem** %13, align 8
  %393 = getelementptr inbounds %struct.sem, %struct.sem* %392, i32 0, i32 2
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %393, align 8
  br label %396

396:                                              ; preds = %391, %386
  %397 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %398 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %399 = load %struct.mtx*, %struct.mtx** %15, align 8
  %400 = load i32, i32* @PZERO, align 4
  %401 = sub nsw i32 %400, 4
  %402 = load i32, i32* @PCATCH, align 4
  %403 = or i32 %401, %402
  %404 = call i32 @msleep(%struct.semid_kernel* %398, %struct.mtx* %399, i32 %403, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 0)
  store i32 %404, i32* %19, align 4
  %405 = load i32, i32* %19, align 4
  %406 = sext i32 %405 to i64
  %407 = inttoptr i64 %406 to i8*
  %408 = call i32 @DPRINTF(i8* %407)
  %409 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %410 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 3
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 1
  %413 = load i16, i16* %412, align 4
  store i16 %413, i16* %22, align 2
  %414 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %415 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 3
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @SEM_ALLOC, align 4
  %420 = and i32 %418, %419
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %396
  %423 = load i16, i16* %22, align 2
  %424 = zext i16 %423 to i32
  %425 = load %struct.semop_args*, %struct.semop_args** %5, align 8
  %426 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call zeroext i16 @IPCID_TO_SEQ(i32 %427)
  %429 = zext i16 %428 to i32
  %430 = icmp ne i32 %424, %429
  br i1 %430, label %431, label %433

431:                                              ; preds = %422, %396
  %432 = load i32, i32* @EIDRM, align 4
  store i32 %432, i32* %19, align 4
  br label %637

433:                                              ; preds = %422
  %434 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %435 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 2
  %437 = load %struct.sem*, %struct.sem** %436, align 8
  %438 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %439 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = getelementptr inbounds %struct.sem, %struct.sem* %437, i64 %440
  store %struct.sem* %441, %struct.sem** %13, align 8
  %442 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %443 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %451

446:                                              ; preds = %433
  %447 = load %struct.sem*, %struct.sem** %13, align 8
  %448 = getelementptr inbounds %struct.sem, %struct.sem* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = add nsw i64 %449, -1
  store i64 %450, i64* %448, align 8
  br label %456

451:                                              ; preds = %433
  %452 = load %struct.sem*, %struct.sem** %13, align 8
  %453 = getelementptr inbounds %struct.sem, %struct.sem* %452, i32 0, i32 2
  %454 = load i64, i64* %453, align 8
  %455 = add nsw i64 %454, -1
  store i64 %455, i64* %453, align 8
  br label %456

456:                                              ; preds = %451, %446
  %457 = load i32, i32* %19, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %456
  %460 = load i32, i32* @EINTR, align 4
  store i32 %460, i32* %19, align 4
  br label %637

461:                                              ; preds = %456
  %462 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %211

463:                                              ; preds = %336
  %464 = load i32, i32* %21, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %592

466:                                              ; preds = %463
  %467 = call i32 (...) @SEMUNDO_LOCK()
  store %struct.sem_undo* null, %struct.sem_undo** %14, align 8
  store i64 0, i64* %16, align 8
  br label %468

468:                                              ; preds = %587, %466
  %469 = load i64, i64* %16, align 8
  %470 = load i64, i64* %8, align 8
  %471 = icmp ult i64 %469, %470
  br i1 %471, label %472, label %590

472:                                              ; preds = %468
  %473 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %474 = load i64, i64* %16, align 8
  %475 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %473, i64 %474
  %476 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @SEM_UNDO, align 4
  %479 = and i32 %477, %478
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %472
  br label %587

482:                                              ; preds = %472
  %483 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %484 = load i64, i64* %16, align 8
  %485 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %483, i64 %484
  %486 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %485, i32 0, i32 2
  %487 = load i64, i64* %486, align 8
  %488 = trunc i64 %487 to i32
  store i32 %488, i32* %23, align 4
  %489 = load i32, i32* %23, align 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %482
  br label %587

492:                                              ; preds = %482
  %493 = load %struct.thread*, %struct.thread** %4, align 8
  %494 = load i32, i32* %7, align 4
  %495 = load i16, i16* %22, align 2
  %496 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %497 = load i64, i64* %16, align 8
  %498 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %496, i64 %497
  %499 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = load i32, i32* %23, align 4
  %502 = sub nsw i32 0, %501
  %503 = call i32 @semundo_adjust(%struct.thread* %493, %struct.sem_undo** %14, i32 %494, i16 zeroext %495, i64 %500, i32 %502)
  store i32 %503, i32* %19, align 4
  %504 = load i32, i32* %19, align 4
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %507

506:                                              ; preds = %492
  br label %587

507:                                              ; preds = %492
  store i64 0, i64* %17, align 8
  br label %508

508:                                              ; preds = %551, %507
  %509 = load i64, i64* %17, align 8
  %510 = load i64, i64* %16, align 8
  %511 = icmp ult i64 %509, %510
  br i1 %511, label %512, label %554

512:                                              ; preds = %508
  %513 = load i64, i64* %16, align 8
  %514 = load i64, i64* %17, align 8
  %515 = sub i64 %513, %514
  %516 = sub i64 %515, 1
  store i64 %516, i64* %18, align 8
  %517 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %518 = load i64, i64* %18, align 8
  %519 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %517, i64 %518
  %520 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @SEM_UNDO, align 4
  %523 = and i32 %521, %522
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %512
  br label %551

526:                                              ; preds = %512
  %527 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %528 = load i64, i64* %18, align 8
  %529 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %527, i64 %528
  %530 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %529, i32 0, i32 2
  %531 = load i64, i64* %530, align 8
  %532 = trunc i64 %531 to i32
  store i32 %532, i32* %23, align 4
  %533 = load i32, i32* %23, align 4
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %526
  br label %551

536:                                              ; preds = %526
  %537 = load %struct.thread*, %struct.thread** %4, align 8
  %538 = load i32, i32* %7, align 4
  %539 = load i16, i16* %22, align 2
  %540 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %541 = load i64, i64* %18, align 8
  %542 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %540, i64 %541
  %543 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = load i32, i32* %23, align 4
  %546 = call i32 @semundo_adjust(%struct.thread* %537, %struct.sem_undo** %14, i32 %538, i16 zeroext %539, i64 %544, i32 %545)
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %550

548:                                              ; preds = %536
  %549 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %550

550:                                              ; preds = %548, %536
  br label %551

551:                                              ; preds = %550, %535, %525
  %552 = load i64, i64* %17, align 8
  %553 = add i64 %552, 1
  store i64 %553, i64* %17, align 8
  br label %508

554:                                              ; preds = %508
  store i64 0, i64* %17, align 8
  br label %555

555:                                              ; preds = %578, %554
  %556 = load i64, i64* %17, align 8
  %557 = load i64, i64* %8, align 8
  %558 = icmp ult i64 %556, %557
  br i1 %558, label %559, label %581

559:                                              ; preds = %555
  %560 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %561 = load i64, i64* %17, align 8
  %562 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %560, i64 %561
  %563 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %562, i32 0, i32 2
  %564 = load i64, i64* %563, align 8
  %565 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %566 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %566, i32 0, i32 2
  %568 = load %struct.sem*, %struct.sem** %567, align 8
  %569 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %570 = load i64, i64* %17, align 8
  %571 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %569, i64 %570
  %572 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = getelementptr inbounds %struct.sem, %struct.sem* %568, i64 %573
  %575 = getelementptr inbounds %struct.sem, %struct.sem* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = sub nsw i64 %576, %564
  store i64 %577, i64* %575, align 8
  br label %578

578:                                              ; preds = %559
  %579 = load i64, i64* %17, align 8
  %580 = add i64 %579, 1
  store i64 %580, i64* %17, align 8
  br label %555

581:                                              ; preds = %555
  %582 = load i32, i32* %19, align 4
  %583 = sext i32 %582 to i64
  %584 = inttoptr i64 %583 to i8*
  %585 = call i32 @DPRINTF(i8* %584)
  %586 = call i32 (...) @SEMUNDO_UNLOCK()
  br label %637

587:                                              ; preds = %506, %491, %481
  %588 = load i64, i64* %16, align 8
  %589 = add i64 %588, 1
  store i64 %589, i64* %16, align 8
  br label %468

590:                                              ; preds = %468
  %591 = call i32 (...) @SEMUNDO_UNLOCK()
  br label %592

592:                                              ; preds = %590, %463
  store i64 0, i64* %16, align 8
  br label %593

593:                                              ; preds = %616, %592
  %594 = load i64, i64* %16, align 8
  %595 = load i64, i64* %8, align 8
  %596 = icmp ult i64 %594, %595
  br i1 %596, label %597, label %619

597:                                              ; preds = %593
  %598 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %599 = load i64, i64* %16, align 8
  %600 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %598, i64 %599
  store %struct.sembuf* %600, %struct.sembuf** %12, align 8
  %601 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %602 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %602, i32 0, i32 2
  %604 = load %struct.sem*, %struct.sem** %603, align 8
  %605 = load %struct.sembuf*, %struct.sembuf** %12, align 8
  %606 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = getelementptr inbounds %struct.sem, %struct.sem* %604, i64 %607
  store %struct.sem* %608, %struct.sem** %13, align 8
  %609 = load %struct.thread*, %struct.thread** %4, align 8
  %610 = getelementptr inbounds %struct.thread, %struct.thread* %609, i32 0, i32 1
  %611 = load %struct.TYPE_9__*, %struct.TYPE_9__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 4
  %614 = load %struct.sem*, %struct.sem** %13, align 8
  %615 = getelementptr inbounds %struct.sem, %struct.sem* %614, i32 0, i32 3
  store i32 %613, i32* %615, align 8
  br label %616

616:                                              ; preds = %597
  %617 = load i64, i64* %16, align 8
  %618 = add i64 %617, 1
  store i64 %618, i64* %16, align 8
  br label %593

619:                                              ; preds = %593
  %620 = load i32, i32* @time_second, align 4
  %621 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %622 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %622, i32 0, i32 1
  store i32 %620, i32* %623, align 8
  %624 = load i32, i32* %20, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %631

626:                                              ; preds = %619
  %627 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %628 = load %struct.semid_kernel*, %struct.semid_kernel** %11, align 8
  %629 = call i32 @wakeup(%struct.semid_kernel* %628)
  %630 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  br label %631

631:                                              ; preds = %626, %619
  %632 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %633 = load %struct.thread*, %struct.thread** %4, align 8
  %634 = getelementptr inbounds %struct.thread, %struct.thread* %633, i32 0, i32 0
  %635 = load i64*, i64** %634, align 8
  %636 = getelementptr inbounds i64, i64* %635, i64 0
  store i64 0, i64* %636, align 8
  br label %637

637:                                              ; preds = %631, %581, %459, %431, %379, %371, %205, %166, %148, %141, %125
  %638 = load %struct.mtx*, %struct.mtx** %15, align 8
  %639 = call i32 @mtx_unlock(%struct.mtx* %638)
  %640 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %641 = getelementptr inbounds [8 x %struct.sembuf], [8 x %struct.sembuf]* %6, i64 0, i64 0
  %642 = icmp ne %struct.sembuf* %640, %641
  br i1 %642, label %643, label %647

643:                                              ; preds = %637
  %644 = load %struct.sembuf*, %struct.sembuf** %10, align 8
  %645 = load i32, i32* @M_SEM, align 4
  %646 = call i32 @free(%struct.sembuf* %644, i32 %645)
  br label %647

647:                                              ; preds = %643, %637
  %648 = load i32, i32* %19, align 4
  store i32 %648, i32* %3, align 4
  br label %649

649:                                              ; preds = %647, %104, %65, %54, %43
  %650 = load i32, i32* %3, align 4
  ret i32 %650
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local %struct.prison* @sem_find_prison(i32) #1

declare dso_local i32 @IPCID_TO_IX(i32) #1

declare dso_local %struct.sembuf* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(i32, %struct.sembuf*, i64) #1

declare dso_local i32 @free(%struct.sembuf*, i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local zeroext i16 @IPCID_TO_SEQ(i32) #1

declare dso_local i32 @sem_prison_cansee(%struct.prison*, %struct.semid_kernel*) #1

declare dso_local i32 @ipcperm(%struct.thread*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @msleep(%struct.semid_kernel*, %struct.mtx*, i32, i8*, i32) #1

declare dso_local i32 @SEMUNDO_LOCK(...) #1

declare dso_local i32 @semundo_adjust(%struct.thread*, %struct.sem_undo**, i32, i16 zeroext, i64, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @SEMUNDO_UNLOCK(...) #1

declare dso_local i32 @wakeup(%struct.semid_kernel*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
