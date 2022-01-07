; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_kern_msgctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_kern_msgctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.msqid_kernel = type { %struct.TYPE_8__*, %struct.msqid_ds }
%struct.TYPE_8__ = type { i32 }
%struct.msqid_ds = type { i64, %struct.TYPE_11__, i32, %struct.msg* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.msg = type { %struct.msg* }
%struct.thread = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.prison = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@msginfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"msqid (%d) out of range (0<=msqid<%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@msqids = common dso_local global %struct.msqid_kernel* null, align 8
@msq_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"no such msqid\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"wrong sequence number\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"requester can't see prison\0A\00", align 1
@IPC_M = common dso_local global i32 0, align 4
@PRIV_IPC_MSGSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"can't increase msg_qbytes beyond %d(truncating)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"can't reduce msg_qbytes to 0\0A\00", align 1
@time_second = common dso_local global i32 0, align 4
@IPC_R = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"requester doesn't have read access\0A\00", align 1
@IPC_PRIVATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid command %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_msgctl(%struct.thread* %0, i32 %1, i32 %2, %struct.msqid_ds* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msqid_ds*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msqid_kernel*, align 8
  %14 = alloca %struct.prison*, align 8
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.msqid_ds* %3, %struct.msqid_ds** %9, align 8
  %15 = load %struct.thread*, %struct.thread** %6, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = call %struct.prison* @msg_find_prison(%struct.TYPE_10__* %17)
  store %struct.prison* %18, %struct.prison** %14, align 8
  %19 = load %struct.prison*, %struct.prison** %14, align 8
  %20 = icmp eq %struct.prison* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOSYS, align 4
  store i32 %22, i32* %5, align 4
  br label %236

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @AUDIT_ARG_SVIPC_CMD(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @IPCID_TO_IX(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @msginfo, i32 0, i32 0), align 8
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @msginfo, i32 0, i32 0), align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @DPRINTF(i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %5, align 4
  br label %236

43:                                               ; preds = %32
  %44 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msqids, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %44, i64 %46
  store %struct.msqid_kernel* %47, %struct.msqid_kernel** %13, align 8
  %48 = call i32 @mtx_lock(i32* @msq_mtx)
  %49 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %50 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %11, align 4
  br label %233

57:                                               ; preds = %43
  %58 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %59 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @IPCID_TO_SEQ(i32 %63)
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %11, align 4
  br label %233

69:                                               ; preds = %57
  %70 = load %struct.prison*, %struct.prison** %14, align 8
  %71 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %72 = call i32 @msq_prison_cansee(%struct.prison* %70, %struct.msqid_kernel* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %233

77:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  switch i32 %78, label %217 [
    i32 130, label %79
    i32 129, label %91
    i32 128, label %184
  ]

79:                                               ; preds = %77
  %80 = load %struct.thread*, %struct.thread** %6, align 8
  %81 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %82 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %82, i32 0, i32 1
  %84 = load i32, i32* @IPC_M, align 4
  %85 = call i32 @ipcperm(%struct.thread* %80, %struct.TYPE_11__* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %233

88:                                               ; preds = %79
  %89 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %90 = call i32 @msq_remove(%struct.msqid_kernel* %89)
  br label %223

91:                                               ; preds = %77
  %92 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %93 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %92, i32 0, i32 1
  %94 = call i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_11__* %93)
  %95 = load %struct.thread*, %struct.thread** %6, align 8
  %96 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %97 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %97, i32 0, i32 1
  %99 = load i32, i32* @IPC_M, align 4
  %100 = call i32 @ipcperm(%struct.thread* %95, %struct.TYPE_11__* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %233

103:                                              ; preds = %91
  %104 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %105 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %108 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %106, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %103
  %113 = load %struct.thread*, %struct.thread** %6, align 8
  %114 = load i32, i32* @PRIV_IPC_MSGSIZE, align 4
  %115 = call i32 @priv_check(%struct.thread* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %233

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %103
  %121 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %122 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @msginfo, i32 0, i32 1), align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @msginfo, i32 0, i32 1), align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @DPRINTF(i8* %128)
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @msginfo, i32 0, i32 1), align 8
  %131 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %132 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %126, %120
  %134 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %135 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %11, align 4
  br label %233

141:                                              ; preds = %133
  %142 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %143 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %147 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 4
  store i32 %145, i32* %149, align 4
  %150 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %151 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %155 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  store i32 %153, i32* %157, align 8
  %158 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %159 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, -512
  %164 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %165 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 511
  %169 = or i32 %163, %168
  %170 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %171 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 8
  %174 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %175 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %178 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %178, i32 0, i32 0
  store i64 %176, i64* %179, align 8
  %180 = load i32, i32* @time_second, align 4
  %181 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %182 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 8
  br label %223

184:                                              ; preds = %77
  %185 = load %struct.thread*, %struct.thread** %6, align 8
  %186 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %187 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %187, i32 0, i32 1
  %189 = load i32, i32* @IPC_R, align 4
  %190 = call i32 @ipcperm(%struct.thread* %185, %struct.TYPE_11__* %188, i32 %189)
  store i32 %190, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = call i32 @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %233

194:                                              ; preds = %184
  %195 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %196 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %197 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %196, i32 0, i32 1
  %198 = bitcast %struct.msqid_ds* %195 to i8*
  %199 = bitcast %struct.msqid_ds* %197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 48, i1 false)
  %200 = load %struct.thread*, %struct.thread** %6, align 8
  %201 = getelementptr inbounds %struct.thread, %struct.thread* %200, i32 0, i32 1
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.msqid_kernel*, %struct.msqid_kernel** %13, align 8
  %206 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %205, i32 0, i32 0
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %204, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %194
  %212 = load i32, i32* @IPC_PRIVATE, align 4
  %213 = load %struct.msqid_ds*, %struct.msqid_ds** %9, align 8
  %214 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  store i32 %212, i32* %215, align 4
  br label %216

216:                                              ; preds = %211, %194
  br label %223

217:                                              ; preds = %77
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @DPRINTF(i8* %220)
  %222 = load i32, i32* @EINVAL, align 4
  store i32 %222, i32* %11, align 4
  br label %233

223:                                              ; preds = %216, %141, %88
  %224 = load i32, i32* %11, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.thread*, %struct.thread** %6, align 8
  %229 = getelementptr inbounds %struct.thread, %struct.thread* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  store i32 %227, i32* %231, align 4
  br label %232

232:                                              ; preds = %226, %223
  br label %233

233:                                              ; preds = %232, %217, %192, %138, %118, %102, %87, %75, %66, %54
  %234 = call i32 @mtx_unlock(i32* @msq_mtx)
  %235 = load i32, i32* %11, align 4
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %233, %36, %21
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local %struct.prison* @msg_find_prison(%struct.TYPE_10__*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_CMD(i32) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local i32 @IPCID_TO_IX(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @IPCID_TO_SEQ(i32) #1

declare dso_local i32 @msq_prison_cansee(%struct.prison*, %struct.msqid_kernel*) #1

declare dso_local i32 @ipcperm(%struct.thread*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @msq_remove(%struct.msqid_kernel*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_11__*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
