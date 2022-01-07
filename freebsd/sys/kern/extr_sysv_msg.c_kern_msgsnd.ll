; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_kern_msgsnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_kern_msgsnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i16 }
%struct.msqid_kernel = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32, %struct.msg*, %struct.msg*, %struct.TYPE_14__ }
%struct.msg = type { i32, i64, i64, %struct.msg* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.thread = type { %struct.TYPE_11__*, i64*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.prison = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@msq_mtx = common dso_local global i32 0, align 4
@msginfo = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"msqid (%d) out of range (0<=msqid<%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@msqids = common dso_local global %struct.msqid_kernel* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"no such message queue id\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"wrong sequence number\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"requester can't see prison\0A\00", align 1
@IPC_W = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"requester doesn't have write access\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"msgsz=%zu, msgssz=%d, segs_needed=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"msgsz > msqkptr->u.msg_qbytes\0A\00", align 1
@MSG_LOCKED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"msqid is locked\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"msgsz + msg_cbytes > msg_qbytes\0A\00", align 1
@nfree_msgmaps = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"segs_needed > nfree_msgmaps\0A\00", align 1
@free_msghdrs = common dso_local global %struct.msg* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"no more msghdrs\0A\00", align 1
@IPC_NOWAIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [53 x i8] c"need more resources but caller doesn't want to wait\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"we don't own the msqid_ds\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"we own the msqid_ds\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"msgsnd:  goodnight\0A\00", align 1
@PZERO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"msgsnd\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"msgsnd:  good morning, error=%d\0A\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"msgsnd:  timed out\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"msgsnd:  interrupted system call\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"msqid deleted\0A\00", align 1
@EIDRM = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [36 x i8] c"got all the resources that we need\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"msg_perm.mode & MSG_LOCKED\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"segs_needed > nfree_msgmaps\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"msgsz + msg_cbytes > msg_qbytes\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"no more msghdrs\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"msqid_ds is already locked\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"not enough msgmaps\00", align 1
@free_msgmaps = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"nil free_msgmaps\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"next too low #1\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"next out of range #1\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"allocating segment %d to message\0A\00", align 1
@msgmaps = common dso_local global %struct.TYPE_12__* null, align 8
@.str.31 = private unnamed_addr constant [17 x i8] c"mtype (%ld) < 1\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"next too low #2\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"next out of range #2\00", align 1
@msgpool = common dso_local global i32* null, align 8
@.str.34 = private unnamed_addr constant [37 x i8] c"error %d copying in message segment\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"didn't use all the msg segments\00", align 1
@time_second = common dso_local global i32 0, align 4
@RACCT_MSGQQUEUED = common dso_local global i32 0, align 4
@RACCT_MSGQSIZE = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_msgsnd(%struct.thread* %0, i32 %1, i8* %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.msqid_kernel*, align 8
  %18 = alloca %struct.msg*, align 8
  %19 = alloca %struct.prison*, align 8
  %20 = alloca i16, align 2
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.thread*, %struct.thread** %8, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.prison* @msg_find_prison(i32 %26)
  store %struct.prison* %27, %struct.prison** %19, align 8
  %28 = load %struct.prison*, %struct.prison** %19, align 8
  %29 = icmp eq %struct.prison* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOSYS, align 4
  store i32 %31, i32* %7, align 4
  br label %548

32:                                               ; preds = %6
  %33 = call i32 @mtx_lock(i32* @msq_mtx)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @IPCID_TO_IX(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 0), align 8
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40, %32
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 0), align 8
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @DPRINTF(i8* %48)
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %16, align 4
  br label %545

51:                                               ; preds = %40
  %52 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msqids, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %52, i64 %54
  store %struct.msqid_kernel* %55, %struct.msqid_kernel** %17, align 8
  %56 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %57 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 7
  %59 = call i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_14__* %58)
  %60 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %61 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %16, align 4
  br label %545

68:                                               ; preds = %51
  %69 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %70 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @IPCID_TO_SEQ(i32 %74)
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %16, align 4
  br label %545

80:                                               ; preds = %68
  %81 = load %struct.prison*, %struct.prison** %19, align 8
  %82 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %83 = call i32 @msq_prison_cansee(%struct.prison* %81, %struct.msqid_kernel* %82)
  store i32 %83, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %545

87:                                               ; preds = %80
  %88 = load %struct.thread*, %struct.thread** %8, align 8
  %89 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %90 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 7
  %92 = load i32, i32* @IPC_W, align 4
  %93 = call i32 @ipcperm(%struct.thread* %88, %struct.TYPE_14__* %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = call i32 @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %545

97:                                               ; preds = %87
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 1), align 8
  %100 = call i32 @howmany(i64 %98, i64 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 1), align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @DPRINTF(i8* %105)
  br label %107

107:                                              ; preds = %232, %212, %97
  store i32 0, i32* %21, align 4
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %110 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ugt i64 %108, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %16, align 4
  br label %544

117:                                              ; preds = %107
  %118 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %119 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MSG_LOCKED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %128

128:                                              ; preds = %126, %117
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %131 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %129, %133
  %135 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %136 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ugt i64 %134, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %142

142:                                              ; preds = %140, %128
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @nfree_msgmaps, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %148

148:                                              ; preds = %146, %142
  %149 = load %struct.msg*, %struct.msg** @free_msghdrs, align 8
  %150 = icmp eq %struct.msg* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %153

153:                                              ; preds = %151, %148
  %154 = load i32, i32* %21, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %230

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @IPC_NOWAIT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = call i32 @DPRINTF(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %163 = load i32, i32* @EAGAIN, align 4
  store i32 %163, i32* %16, align 4
  br label %544

164:                                              ; preds = %156
  %165 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %166 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MSG_LOCKED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %22, align 4
  br label %184

175:                                              ; preds = %164
  %176 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %177 = load i32, i32* @MSG_LOCKED, align 4
  %178 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %179 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %177
  store i32 %183, i32* %181, align 8
  store i32 1, i32* %22, align 4
  br label %184

184:                                              ; preds = %175, %173
  %185 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %186 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %187 = load i32, i32* @PZERO, align 4
  %188 = sub nsw i32 %187, 4
  %189 = load i32, i32* @PCATCH, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @hz, align 4
  %192 = call i32 @msleep(%struct.msqid_kernel* %186, i32* @msq_mtx, i32 %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %191)
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i8*
  %196 = call i32 @DPRINTF(i8* %195)
  %197 = load i32, i32* %22, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %184
  %200 = load i32, i32* @MSG_LOCKED, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %203 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, %201
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %199, %184
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @EWOULDBLOCK, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %107

214:                                              ; preds = %208
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %219 = load i32, i32* @EINTR, align 4
  store i32 %219, i32* %16, align 4
  br label %544

220:                                              ; preds = %214
  %221 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %222 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %228 = load i32, i32* @EIDRM, align 4
  store i32 %228, i32* %16, align 4
  br label %544

229:                                              ; preds = %220
  br label %232

230:                                              ; preds = %153
  %231 = call i32 @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  br label %233

232:                                              ; preds = %229
  br label %107

233:                                              ; preds = %230
  %234 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %235 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @MSG_LOCKED, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %233
  %243 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %233
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* @nfree_msgmaps, align 4
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %244
  %251 = load i64, i64* %11, align 8
  %252 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %253 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add i64 %251, %255
  %257 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %258 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ugt i64 %256, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  br label %264

264:                                              ; preds = %262, %250
  %265 = load %struct.msg*, %struct.msg** @free_msghdrs, align 8
  %266 = icmp eq %struct.msg* %265, null
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %264
  %270 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %271 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 7
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @MSG_LOCKED, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %269
  %279 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  br label %280

280:                                              ; preds = %278, %269
  %281 = load i32, i32* @MSG_LOCKED, align 4
  %282 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %283 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 7
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %281
  store i32 %287, i32* %285, align 8
  %288 = load %struct.msg*, %struct.msg** @free_msghdrs, align 8
  store %struct.msg* %288, %struct.msg** %18, align 8
  %289 = load %struct.msg*, %struct.msg** %18, align 8
  %290 = getelementptr inbounds %struct.msg, %struct.msg* %289, i32 0, i32 3
  %291 = load %struct.msg*, %struct.msg** %290, align 8
  store %struct.msg* %291, %struct.msg** @free_msghdrs, align 8
  %292 = load %struct.msg*, %struct.msg** %18, align 8
  %293 = getelementptr inbounds %struct.msg, %struct.msg* %292, i32 0, i32 0
  store i32 -1, i32* %293, align 8
  %294 = load i64, i64* %11, align 8
  %295 = load %struct.msg*, %struct.msg** %18, align 8
  %296 = getelementptr inbounds %struct.msg, %struct.msg* %295, i32 0, i32 1
  store i64 %294, i64* %296, align 8
  %297 = load i64, i64* %13, align 8
  %298 = load %struct.msg*, %struct.msg** %18, align 8
  %299 = getelementptr inbounds %struct.msg, %struct.msg* %298, i32 0, i32 2
  store i64 %297, i64* %299, align 8
  br label %300

300:                                              ; preds = %329, %280
  %301 = load i32, i32* %15, align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %356

303:                                              ; preds = %300
  %304 = load i32, i32* @nfree_msgmaps, align 4
  %305 = icmp sle i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %303
  %309 = load i32, i32* @free_msgmaps, align 4
  %310 = icmp eq i32 %309, -1
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  %312 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  br label %313

313:                                              ; preds = %311, %308
  %314 = load i32, i32* @free_msgmaps, align 4
  %315 = trunc i32 %314 to i16
  store i16 %315, i16* %20, align 2
  %316 = load i16, i16* %20, align 2
  %317 = sext i16 %316 to i32
  %318 = icmp sle i32 %317, -1
  br i1 %318, label %319, label %321

319:                                              ; preds = %313
  %320 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  br label %321

321:                                              ; preds = %319, %313
  %322 = load i16, i16* %20, align 2
  %323 = sext i16 %322 to i32
  %324 = load i16, i16* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 2), align 8
  %325 = sext i16 %324 to i32
  %326 = icmp sge i32 %323, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %321
  %328 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  br label %329

329:                                              ; preds = %327, %321
  %330 = load i16, i16* %20, align 2
  %331 = sext i16 %330 to i64
  %332 = inttoptr i64 %331 to i8*
  %333 = call i32 @DPRINTF(i8* %332)
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** @msgmaps, align 8
  %335 = load i16, i16* %20, align 2
  %336 = sext i16 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* @free_msgmaps, align 4
  %340 = load i32, i32* @nfree_msgmaps, align 4
  %341 = add nsw i32 %340, -1
  store i32 %341, i32* @nfree_msgmaps, align 4
  %342 = load %struct.msg*, %struct.msg** %18, align 8
  %343 = getelementptr inbounds %struct.msg, %struct.msg* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** @msgmaps, align 8
  %346 = load i16, i16* %20, align 2
  %347 = sext i16 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  store i32 %344, i32* %349, align 4
  %350 = load i16, i16* %20, align 2
  %351 = sext i16 %350 to i32
  %352 = load %struct.msg*, %struct.msg** %18, align 8
  %353 = getelementptr inbounds %struct.msg, %struct.msg* %352, i32 0, i32 0
  store i32 %351, i32* %353, align 8
  %354 = load i32, i32* %15, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %15, align 4
  br label %300

356:                                              ; preds = %300
  %357 = load %struct.msg*, %struct.msg** %18, align 8
  %358 = getelementptr inbounds %struct.msg, %struct.msg* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = icmp slt i64 %359, 1
  br i1 %360, label %361, label %380

361:                                              ; preds = %356
  %362 = load %struct.msg*, %struct.msg** %18, align 8
  %363 = call i32 @msg_freehdr(%struct.msg* %362)
  %364 = load i32, i32* @MSG_LOCKED, align 4
  %365 = xor i32 %364, -1
  %366 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %367 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 7
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = and i32 %370, %365
  store i32 %371, i32* %369, align 8
  %372 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %373 = call i32 @wakeup(%struct.msqid_kernel* %372)
  %374 = load %struct.msg*, %struct.msg** %18, align 8
  %375 = getelementptr inbounds %struct.msg, %struct.msg* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = inttoptr i64 %376 to i8*
  %378 = call i32 @DPRINTF(i8* %377)
  %379 = load i32, i32* @EINVAL, align 4
  store i32 %379, i32* %16, align 4
  br label %544

380:                                              ; preds = %356
  %381 = load %struct.msg*, %struct.msg** %18, align 8
  %382 = getelementptr inbounds %struct.msg, %struct.msg* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = trunc i32 %383 to i16
  store i16 %384, i16* %20, align 2
  br label %385

385:                                              ; preds = %440, %380
  %386 = load i64, i64* %11, align 8
  %387 = icmp ugt i64 %386, 0
  br i1 %387, label %388, label %455

388:                                              ; preds = %385
  %389 = load i64, i64* %11, align 8
  %390 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 1), align 8
  %391 = icmp ugt i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %388
  %393 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 1), align 8
  store i64 %393, i64* %23, align 8
  br label %396

394:                                              ; preds = %388
  %395 = load i64, i64* %11, align 8
  store i64 %395, i64* %23, align 8
  br label %396

396:                                              ; preds = %394, %392
  %397 = load i16, i16* %20, align 2
  %398 = sext i16 %397 to i32
  %399 = icmp sle i32 %398, -1
  br i1 %399, label %400, label %402

400:                                              ; preds = %396
  %401 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  br label %402

402:                                              ; preds = %400, %396
  %403 = load i16, i16* %20, align 2
  %404 = sext i16 %403 to i32
  %405 = load i16, i16* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 2), align 8
  %406 = sext i16 %405 to i32
  %407 = icmp sge i32 %404, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %402
  %409 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0))
  br label %410

410:                                              ; preds = %408, %402
  %411 = call i32 @mtx_unlock(i32* @msq_mtx)
  %412 = load i8*, i8** %10, align 8
  %413 = load i32*, i32** @msgpool, align 8
  %414 = load i16, i16* %20, align 2
  %415 = sext i16 %414 to i64
  %416 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @msginfo, i32 0, i32 1), align 8
  %417 = mul i64 %415, %416
  %418 = getelementptr inbounds i32, i32* %413, i64 %417
  %419 = load i64, i64* %23, align 8
  %420 = call i32 @copyin(i8* %412, i32* %418, i64 %419)
  store i32 %420, i32* %16, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %440

422:                                              ; preds = %410
  %423 = call i32 @mtx_lock(i32* @msq_mtx)
  %424 = load i32, i32* %16, align 4
  %425 = sext i32 %424 to i64
  %426 = inttoptr i64 %425 to i8*
  %427 = call i32 @DPRINTF(i8* %426)
  %428 = load %struct.msg*, %struct.msg** %18, align 8
  %429 = call i32 @msg_freehdr(%struct.msg* %428)
  %430 = load i32, i32* @MSG_LOCKED, align 4
  %431 = xor i32 %430, -1
  %432 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %433 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 7
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = and i32 %436, %431
  store i32 %437, i32* %435, align 8
  %438 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %439 = call i32 @wakeup(%struct.msqid_kernel* %438)
  br label %544

440:                                              ; preds = %410
  %441 = call i32 @mtx_lock(i32* @msq_mtx)
  %442 = load i64, i64* %23, align 8
  %443 = load i64, i64* %11, align 8
  %444 = sub i64 %443, %442
  store i64 %444, i64* %11, align 8
  %445 = load i8*, i8** %10, align 8
  %446 = load i64, i64* %23, align 8
  %447 = getelementptr inbounds i8, i8* %445, i64 %446
  store i8* %447, i8** %10, align 8
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** @msgmaps, align 8
  %449 = load i16, i16* %20, align 2
  %450 = sext i16 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = trunc i32 %453 to i16
  store i16 %454, i16* %20, align 2
  br label %385

455:                                              ; preds = %385
  %456 = load i16, i16* %20, align 2
  %457 = sext i16 %456 to i32
  %458 = icmp ne i32 %457, -1
  br i1 %458, label %459, label %461

459:                                              ; preds = %455
  %460 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0))
  br label %461

461:                                              ; preds = %459, %455
  %462 = load i32, i32* @MSG_LOCKED, align 4
  %463 = xor i32 %462, -1
  %464 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %465 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 7
  %467 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = and i32 %468, %463
  store i32 %469, i32* %467, align 8
  %470 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %471 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %461
  %476 = load %struct.msg*, %struct.msg** %18, align 8
  %477 = call i32 @msg_freehdr(%struct.msg* %476)
  %478 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %479 = call i32 @wakeup(%struct.msqid_kernel* %478)
  %480 = load i32, i32* @EIDRM, align 4
  store i32 %480, i32* %16, align 4
  br label %544

481:                                              ; preds = %461
  %482 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %483 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 6
  %485 = load %struct.msg*, %struct.msg** %484, align 8
  %486 = icmp eq %struct.msg* %485, null
  br i1 %486, label %487, label %496

487:                                              ; preds = %481
  %488 = load %struct.msg*, %struct.msg** %18, align 8
  %489 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %490 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 6
  store %struct.msg* %488, %struct.msg** %491, align 8
  %492 = load %struct.msg*, %struct.msg** %18, align 8
  %493 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %494 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 5
  store %struct.msg* %492, %struct.msg** %495, align 8
  br label %507

496:                                              ; preds = %481
  %497 = load %struct.msg*, %struct.msg** %18, align 8
  %498 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %499 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 5
  %501 = load %struct.msg*, %struct.msg** %500, align 8
  %502 = getelementptr inbounds %struct.msg, %struct.msg* %501, i32 0, i32 3
  store %struct.msg* %497, %struct.msg** %502, align 8
  %503 = load %struct.msg*, %struct.msg** %18, align 8
  %504 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %505 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 5
  store %struct.msg* %503, %struct.msg** %506, align 8
  br label %507

507:                                              ; preds = %496, %487
  %508 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %509 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %509, i32 0, i32 5
  %511 = load %struct.msg*, %struct.msg** %510, align 8
  %512 = getelementptr inbounds %struct.msg, %struct.msg* %511, i32 0, i32 3
  store %struct.msg* null, %struct.msg** %512, align 8
  %513 = load %struct.msg*, %struct.msg** %18, align 8
  %514 = getelementptr inbounds %struct.msg, %struct.msg* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %517 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %517, i32 0, i32 1
  %519 = load i64, i64* %518, align 8
  %520 = add i64 %519, %515
  store i64 %520, i64* %518, align 8
  %521 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %522 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 4
  %524 = load i32, i32* %523, align 8
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %523, align 8
  %526 = load %struct.thread*, %struct.thread** %8, align 8
  %527 = getelementptr inbounds %struct.thread, %struct.thread* %526, i32 0, i32 0
  %528 = load %struct.TYPE_11__*, %struct.TYPE_11__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %532 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 3
  store i32 %530, i32* %533, align 4
  %534 = load i32, i32* @time_second, align 4
  %535 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %536 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 2
  store i32 %534, i32* %537, align 8
  %538 = load %struct.msqid_kernel*, %struct.msqid_kernel** %17, align 8
  %539 = call i32 @wakeup(%struct.msqid_kernel* %538)
  %540 = load %struct.thread*, %struct.thread** %8, align 8
  %541 = getelementptr inbounds %struct.thread, %struct.thread* %540, i32 0, i32 1
  %542 = load i64*, i64** %541, align 8
  %543 = getelementptr inbounds i64, i64* %542, i64 0
  store i64 0, i64* %543, align 8
  br label %544

544:                                              ; preds = %507, %475, %422, %361, %226, %217, %161, %114
  br label %545

545:                                              ; preds = %544, %95, %85, %77, %65, %44
  %546 = call i32 @mtx_unlock(i32* @msq_mtx)
  %547 = load i32, i32* %16, align 4
  store i32 %547, i32* %7, align 4
  br label %548

548:                                              ; preds = %545, %30
  %549 = load i32, i32* %7, align 4
  ret i32 %549
}

declare dso_local %struct.prison* @msg_find_prison(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local i32 @IPCID_TO_IX(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_14__*) #1

declare dso_local i64 @IPCID_TO_SEQ(i32) #1

declare dso_local i32 @msq_prison_cansee(%struct.prison*, %struct.msqid_kernel*) #1

declare dso_local i32 @ipcperm(%struct.thread*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @howmany(i64, i64) #1

declare dso_local i32 @msleep(%struct.msqid_kernel*, i32*, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @msg_freehdr(%struct.msg*) #1

declare dso_local i32 @wakeup(%struct.msqid_kernel*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyin(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
