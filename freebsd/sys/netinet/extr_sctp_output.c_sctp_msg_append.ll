; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_msg_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_msg_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, %struct.sctp_stream_out.1*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.sctp_tcb.0*, %struct.TYPE_6__*, %struct.sctp_stream_out*, %struct.sctp_stream_queue_pending*, i32)* }
%struct.sctp_tcb.0 = type opaque
%struct.sctp_stream_out = type opaque
%struct.sctp_stream_queue_pending = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.sctp_stream_out.1 = type { i32 }
%struct.sctp_nets = type { i32 }
%struct.mbuf = type { i32 }
%struct.sctp_sndrcvinfo = type { i64, i32, i32, i64, i32, i32, i32 }
%struct.sctp_stream_queue_pending.2 = type { i32, i64, i32, i32, i32, i64, i32, %struct.mbuf*, %struct.mbuf*, i64, i32, %struct.sctp_nets*, i64, i32, i32, i32 }

@SCTP_FROM_SCTP_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_ACK_SENT = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCTP_ADDR_OVER = common dso_local global i32 0, align 4
@SCTP_DATA = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_nets*, %struct.mbuf*, %struct.sctp_sndrcvinfo*, i32)* @sctp_msg_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_msg_append(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, %struct.mbuf* %2, %struct.sctp_sndrcvinfo* %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.sctp_sndrcvinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.sctp_stream_queue_pending.2*, align 8
  %14 = alloca %struct.sctp_stream_out.1*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %7, align 8
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store %struct.sctp_sndrcvinfo* %3, %struct.sctp_sndrcvinfo** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.sctp_stream_queue_pending.2* null, %struct.sctp_stream_queue_pending.2** %13, align 8
  %15 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %16 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %19 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %17, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %25 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %26 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %27 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @SCTP_LTRACE_ERR_RET_PKT(%struct.mbuf* %24, i32* null, %struct.sctp_tcb* %25, %struct.sctp_nets* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %11, align 4
  br label %266

31:                                               ; preds = %5
  %32 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %33 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %39 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %43 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %48 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %49 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %50 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @SCTP_LTRACE_ERR_RET_PKT(%struct.mbuf* %47, i32* null, %struct.sctp_tcb* %48, %struct.sctp_nets* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %11, align 4
  br label %266

54:                                               ; preds = %37, %31
  %55 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %56 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 7
  %58 = load %struct.sctp_stream_out.1*, %struct.sctp_stream_out.1** %57, align 8
  %59 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %60 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.sctp_stream_out.1, %struct.sctp_stream_out.1* %58, i64 %61
  store %struct.sctp_stream_out.1* %62, %struct.sctp_stream_out.1** %14, align 8
  %63 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %64 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %63)
  %65 = load i64, i64* @SCTP_STATE_SHUTDOWN_SENT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %85, label %67

67:                                               ; preds = %54
  %68 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %69 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %68)
  %70 = load i64, i64* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %85, label %72

72:                                               ; preds = %67
  %73 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %74 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %73)
  %75 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %79 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SCTP_STATE_SHUTDOWN_PENDING, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77, %72, %67, %54
  %86 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %87 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %88 = load i32, i32* @ECONNRESET, align 4
  %89 = call i32 @SCTP_LTRACE_ERR_RET(i32* null, %struct.sctp_tcb* %86, i32* null, i32 %87, i32 %88)
  %90 = load i32, i32* @ECONNRESET, align 4
  store i32 %90, i32* %11, align 4
  br label %266

91:                                               ; preds = %77
  %92 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %93 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %94 = call i32 @sctp_alloc_a_strmoq(%struct.sctp_tcb* %92, %struct.sctp_stream_queue_pending.2* %93)
  %95 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %96 = icmp eq %struct.sctp_stream_queue_pending.2* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %99 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = call i32 @SCTP_LTRACE_ERR_RET(i32* null, %struct.sctp_tcb* %98, i32* null, i32 %99, i32 %100)
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %11, align 4
  br label %266

103:                                              ; preds = %91
  %104 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %105 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %108 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %110 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %113 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %112, i32 0, i32 15
  store i32 %111, i32* %113, align 8
  %114 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %115 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %118 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %117, i32 0, i32 14
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %120 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %123 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %122, i32 0, i32 13
  store i32 %121, i32* %123, align 8
  %124 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %125 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %124, i32 0, i32 12
  store i64 0, i64* %125, align 8
  %126 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %127 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SCTP_ADDR_OVER, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %103
  %133 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %134 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %135 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %134, i32 0, i32 11
  store %struct.sctp_nets* %133, %struct.sctp_nets** %135, align 8
  %136 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %137 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %136, i32 0, i32 11
  %138 = load %struct.sctp_nets*, %struct.sctp_nets** %137, align 8
  %139 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %138, i32 0, i32 0
  %140 = call i32 @atomic_add_int(i32* %139, i32 1)
  br label %144

141:                                              ; preds = %103
  %142 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %143 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %142, i32 0, i32 11
  store %struct.sctp_nets* null, %struct.sctp_nets** %143, align 8
  br label %144

144:                                              ; preds = %141, %132
  %145 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %146 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %145, i32 0, i32 10
  %147 = call i32 @SCTP_GETTIME_TIMEVAL(i32* %146)
  %148 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %149 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %152 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %154 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %153, i32 0, i32 2
  store i32 1, i32* %154, align 8
  %155 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %156 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %155, i32 0, i32 3
  store i32 1, i32* %156, align 4
  %157 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %158 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %157, i32 0, i32 9
  store i64 0, i64* %158, align 8
  %159 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %160 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %161 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %160, i32 0, i32 8
  store %struct.mbuf* %159, %struct.mbuf** %161, align 8
  %162 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %163 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %162, i32 0, i32 7
  store %struct.mbuf* null, %struct.mbuf** %163, align 8
  %164 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %165 = call i32 @sctp_set_prsctp_policy(%struct.sctp_stream_queue_pending.2* %164)
  %166 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %167 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %166, i32 0, i32 5
  store i64 0, i64* %167, align 8
  %168 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %168, %struct.mbuf** %12, align 8
  br label %169

169:                                              ; preds = %187, %144
  %170 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %171 = icmp ne %struct.mbuf* %170, null
  br i1 %171, label %172, label %190

172:                                              ; preds = %169
  %173 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %174 = call %struct.mbuf* @SCTP_BUF_NEXT(%struct.mbuf* %173)
  %175 = icmp eq %struct.mbuf* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %178 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %179 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %178, i32 0, i32 7
  store %struct.mbuf* %177, %struct.mbuf** %179, align 8
  br label %180

180:                                              ; preds = %176, %172
  %181 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %182 = call i64 @SCTP_BUF_LEN(%struct.mbuf* %181)
  %183 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %184 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %182
  store i64 %186, i64* %184, align 8
  br label %187

187:                                              ; preds = %180
  %188 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %189 = call %struct.mbuf* @SCTP_BUF_NEXT(%struct.mbuf* %188)
  store %struct.mbuf* %189, %struct.mbuf** %12, align 8
  br label %169

190:                                              ; preds = %169
  %191 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %192 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %197 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %200 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 8
  br label %209

201:                                              ; preds = %190
  %202 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %203 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %208 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %201, %195
  %210 = load i32, i32* @SCTP_DATA, align 4
  %211 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %212 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @sctp_auth_is_required_chunk(i32 %210, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %209
  %218 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %219 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %220 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @sctp_auth_key_acquire(%struct.sctp_tcb* %218, i32 %221)
  %223 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %224 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %223, i32 0, i32 4
  store i32 1, i32* %224, align 8
  br label %225

225:                                              ; preds = %217, %209
  %226 = load i32, i32* %10, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %230 = call i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb* %229)
  br label %231

231:                                              ; preds = %228, %225
  %232 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %233 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %234 = getelementptr inbounds %struct.sctp_stream_queue_pending.2, %struct.sctp_stream_queue_pending.2* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @sctp_snd_sb_alloc(%struct.sctp_tcb* %232, i64 %235)
  %237 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %238 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 4
  %240 = call i32 @atomic_add_int(i32* %239, i32 1)
  %241 = load %struct.sctp_stream_out.1*, %struct.sctp_stream_out.1** %14, align 8
  %242 = getelementptr inbounds %struct.sctp_stream_out.1, %struct.sctp_stream_out.1* %241, i32 0, i32 0
  %243 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %244 = load i32, i32* @next, align 4
  %245 = call i32 @TAILQ_INSERT_TAIL(i32* %242, %struct.sctp_stream_queue_pending.2* %243, i32 %244)
  %246 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %247 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32 (%struct.sctp_tcb.0*, %struct.TYPE_6__*, %struct.sctp_stream_out*, %struct.sctp_stream_queue_pending*, i32)*, i32 (%struct.sctp_tcb.0*, %struct.TYPE_6__*, %struct.sctp_stream_out*, %struct.sctp_stream_queue_pending*, i32)** %249, align 8
  %251 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %252 = bitcast %struct.sctp_tcb* %251 to %struct.sctp_tcb.0*
  %253 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %254 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %253, i32 0, i32 0
  %255 = load %struct.sctp_stream_out.1*, %struct.sctp_stream_out.1** %14, align 8
  %256 = bitcast %struct.sctp_stream_out.1* %255 to %struct.sctp_stream_out*
  %257 = load %struct.sctp_stream_queue_pending.2*, %struct.sctp_stream_queue_pending.2** %13, align 8
  %258 = bitcast %struct.sctp_stream_queue_pending.2* %257 to %struct.sctp_stream_queue_pending*
  %259 = call i32 %250(%struct.sctp_tcb.0* %252, %struct.TYPE_6__* %254, %struct.sctp_stream_out* %256, %struct.sctp_stream_queue_pending* %258, i32 1)
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  %260 = load i32, i32* %10, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %231
  %263 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %264 = call i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb* %263)
  br label %265

265:                                              ; preds = %262, %231
  br label %266

266:                                              ; preds = %265, %97, %85, %46, %23
  %267 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %268 = icmp ne %struct.mbuf* %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %271 = call i32 @sctp_m_freem(%struct.mbuf* %270)
  br label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %11, align 4
  ret i32 %273
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET_PKT(%struct.mbuf*, i32*, %struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_LTRACE_ERR_RET(i32*, %struct.sctp_tcb*, i32*, i32, i32) #1

declare dso_local i32 @sctp_alloc_a_strmoq(%struct.sctp_tcb*, %struct.sctp_stream_queue_pending.2*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(i32*) #1

declare dso_local i32 @sctp_set_prsctp_policy(%struct.sctp_stream_queue_pending.2*) #1

declare dso_local %struct.mbuf* @SCTP_BUF_NEXT(%struct.mbuf*) #1

declare dso_local i64 @SCTP_BUF_LEN(%struct.mbuf*) #1

declare dso_local i64 @sctp_auth_is_required_chunk(i32, i32) #1

declare dso_local i32 @sctp_auth_key_acquire(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_snd_sb_alloc(%struct.sctp_tcb*, i64) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sctp_stream_queue_pending.2*, i32) #1

declare dso_local i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
