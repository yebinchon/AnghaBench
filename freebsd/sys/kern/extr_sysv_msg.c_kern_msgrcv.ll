; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_kern_msgrcv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_kern_msgrcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i16 }
%struct.msqid_kernel = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i32, %struct.TYPE_11__, %struct.msg*, %struct.msg* }
%struct.TYPE_11__ = type { i64 }
%struct.msg = type { i64, i64, i16, %struct.msg* }
%struct.TYPE_9__ = type { i16 }
%struct.thread = type { i64*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.prison = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@msginfo = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"msqid (%d) out of range (0<=msqid<%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@msqids = common dso_local global %struct.msqid_kernel* null, align 8
@msq_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no such message queue id\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"wrong sequence number\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"requester can't see prison\0A\00", align 1
@IPC_R = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"requester doesn't have read access\0A\00", align 1
@MSG_NOERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"first message on the queue is too big (want %zu, got %d)\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"msg_first/last screwed up #1\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"found message type %ld, requested %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"requested message on the queue is too big (want %zu, got %hu)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"__msg_first/last screwed up #2\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"__msg_first/last screwed up #3\00", align 1
@IPC_NOWAIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"no appropriate message found (msgtyp=%ld)\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"msgrcv:  goodnight\0A\00", align 1
@PZERO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"msgrcv\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"msgrcv:  good morning (error=%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"msgrcv:  interrupted system call\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"msqid deleted\0A\00", align 1
@EIDRM = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@RACCT_MSGQQUEUED = common dso_local global i32 0, align 4
@RACCT_MSGQSIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"found a message, msgsz=%zu, msg_ts=%hu\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"next too low #3\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"next out of range #3\00", align 1
@msgpool = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [40 x i8] c"error (%d) copying out message segment\0A\00", align 1
@msgmaps = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_msgrcv(%struct.thread* %0, i32 %1, i8* %2, i64 %3, i64 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.msqid_kernel*, align 8
  %18 = alloca %struct.msg*, align 8
  %19 = alloca %struct.prison*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i16, align 2
  %23 = alloca %struct.msg*, align 8
  %24 = alloca %struct.msg**, align 8
  %25 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i32 0, i32* %21, align 4
  %26 = load %struct.thread*, %struct.thread** %9, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.prison* @msg_find_prison(i32 %28)
  store %struct.prison* %29, %struct.prison** %19, align 8
  %30 = load %struct.prison*, %struct.prison** %19, align 8
  %31 = icmp eq %struct.prison* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* @ENOSYS, align 4
  store i32 %33, i32* %8, align 4
  br label %454

34:                                               ; preds = %7
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @IPCID_TO_IX(i32 %37)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msginfo, i32 0, i32 0), align 8
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msginfo, i32 0, i32 0), align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DPRINTF(i8* %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %8, align 4
  br label %454

52:                                               ; preds = %41
  %53 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msqids, align 8
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %53, i64 %55
  store %struct.msqid_kernel* %56, %struct.msqid_kernel** %17, align 8
  %57 = call i32 @mtx_lock(i32* @msq_mtx)
  %58 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %59 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  %61 = call i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_11__* %60)
  %62 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %63 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %21, align 4
  br label %451

70:                                               ; preds = %52
  %71 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %72 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @IPCID_TO_SEQ(i32 %76)
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %21, align 4
  br label %451

82:                                               ; preds = %70
  %83 = load %struct.prison*, %struct.prison** %19, align 8
  %84 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %85 = call i32 @msq_prison_cansee(%struct.prison* %83, %struct.msqid_kernel* %84)
  store i32 %85, i32* %21, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %451

89:                                               ; preds = %82
  %90 = load %struct.thread*, %struct.thread** %9, align 8
  %91 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %92 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  %94 = load i32, i32* @IPC_R, align 4
  %95 = call i32 @ipcperm(%struct.thread* %90, %struct.TYPE_11__* %93, i32 %94)
  store i32 %95, i32* %21, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = call i32 @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %451

99:                                               ; preds = %89
  store %struct.msg* null, %struct.msg** %18, align 8
  br label %100

100:                                              ; preds = %310, %99
  %101 = load %struct.msg*, %struct.msg** %18, align 8
  %102 = icmp eq %struct.msg* %101, null
  br i1 %102, label %103, label %311

103:                                              ; preds = %100
  %104 = load i64, i64* %13, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %166

106:                                              ; preds = %103
  %107 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %108 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 7
  %110 = load %struct.msg*, %struct.msg** %109, align 8
  store %struct.msg* %110, %struct.msg** %18, align 8
  %111 = load %struct.msg*, %struct.msg** %18, align 8
  %112 = icmp ne %struct.msg* %111, null
  br i1 %112, label %113, label %165

113:                                              ; preds = %106
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.msg*, %struct.msg** %18, align 8
  %116 = getelementptr inbounds %struct.msg, %struct.msg* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %114, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %113
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @MSG_NOERROR, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.msg*, %struct.msg** %18, align 8
  %127 = getelementptr inbounds %struct.msg, %struct.msg* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 @DPRINTF(i8* %129)
  %131 = load i32, i32* @E2BIG, align 4
  store i32 %131, i32* %21, align 4
  br label %451

132:                                              ; preds = %119, %113
  %133 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %134 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 7
  %136 = load %struct.msg*, %struct.msg** %135, align 8
  %137 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %138 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 6
  %140 = load %struct.msg*, %struct.msg** %139, align 8
  %141 = icmp eq %struct.msg* %136, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %132
  %143 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %144 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 7
  store %struct.msg* null, %struct.msg** %145, align 8
  %146 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %147 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 6
  store %struct.msg* null, %struct.msg** %148, align 8
  br label %164

149:                                              ; preds = %132
  %150 = load %struct.msg*, %struct.msg** %18, align 8
  %151 = getelementptr inbounds %struct.msg, %struct.msg* %150, i32 0, i32 3
  %152 = load %struct.msg*, %struct.msg** %151, align 8
  %153 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %154 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 7
  store %struct.msg* %152, %struct.msg** %155, align 8
  %156 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %157 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 7
  %159 = load %struct.msg*, %struct.msg** %158, align 8
  %160 = icmp eq %struct.msg* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %149
  br label %164

164:                                              ; preds = %163, %142
  br label %165

165:                                              ; preds = %164, %106
  br label %261

166:                                              ; preds = %103
  store %struct.msg* null, %struct.msg** %23, align 8
  %167 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %168 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 7
  store %struct.msg** %169, %struct.msg*** %24, align 8
  br label %170

170:                                              ; preds = %256, %166
  %171 = load %struct.msg**, %struct.msg*** %24, align 8
  %172 = load %struct.msg*, %struct.msg** %171, align 8
  store %struct.msg* %172, %struct.msg** %18, align 8
  %173 = icmp ne %struct.msg* %172, null
  br i1 %173, label %174, label %260

174:                                              ; preds = %170
  %175 = load i64, i64* %13, align 8
  %176 = load %struct.msg*, %struct.msg** %18, align 8
  %177 = getelementptr inbounds %struct.msg, %struct.msg* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %174
  %181 = load %struct.msg*, %struct.msg** %18, align 8
  %182 = getelementptr inbounds %struct.msg, %struct.msg* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = sub nsw i64 0, %184
  %186 = icmp sle i64 %183, %185
  br i1 %186, label %187, label %256

187:                                              ; preds = %180, %174
  %188 = load %struct.msg*, %struct.msg** %18, align 8
  %189 = getelementptr inbounds %struct.msg, %struct.msg* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %13, align 8
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 @DPRINTF(i8* %192)
  %194 = load i64, i64* %12, align 8
  %195 = load %struct.msg*, %struct.msg** %18, align 8
  %196 = getelementptr inbounds %struct.msg, %struct.msg* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ult i64 %194, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %187
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @MSG_NOERROR, align 4
  %202 = and i32 %200, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load i64, i64* %12, align 8
  %206 = load %struct.msg*, %struct.msg** %18, align 8
  %207 = getelementptr inbounds %struct.msg, %struct.msg* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = call i32 @DPRINTF(i8* %209)
  %211 = load i32, i32* @E2BIG, align 4
  store i32 %211, i32* %21, align 4
  br label %451

212:                                              ; preds = %199, %187
  %213 = load %struct.msg*, %struct.msg** %18, align 8
  %214 = getelementptr inbounds %struct.msg, %struct.msg* %213, i32 0, i32 3
  %215 = load %struct.msg*, %struct.msg** %214, align 8
  %216 = load %struct.msg**, %struct.msg*** %24, align 8
  store %struct.msg* %215, %struct.msg** %216, align 8
  %217 = load %struct.msg*, %struct.msg** %18, align 8
  %218 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %219 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 6
  %221 = load %struct.msg*, %struct.msg** %220, align 8
  %222 = icmp eq %struct.msg* %217, %221
  br i1 %222, label %223, label %255

223:                                              ; preds = %212
  %224 = load %struct.msg*, %struct.msg** %23, align 8
  %225 = icmp eq %struct.msg* %224, null
  br i1 %225, label %226, label %241

226:                                              ; preds = %223
  %227 = load %struct.msg**, %struct.msg*** %24, align 8
  %228 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %229 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 7
  %231 = icmp ne %struct.msg** %227, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %226
  %235 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %236 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 7
  store %struct.msg* null, %struct.msg** %237, align 8
  %238 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %239 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 6
  store %struct.msg* null, %struct.msg** %240, align 8
  br label %254

241:                                              ; preds = %223
  %242 = load %struct.msg**, %struct.msg*** %24, align 8
  %243 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %244 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 7
  %246 = icmp eq %struct.msg** %242, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %241
  %250 = load %struct.msg*, %struct.msg** %23, align 8
  %251 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %252 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 6
  store %struct.msg* %250, %struct.msg** %253, align 8
  br label %254

254:                                              ; preds = %249, %234
  br label %255

255:                                              ; preds = %254, %212
  br label %260

256:                                              ; preds = %180
  %257 = load %struct.msg*, %struct.msg** %18, align 8
  store %struct.msg* %257, %struct.msg** %23, align 8
  %258 = load %struct.msg*, %struct.msg** %18, align 8
  %259 = getelementptr inbounds %struct.msg, %struct.msg* %258, i32 0, i32 3
  store %struct.msg** %259, %struct.msg*** %24, align 8
  br label %170

260:                                              ; preds = %255, %170
  br label %261

261:                                              ; preds = %260, %165
  %262 = load %struct.msg*, %struct.msg** %18, align 8
  %263 = icmp ne %struct.msg* %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  br label %311

265:                                              ; preds = %261
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* @IPC_NOWAIT, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load i64, i64* %13, align 8
  %272 = inttoptr i64 %271 to i8*
  %273 = call i32 @DPRINTF(i8* %272)
  %274 = load i32, i32* @ENOMSG, align 4
  store i32 %274, i32* %21, align 4
  br label %451

275:                                              ; preds = %265
  %276 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %277 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %278 = load i32, i32* @PZERO, align 4
  %279 = sub nsw i32 %278, 4
  %280 = load i32, i32* @PCATCH, align 4
  %281 = or i32 %279, %280
  %282 = call i32 @msleep(%struct.msqid_kernel* %277, i32* @msq_mtx, i32 %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 0)
  store i32 %282, i32* %21, align 4
  %283 = load i32, i32* %21, align 4
  %284 = sext i32 %283 to i64
  %285 = inttoptr i64 %284 to i8*
  %286 = call i32 @DPRINTF(i8* %285)
  %287 = load i32, i32* %21, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %275
  %290 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  %291 = load i32, i32* @EINTR, align 4
  store i32 %291, i32* %21, align 4
  br label %451

292:                                              ; preds = %275
  %293 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %294 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %307, label %298

298:                                              ; preds = %292
  %299 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %300 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = call i64 @IPCID_TO_SEQ(i32 %304)
  %306 = icmp ne i64 %303, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %298, %292
  %308 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %309 = load i32, i32* @EIDRM, align 4
  store i32 %309, i32* %21, align 4
  br label %451

310:                                              ; preds = %298
  br label %100

311:                                              ; preds = %264, %100
  %312 = load %struct.msg*, %struct.msg** %18, align 8
  %313 = getelementptr inbounds %struct.msg, %struct.msg* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %316 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = sub i64 %318, %314
  store i64 %319, i64* %317, align 8
  %320 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %321 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, -1
  store i32 %324, i32* %322, align 8
  %325 = load %struct.thread*, %struct.thread** %9, align 8
  %326 = getelementptr inbounds %struct.thread, %struct.thread* %325, i32 0, i32 1
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %331 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 3
  store i32 %329, i32* %332, align 4
  %333 = load i32, i32* @time_second, align 4
  %334 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %335 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 2
  store i32 %333, i32* %336, align 8
  %337 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %338 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @RACCT_MSGQQUEUED, align 4
  %341 = call i32 @racct_sub_cred(i32 %339, i32 %340, i32 1)
  %342 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %343 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @RACCT_MSGQSIZE, align 4
  %346 = load %struct.msg*, %struct.msg** %18, align 8
  %347 = getelementptr inbounds %struct.msg, %struct.msg* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = trunc i64 %348 to i32
  %350 = call i32 @racct_sub_cred(i32 %344, i32 %345, i32 %349)
  %351 = load i64, i64* %12, align 8
  %352 = load %struct.msg*, %struct.msg** %18, align 8
  %353 = getelementptr inbounds %struct.msg, %struct.msg* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = inttoptr i64 %354 to i8*
  %356 = call i32 @DPRINTF(i8* %355)
  %357 = load i64, i64* %12, align 8
  %358 = load %struct.msg*, %struct.msg** %18, align 8
  %359 = getelementptr inbounds %struct.msg, %struct.msg* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp ugt i64 %357, %360
  br i1 %361, label %362, label %366

362:                                              ; preds = %311
  %363 = load %struct.msg*, %struct.msg** %18, align 8
  %364 = getelementptr inbounds %struct.msg, %struct.msg* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %12, align 8
  br label %366

366:                                              ; preds = %362, %311
  %367 = load %struct.msg*, %struct.msg** %18, align 8
  %368 = getelementptr inbounds %struct.msg, %struct.msg* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = load i64*, i64** %15, align 8
  store i64 %369, i64* %370, align 8
  %371 = load %struct.msg*, %struct.msg** %18, align 8
  %372 = getelementptr inbounds %struct.msg, %struct.msg* %371, i32 0, i32 2
  %373 = load i16, i16* %372, align 8
  store i16 %373, i16* %22, align 2
  store i64 0, i64* %16, align 8
  br label %374

374:                                              ; preds = %437, %366
  %375 = load i64, i64* %16, align 8
  %376 = load i64, i64* %12, align 8
  %377 = icmp ult i64 %375, %376
  br i1 %377, label %378, label %441

378:                                              ; preds = %374
  %379 = load i64, i64* %12, align 8
  %380 = load i64, i64* %16, align 8
  %381 = sub i64 %379, %380
  %382 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msginfo, i32 0, i32 1), align 8
  %383 = icmp ugt i64 %381, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %378
  %385 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msginfo, i32 0, i32 1), align 8
  store i64 %385, i64* %25, align 8
  br label %390

386:                                              ; preds = %378
  %387 = load i64, i64* %12, align 8
  %388 = load i64, i64* %16, align 8
  %389 = sub i64 %387, %388
  store i64 %389, i64* %25, align 8
  br label %390

390:                                              ; preds = %386, %384
  %391 = load i16, i16* %22, align 2
  %392 = sext i16 %391 to i32
  %393 = icmp sle i32 %392, -1
  br i1 %393, label %394, label %396

394:                                              ; preds = %390
  %395 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %396

396:                                              ; preds = %394, %390
  %397 = load i16, i16* %22, align 2
  %398 = sext i16 %397 to i32
  %399 = load i16, i16* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msginfo, i32 0, i32 2), align 8
  %400 = sext i16 %399 to i32
  %401 = icmp sge i32 %398, %400
  br i1 %401, label %402, label %404

402:                                              ; preds = %396
  %403 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  br label %404

404:                                              ; preds = %402, %396
  %405 = call i32 @mtx_unlock(i32* @msq_mtx)
  %406 = load i32*, i32** @msgpool, align 8
  %407 = load i16, i16* %22, align 2
  %408 = sext i16 %407 to i64
  %409 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msginfo, i32 0, i32 1), align 8
  %410 = mul i64 %408, %409
  %411 = getelementptr inbounds i32, i32* %406, i64 %410
  %412 = load i8*, i8** %11, align 8
  %413 = load i64, i64* %25, align 8
  %414 = call i32 @copyout(i32* %411, i8* %412, i64 %413)
  store i32 %414, i32* %21, align 4
  %415 = call i32 @mtx_lock(i32* @msq_mtx)
  %416 = load i32, i32* %21, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %427

418:                                              ; preds = %404
  %419 = load i32, i32* %21, align 4
  %420 = sext i32 %419 to i64
  %421 = inttoptr i64 %420 to i8*
  %422 = call i32 @DPRINTF(i8* %421)
  %423 = load %struct.msg*, %struct.msg** %18, align 8
  %424 = call i32 @msg_freehdr(%struct.msg* %423)
  %425 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %426 = call i32 @wakeup(%struct.msqid_kernel* %425)
  br label %451

427:                                              ; preds = %404
  %428 = load i8*, i8** %11, align 8
  %429 = load i64, i64* %25, align 8
  %430 = getelementptr inbounds i8, i8* %428, i64 %429
  store i8* %430, i8** %11, align 8
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** @msgmaps, align 8
  %432 = load i16, i16* %22, align 2
  %433 = sext i16 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 0
  %436 = load i16, i16* %435, align 2
  store i16 %436, i16* %22, align 2
  br label %437

437:                                              ; preds = %427
  %438 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msginfo, i32 0, i32 1), align 8
  %439 = load i64, i64* %16, align 8
  %440 = add i64 %439, %438
  store i64 %440, i64* %16, align 8
  br label %374

441:                                              ; preds = %374
  %442 = load %struct.msg*, %struct.msg** %18, align 8
  %443 = call i32 @msg_freehdr(%struct.msg* %442)
  %444 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %445 = call i32 @wakeup(%struct.msqid_kernel* %444)
  %446 = load i64, i64* %12, align 8
  %447 = load %struct.thread*, %struct.thread** %9, align 8
  %448 = getelementptr inbounds %struct.thread, %struct.thread* %447, i32 0, i32 0
  %449 = load i64*, i64** %448, align 8
  %450 = getelementptr inbounds i64, i64* %449, i64 0
  store i64 %446, i64* %450, align 8
  br label %451

451:                                              ; preds = %441, %418, %307, %289, %270, %204, %124, %97, %87, %79, %67
  %452 = call i32 @mtx_unlock(i32* @msq_mtx)
  %453 = load i32, i32* %21, align 4
  store i32 %453, i32* %8, align 4
  br label %454

454:                                              ; preds = %451, %45, %32
  %455 = load i32, i32* %8, align 4
  ret i32 %455
}

declare dso_local %struct.prison* @msg_find_prison(i32) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local i32 @IPCID_TO_IX(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_11__*) #1

declare dso_local i64 @IPCID_TO_SEQ(i32) #1

declare dso_local i32 @msq_prison_cansee(%struct.prison*, %struct.msqid_kernel*) #1

declare dso_local i32 @ipcperm(%struct.thread*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @msleep(%struct.msqid_kernel*, i32*, i32, i8*, i32) #1

declare dso_local i32 @racct_sub_cred(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyout(i32*, i8*, i64) #1

declare dso_local i32 @msg_freehdr(%struct.msg*) #1

declare dso_local i32 @wakeup(%struct.msqid_kernel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
