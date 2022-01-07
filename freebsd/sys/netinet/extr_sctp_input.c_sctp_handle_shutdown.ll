; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_shutdown_chunk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_tcb = type { i32, i64, %struct.sctp_association }
%struct.sctp_association = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.sctp_stream_in* }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.sctp_stream_in = type { i32, i32 }
%struct.sctp_nets = type { i32 }

@SCTP_DEBUG_INPUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"sctp_handle_shutdown: handling SHUTDOWN\0A\00", align 1
@SCTP_STATE_COOKIE_WAIT = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_ECHOED = common dso_local global i32 0, align 4
@SCTP_ON_UNORDERED = common dso_local global i64 0, align 8
@next_instrm = common dso_local global i32 0, align 4
@SCTP_ON_ORDERED = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_ACK_SENT = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i32 0, align 4
@SCTP_NOTIFY_PEER_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_INPUT = common dso_local global i64 0, align 8
@SCTP_LOC_9 = common dso_local global i64 0, align 8
@SCTP_STATE_OPEN = common dso_local global i32 0, align 4
@sctps_currestab = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_SHUTDOWNACK = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_shutdown_chunk*, %struct.sctp_tcb*, %struct.sctp_nets*, i32*)* @sctp_handle_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_handle_shutdown(%struct.sctp_shutdown_chunk* %0, %struct.sctp_tcb* %1, %struct.sctp_nets* %2, i32* %3) #0 {
  %5 = alloca %struct.sctp_shutdown_chunk*, align 8
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_stream_in*, align 8
  store %struct.sctp_shutdown_chunk* %0, %struct.sctp_shutdown_chunk** %5, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %14 = call i32 @SCTPDBG(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %16 = icmp eq %struct.sctp_tcb* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %255

18:                                               ; preds = %4
  %19 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %20 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %19, i32 0, i32 2
  store %struct.sctp_association* %20, %struct.sctp_association** %9, align 8
  %21 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %22 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %21)
  %23 = load i32, i32* @SCTP_STATE_COOKIE_WAIT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %27 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %26)
  %28 = load i32, i32* @SCTP_STATE_COOKIE_ECHOED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %18
  br label %255

31:                                               ; preds = %25
  %32 = load %struct.sctp_shutdown_chunk*, %struct.sctp_shutdown_chunk** %5, align 8
  %33 = getelementptr inbounds %struct.sctp_shutdown_chunk, %struct.sctp_shutdown_chunk* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %255

40:                                               ; preds = %31
  %41 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %42 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %44 = load %struct.sctp_shutdown_chunk*, %struct.sctp_shutdown_chunk** %5, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @sctp_update_acked(%struct.sctp_tcb* %43, %struct.sctp_shutdown_chunk* %44, i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %255

51:                                               ; preds = %40
  %52 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %53 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %52, i32 0, i32 5
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %146

56:                                               ; preds = %51
  %57 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %58 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SCTP_INP_READ_LOCK(i32 %59)
  %61 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 5
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %118

67:                                               ; preds = %56
  %68 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %69 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %68, i32 0, i32 6
  %70 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %69, align 8
  %71 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %72 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %71, i32 0, i32 5
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %70, i64 %75
  store %struct.sctp_stream_in* %76, %struct.sctp_stream_in** %12, align 8
  %77 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %78 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %77, i32 0, i32 5
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SCTP_ON_UNORDERED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %67
  %85 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %12, align 8
  %86 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %85, i32 0, i32 1
  %87 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %88 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %87, i32 0, i32 5
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* @next_instrm, align 4
  %91 = call i32 @TAILQ_REMOVE(i32* %86, %struct.TYPE_5__* %89, i32 %90)
  %92 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %93 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %92, i32 0, i32 5
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  br label %117

96:                                               ; preds = %67
  %97 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %98 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %97, i32 0, i32 5
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SCTP_ON_ORDERED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %96
  %105 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %12, align 8
  %106 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %105, i32 0, i32 0
  %107 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %108 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %107, i32 0, i32 5
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i32, i32* @next_instrm, align 4
  %111 = call i32 @TAILQ_REMOVE(i32* %106, %struct.TYPE_5__* %109, i32 %110)
  %112 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %113 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %112, i32 0, i32 5
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %104, %96
  br label %117

117:                                              ; preds = %116, %84
  br label %118

118:                                              ; preds = %117, %56
  %119 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %120 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %119, i32 0, i32 5
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  %123 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %124 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %123, i32 0, i32 5
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  store i32 1, i32* %126, align 4
  %127 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %128 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %127, i32 0, i32 5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %128, align 8
  %129 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %130 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @SCTP_INP_READ_UNLOCK(i32 %131)
  %133 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %134 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %118
  %138 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %139 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %142 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @sctp_sorwakeup(i32 %140, i64 %143)
  br label %145

145:                                              ; preds = %137, %118
  br label %146

146:                                              ; preds = %145, %51
  %147 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %148 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %178

151:                                              ; preds = %146
  %152 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %153 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %152)
  %154 = load i32, i32* @SCTP_STATE_SHUTDOWN_RECEIVED, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %151
  %157 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %158 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %157)
  %159 = load i32, i32* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %163 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %162)
  %164 = load i32, i32* @SCTP_STATE_SHUTDOWN_SENT, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %168 = load i32, i32* @SCTP_STATE_SHUTDOWN_RECEIVED, align 4
  %169 = call i32 @SCTP_SET_STATE(%struct.sctp_tcb* %167, i32 %168)
  %170 = load i32, i32* @SCTP_NOTIFY_PEER_SHUTDOWN, align 4
  %171 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %172 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %173 = call i32 @sctp_ulp_notify(i32 %170, %struct.sctp_tcb* %171, i32 0, i32* null, i32 %172)
  %174 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %175 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %174, i32 0, i32 3
  %176 = call i32 @SCTP_GETTIME_TIMEVAL(i32* %175)
  br label %177

177:                                              ; preds = %166, %161, %156, %151
  br label %178

178:                                              ; preds = %177, %146
  %179 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %180 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %179)
  %181 = load i32, i32* @SCTP_STATE_SHUTDOWN_SENT, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWN, align 4
  %185 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %186 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %189 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %190 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %191 = load i64, i64* @SCTP_LOC_9, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @sctp_timer_stop(i32 %184, i32 %187, %struct.sctp_tcb* %188, %struct.sctp_nets* %189, i64 %192)
  br label %194

194:                                              ; preds = %183, %178
  %195 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %196 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %197 = call i32 @sctp_is_there_unsent_data(%struct.sctp_tcb* %195, i32 %196)
  store i32 %197, i32* %10, align 4
  %198 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %199 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %198, i32 0, i32 2
  %200 = call i32 @TAILQ_EMPTY(i32* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %194
  %203 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %204 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %203, i32 0, i32 1
  %205 = call i32 @TAILQ_EMPTY(i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %202, %194
  br label %255

211:                                              ; preds = %207
  %212 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %213 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %212)
  %214 = load i32, i32* @SCTP_STATE_OPEN, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %218 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %217)
  %219 = load i32, i32* @SCTP_STATE_SHUTDOWN_RECEIVED, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %216, %211
  %222 = load i32, i32* @sctps_currestab, align 4
  %223 = call i32 @SCTP_STAT_DECR_GAUGE32(i32 %222)
  br label %224

224:                                              ; preds = %221, %216
  %225 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %226 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %225)
  %227 = load i32, i32* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %224
  %230 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %231 = load i32, i32* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 4
  %232 = call i32 @SCTP_SET_STATE(%struct.sctp_tcb* %230, i32 %231)
  %233 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %234 = call i32 @sctp_stop_timers_for_shutdown(%struct.sctp_tcb* %233)
  %235 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %236 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %237 = call i32 @sctp_send_shutdown_ack(%struct.sctp_tcb* %235, %struct.sctp_nets* %236)
  %238 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWNACK, align 4
  %239 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %240 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %243 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %244 = call i32 @sctp_timer_start(i32 %238, i32 %241, %struct.sctp_tcb* %242, %struct.sctp_nets* %243)
  br label %254

245:                                              ; preds = %224
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %251 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %252 = call i32 @sctp_send_shutdown_ack(%struct.sctp_tcb* %250, %struct.sctp_nets* %251)
  br label %253

253:                                              ; preds = %249, %245
  br label %254

254:                                              ; preds = %253, %229
  br label %255

255:                                              ; preds = %17, %30, %39, %50, %210, %254
  ret void
}

declare dso_local i32 @SCTPDBG(i32, i8*) #1

declare dso_local i32 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_update_acked(%struct.sctp_tcb*, %struct.sctp_shutdown_chunk*, i32*) #1

declare dso_local i32 @SCTP_INP_READ_LOCK(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @SCTP_INP_READ_UNLOCK(i32) #1

declare dso_local i32 @sctp_sorwakeup(i32, i64) #1

declare dso_local i32 @SCTP_SET_STATE(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_ulp_notify(i32, %struct.sctp_tcb*, i32, i32*, i32) #1

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(i32*) #1

declare dso_local i32 @sctp_timer_stop(i32, i32, %struct.sctp_tcb*, %struct.sctp_nets*, i64) #1

declare dso_local i32 @sctp_is_there_unsent_data(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @SCTP_STAT_DECR_GAUGE32(i32) #1

declare dso_local i32 @sctp_stop_timers_for_shutdown(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_send_shutdown_ack(%struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_timer_start(i32, i32, %struct.sctp_tcb*, %struct.sctp_nets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
