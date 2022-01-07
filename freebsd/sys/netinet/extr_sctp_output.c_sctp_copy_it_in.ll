; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_copy_it_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_copy_it_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream_queue_pending = type { i32, i64, i32, i32, %struct.sctp_nets*, i32, i32*, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32, i64 }
%struct.sctp_tcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_sndrcvinfo = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.uio = type { i64 }
%struct.sctp_nets = type { i32 }

@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_ACK_SENT = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_OUTPUT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCTP_EOF = common dso_local global i32 0, align 4
@SCTP_EOR = common dso_local global i32 0, align 4
@SCTP_DATA = common dso_local global i32 0, align 4
@SCTP_SO_LOCKED = common dso_local global i32 0, align 4
@SCTP_ADDR_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_stream_queue_pending* (%struct.sctp_tcb*, %struct.sctp_association*, %struct.sctp_sndrcvinfo*, %struct.uio*, %struct.sctp_nets*, i32, i32, i32*)* @sctp_copy_it_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_stream_queue_pending* @sctp_copy_it_in(%struct.sctp_tcb* %0, %struct.sctp_association* %1, %struct.sctp_sndrcvinfo* %2, %struct.uio* %3, %struct.sctp_nets* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.sctp_tcb*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca %struct.sctp_sndrcvinfo*, align 8
  %12 = alloca %struct.uio*, align 8
  %13 = alloca %struct.sctp_nets*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.sctp_stream_queue_pending*, align 8
  %18 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %9, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %10, align 8
  store %struct.sctp_sndrcvinfo* %2, %struct.sctp_sndrcvinfo** %11, align 8
  store %struct.uio* %3, %struct.uio** %12, align 8
  store %struct.sctp_nets* %4, %struct.sctp_nets** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store %struct.sctp_stream_queue_pending* null, %struct.sctp_stream_queue_pending** %17, align 8
  %19 = load i32*, i32** %16, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %21 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %20)
  %22 = load i64, i64* @SCTP_STATE_SHUTDOWN_SENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %41, label %24

24:                                               ; preds = %8
  %25 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %26 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %25)
  %27 = load i64, i64* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %31 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %30)
  %32 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SCTP_STATE_SHUTDOWN_PENDING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34, %29, %24, %8
  %42 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %43 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %44 = load i32, i32* @ECONNRESET, align 4
  %45 = call i32 @SCTP_LTRACE_ERR_RET(i32* null, %struct.sctp_tcb* %42, %struct.sctp_nets* null, i32 %43, i32 %44)
  %46 = load i32, i32* @ECONNRESET, align 4
  %47 = load i32*, i32** %16, align 8
  store i32 %46, i32* %47, align 4
  br label %228

48:                                               ; preds = %34
  %49 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %50 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %51 = call i32 @sctp_alloc_a_strmoq(%struct.sctp_tcb* %49, %struct.sctp_stream_queue_pending* %50)
  %52 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %53 = icmp eq %struct.sctp_stream_queue_pending* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %56 = load %struct.sctp_nets*, %struct.sctp_nets** %13, align 8
  %57 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @SCTP_LTRACE_ERR_RET(i32* null, %struct.sctp_tcb* %55, %struct.sctp_nets* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = load i32*, i32** %16, align 8
  store i32 %60, i32* %61, align 4
  br label %228

62:                                               ; preds = %48
  %63 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %64 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %63, i32 0, i32 17
  store i64 0, i64* %64, align 8
  %65 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %66 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  %67 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %68 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %71 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %73 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %76 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %75, i32 0, i32 16
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %78 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %81 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %80, i32 0, i32 15
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %83 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %86 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %85, i32 0, i32 14
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %88 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %87, i32 0, i32 13
  store i64 0, i64* %88, align 8
  %89 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %90 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %89, i32 0, i32 12
  %91 = call i32 @SCTP_GETTIME_TIMEVAL(i32* %90)
  %92 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %93 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %96 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 8
  %97 = load %struct.uio*, %struct.uio** %12, align 8
  %98 = getelementptr inbounds %struct.uio, %struct.uio* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @min(i64 %99, i32 %100)
  %102 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %103 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %105 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.uio*, %struct.uio** %12, align 8
  %108 = getelementptr inbounds %struct.uio, %struct.uio* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %62
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %111
  %115 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %116 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SCTP_EOF, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %126 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SCTP_EOR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124, %114, %111
  %132 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %133 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  br label %137

134:                                              ; preds = %124, %121, %62
  %135 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %136 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %135, i32 0, i32 2
  store i32 0, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %131
  %138 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %139 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %138, i32 0, i32 10
  store i64 0, i64* %139, align 8
  %140 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %141 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %140, i32 0, i32 9
  store i64 0, i64* %141, align 8
  %142 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %143 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %142, i32 0, i32 8
  store i64 0, i64* %143, align 8
  %144 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %145 = call i32 @SCTP_DATA_CHUNK_OVERHEAD(%struct.sctp_tcb* %144)
  store i32 %145, i32* %18, align 4
  %146 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %147 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %146, i32 0, i32 6
  store i32* null, i32** %147, align 8
  %148 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %149 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %148, i32 0, i32 7
  store i32 0, i32* %149, align 8
  %150 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %151 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %137
  br label %196

155:                                              ; preds = %137
  %156 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %157 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %11, align 8
  %162 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %165 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  br label %174

166:                                              ; preds = %155
  %167 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %168 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %173 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %166, %160
  %175 = load i32, i32* @SCTP_DATA, align 4
  %176 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %177 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @sctp_auth_is_required_chunk(i32 %175, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %174
  %183 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %184 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %185 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @sctp_auth_key_acquire(%struct.sctp_tcb* %183, i32 %186)
  %188 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %189 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %188, i32 0, i32 3
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %182, %174
  %191 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %192 = load %struct.uio*, %struct.uio** %12, align 8
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @sctp_copy_one(%struct.sctp_stream_queue_pending* %191, %struct.uio* %192, i32 %193)
  %195 = load i32*, i32** %16, align 8
  store i32 %194, i32* %195, align 4
  br label %196

196:                                              ; preds = %190, %154
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %202 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %203 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %204 = call i32 @sctp_free_a_strmoq(%struct.sctp_tcb* %201, %struct.sctp_stream_queue_pending* %202, i32 %203)
  store %struct.sctp_stream_queue_pending* null, %struct.sctp_stream_queue_pending** %17, align 8
  br label %227

205:                                              ; preds = %196
  %206 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %207 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @SCTP_ADDR_OVER, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %205
  %213 = load %struct.sctp_nets*, %struct.sctp_nets** %13, align 8
  %214 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %215 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %214, i32 0, i32 4
  store %struct.sctp_nets* %213, %struct.sctp_nets** %215, align 8
  %216 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %217 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %216, i32 0, i32 4
  %218 = load %struct.sctp_nets*, %struct.sctp_nets** %217, align 8
  %219 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %218, i32 0, i32 0
  %220 = call i32 @atomic_add_int(i32* %219, i32 1)
  br label %224

221:                                              ; preds = %205
  %222 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %223 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %222, i32 0, i32 4
  store %struct.sctp_nets* null, %struct.sctp_nets** %223, align 8
  br label %224

224:                                              ; preds = %221, %212
  %225 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  %226 = call i32 @sctp_set_prsctp_policy(%struct.sctp_stream_queue_pending* %225)
  br label %227

227:                                              ; preds = %224, %200
  br label %228

228:                                              ; preds = %227, %54, %41
  %229 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %17, align 8
  ret %struct.sctp_stream_queue_pending* %229
}

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_LTRACE_ERR_RET(i32*, %struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

declare dso_local i32 @sctp_alloc_a_strmoq(%struct.sctp_tcb*, %struct.sctp_stream_queue_pending*) #1

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(i32*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @SCTP_DATA_CHUNK_OVERHEAD(%struct.sctp_tcb*) #1

declare dso_local i64 @sctp_auth_is_required_chunk(i32, i32) #1

declare dso_local i32 @sctp_auth_key_acquire(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_copy_one(%struct.sctp_stream_queue_pending*, %struct.uio*, i32) #1

declare dso_local i32 @sctp_free_a_strmoq(%struct.sctp_tcb*, %struct.sctp_stream_queue_pending*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @sctp_set_prsctp_policy(%struct.sctp_stream_queue_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
