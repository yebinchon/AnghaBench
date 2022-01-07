; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.sctp_inpcb = type { i32, i64, i32 }
%struct.sctp_association = type { i32, i64, i32, i32, %struct.TYPE_4__, %struct.sctp_nets*, %struct.sctp_nets* }
%struct.TYPE_4__ = type { i64 (%struct.sctp_tcb*, %struct.sctp_association.0*)* }
%struct.sctp_tcb = type opaque
%struct.sctp_association.0 = type opaque
%struct.sctp_nets = type { i32 }
%struct.sctp_tcb.1 = type { %struct.sctp_inpcb*, %struct.sctp_association }
%struct.mbuf = type { i32 }

@SCTP_FROM_SCTP_USRREQ = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_TCPTYPE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_IN_TCPPOOL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCTP_STATE_ABOUT_TO_BE_FREED = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_WAIT = common dso_local global i64 0, align 8
@SCTP_CAUSE_USER_INITIATED_ABT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCTP_SO_LOCKED = common dso_local global i32 0, align 4
@sctps_aborted = common dso_local global i32 0, align 4
@SCTP_STATE_OPEN = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i64 0, align 8
@sctps_currestab = common dso_local global i32 0, align 4
@SCTP_NORMAL_PROC = common dso_local global i32 0, align 4
@SCTP_LOC_3 = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_ACK_SENT = common dso_local global i64 0, align 8
@SCTP_TIMER_TYPE_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_SHUTDOWNGUARD = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_T3 = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@SCTP_STATE_PARTIAL_MSG_LEFT = common dso_local global i32 0, align 4
@SCTP_LOC_4 = common dso_local global i64 0, align 8
@SCTP_LOC_5 = common dso_local global i64 0, align 8
@SCTP_OUTPUT_FROM_CLOSING = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_disconnect(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sctp_inpcb*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_tcb.1*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.sctp_nets*, align 8
  %9 = alloca %struct.sctp_nets*, align 8
  %10 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %14, %struct.sctp_inpcb** %4, align 8
  %15 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %16 = icmp eq %struct.sctp_inpcb* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %19 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %20 = load i32, i32* @ENOTCONN, align 4
  %21 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %18, i32* null, i32* null, i64 %19, i32 %20)
  %22 = load i32, i32* @ENOTCONN, align 4
  store i32 %22, i32* %2, align 4
  br label %349

23:                                               ; preds = %1
  %24 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %25 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb* %24)
  %26 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SCTP_PCB_FLAGS_TCPTYPE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %23
  %33 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SCTP_PCB_FLAGS_IN_TCPPOOL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %341

39:                                               ; preds = %32, %23
  %40 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %40, i32 0, i32 2
  %42 = call i64 @LIST_EMPTY(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %46 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %45)
  store i32 0, i32* %2, align 4
  br label %349

47:                                               ; preds = %39
  %48 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %48, i32 0, i32 2
  %50 = call %struct.sctp_tcb.1* @LIST_FIRST(i32* %49)
  store %struct.sctp_tcb.1* %50, %struct.sctp_tcb.1** %6, align 8
  %51 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %52 = icmp eq %struct.sctp_tcb.1* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %55 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %54)
  %56 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %57 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %56, i32* null, i32* null, i64 %57, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %2, align 4
  br label %349

61:                                               ; preds = %47
  %62 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %63 = call i32 @SCTP_TCB_LOCK(%struct.sctp_tcb.1* %62)
  %64 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %65 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %64, i32 0, i32 1
  store %struct.sctp_association* %65, %struct.sctp_association** %5, align 8
  %66 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %67 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SCTP_STATE_ABOUT_TO_BE_FREED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %75 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb.1* %74)
  %76 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %77 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %76)
  store i32 0, i32* %2, align 4
  br label %349

78:                                               ; preds = %61
  %79 = load %struct.socket*, %struct.socket** %3, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SO_LINGER, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.socket*, %struct.socket** %3, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.socket*, %struct.socket** %3, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %133

96:                                               ; preds = %90, %85
  %97 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %98 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %97)
  %99 = load i64, i64* @SCTP_STATE_COOKIE_WAIT, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load i32, i32* @SCTP_CAUSE_USER_INITIATED_ABT, align 4
  %103 = call %struct.mbuf* @sctp_generate_cause(i32 %102, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.mbuf* %103, %struct.mbuf** %7, align 8
  %104 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %106 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %107 = call i32 @sctp_send_abort_tcb(%struct.sctp_tcb.1* %104, %struct.mbuf* %105, i32 %106)
  %108 = load i32, i32* @sctps_aborted, align 4
  %109 = call i32 @SCTP_STAT_INCR_COUNTER32(i32 %108)
  br label %110

110:                                              ; preds = %101, %96
  %111 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %112 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %111)
  %113 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %114 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %113)
  %115 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %122, label %117

117:                                              ; preds = %110
  %118 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %119 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %118)
  %120 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %110
  %123 = load i32, i32* @sctps_currestab, align 4
  %124 = call i32 @SCTP_STAT_DECR_GAUGE32(i32 %123)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %127 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %128 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %129 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %130 = load i64, i64* @SCTP_LOC_3, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %126, %struct.sctp_tcb.1* %127, i32 %128, i64 %131)
  store i32 0, i32* %2, align 4
  br label %349

133:                                              ; preds = %90
  %134 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %135 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %134, i32 0, i32 3
  %136 = call i64 @TAILQ_EMPTY(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %230

138:                                              ; preds = %133
  %139 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %140 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %139, i32 0, i32 2
  %141 = call i64 @TAILQ_EMPTY(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %230

143:                                              ; preds = %138
  %144 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %145 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %230

148:                                              ; preds = %143
  %149 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %150 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64 (%struct.sctp_tcb*, %struct.sctp_association.0*)*, i64 (%struct.sctp_tcb*, %struct.sctp_association.0*)** %151, align 8
  %153 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %154 = bitcast %struct.sctp_tcb.1* %153 to %struct.sctp_tcb*
  %155 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %156 = bitcast %struct.sctp_association* %155 to %struct.sctp_association.0*
  %157 = call i64 %152(%struct.sctp_tcb* %154, %struct.sctp_association.0* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %289

160:                                              ; preds = %148
  %161 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %162 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %161)
  %163 = load i64, i64* @SCTP_STATE_SHUTDOWN_SENT, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %229

165:                                              ; preds = %160
  %166 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %167 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %166)
  %168 = load i64, i64* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %229

170:                                              ; preds = %165
  %171 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %172 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %171)
  %173 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %177 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %176)
  %178 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %175, %170
  %181 = load i32, i32* @sctps_currestab, align 4
  %182 = call i32 @SCTP_STAT_DECR_GAUGE32(i32 %181)
  br label %183

183:                                              ; preds = %180, %175
  %184 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %185 = load i64, i64* @SCTP_STATE_SHUTDOWN_SENT, align 8
  %186 = call i32 @SCTP_SET_STATE(%struct.sctp_tcb.1* %184, i64 %185)
  %187 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %188 = call i32 @sctp_stop_timers_for_shutdown(%struct.sctp_tcb.1* %187)
  %189 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %190 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %190, i32 0, i32 6
  %192 = load %struct.sctp_nets*, %struct.sctp_nets** %191, align 8
  %193 = icmp ne %struct.sctp_nets* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %183
  %195 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %196 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %196, i32 0, i32 6
  %198 = load %struct.sctp_nets*, %struct.sctp_nets** %197, align 8
  store %struct.sctp_nets* %198, %struct.sctp_nets** %8, align 8
  br label %204

199:                                              ; preds = %183
  %200 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %201 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %201, i32 0, i32 5
  %203 = load %struct.sctp_nets*, %struct.sctp_nets** %202, align 8
  store %struct.sctp_nets* %203, %struct.sctp_nets** %8, align 8
  br label %204

204:                                              ; preds = %199, %194
  %205 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %206 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %207 = call i32 @sctp_send_shutdown(%struct.sctp_tcb.1* %205, %struct.sctp_nets* %206)
  %208 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWN, align 4
  %209 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %210 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %209, i32 0, i32 0
  %211 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %210, align 8
  %212 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %213 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %214 = call i32 @sctp_timer_start(i32 %208, %struct.sctp_inpcb* %211, %struct.sctp_tcb.1* %212, %struct.sctp_nets* %213)
  %215 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWNGUARD, align 4
  %216 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %217 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %216, i32 0, i32 0
  %218 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %217, align 8
  %219 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %220 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %221 = call i32 @sctp_timer_start(i32 %215, %struct.sctp_inpcb* %218, %struct.sctp_tcb.1* %219, %struct.sctp_nets* %220)
  %222 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %223 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %222, i32 0, i32 0
  %224 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %223, align 8
  %225 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %226 = load i32, i32* @SCTP_OUTPUT_FROM_T3, align 4
  %227 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %228 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %224, %struct.sctp_tcb.1* %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %204, %165, %160
  br label %334

230:                                              ; preds = %143, %138, %133
  %231 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %232 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %232, i32 0, i32 6
  %234 = load %struct.sctp_nets*, %struct.sctp_nets** %233, align 8
  %235 = icmp ne %struct.sctp_nets* %234, null
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %238 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %238, i32 0, i32 6
  %240 = load %struct.sctp_nets*, %struct.sctp_nets** %239, align 8
  store %struct.sctp_nets* %240, %struct.sctp_nets** %9, align 8
  br label %246

241:                                              ; preds = %230
  %242 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %243 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %243, i32 0, i32 5
  %245 = load %struct.sctp_nets*, %struct.sctp_nets** %244, align 8
  store %struct.sctp_nets* %245, %struct.sctp_nets** %9, align 8
  br label %246

246:                                              ; preds = %241, %236
  %247 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %248 = load i32, i32* @SCTP_STATE_SHUTDOWN_PENDING, align 4
  %249 = call i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb.1* %247, i32 %248)
  %250 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWNGUARD, align 4
  %251 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %252 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %251, i32 0, i32 0
  %253 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %252, align 8
  %254 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %255 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %256 = call i32 @sctp_timer_start(i32 %250, %struct.sctp_inpcb* %253, %struct.sctp_tcb.1* %254, %struct.sctp_nets* %255)
  %257 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %258 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i64 (%struct.sctp_tcb*, %struct.sctp_association.0*)*, i64 (%struct.sctp_tcb*, %struct.sctp_association.0*)** %259, align 8
  %261 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %262 = bitcast %struct.sctp_tcb.1* %261 to %struct.sctp_tcb*
  %263 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %264 = bitcast %struct.sctp_association* %263 to %struct.sctp_association.0*
  %265 = call i64 %260(%struct.sctp_tcb* %262, %struct.sctp_association.0* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %246
  %268 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %269 = load i32, i32* @SCTP_STATE_PARTIAL_MSG_LEFT, align 4
  %270 = call i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb.1* %268, i32 %269)
  br label %271

271:                                              ; preds = %267, %246
  %272 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %273 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %272, i32 0, i32 3
  %274 = call i64 @TAILQ_EMPTY(i32* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %327

276:                                              ; preds = %271
  %277 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %278 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %277, i32 0, i32 2
  %279 = call i64 @TAILQ_EMPTY(i32* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %327

281:                                              ; preds = %276
  %282 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %283 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @SCTP_STATE_PARTIAL_MSG_LEFT, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %327

288:                                              ; preds = %281
  br label %289

289:                                              ; preds = %288, %159
  %290 = load i32, i32* @SCTP_CAUSE_USER_INITIATED_ABT, align 4
  %291 = call %struct.mbuf* @sctp_generate_cause(i32 %290, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.mbuf* %291, %struct.mbuf** %10, align 8
  %292 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %293 = load i64, i64* @SCTP_LOC_4, align 8
  %294 = add nsw i64 %292, %293
  %295 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %296 = getelementptr inbounds %struct.sctp_tcb.1, %struct.sctp_tcb.1* %295, i32 0, i32 0
  %297 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %296, align 8
  %298 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %297, i32 0, i32 1
  store i64 %294, i64* %298, align 8
  %299 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %300 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %301 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %302 = call i32 @sctp_send_abort_tcb(%struct.sctp_tcb.1* %299, %struct.mbuf* %300, i32 %301)
  %303 = load i32, i32* @sctps_aborted, align 4
  %304 = call i32 @SCTP_STAT_INCR_COUNTER32(i32 %303)
  %305 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %306 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %305)
  %307 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %314, label %309

309:                                              ; preds = %289
  %310 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %311 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb.1* %310)
  %312 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %309, %289
  %315 = load i32, i32* @sctps_currestab, align 4
  %316 = call i32 @SCTP_STAT_DECR_GAUGE32(i32 %315)
  br label %317

317:                                              ; preds = %314, %309
  %318 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %319 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %318)
  %320 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %321 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %322 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %323 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %324 = load i64, i64* @SCTP_LOC_5, align 8
  %325 = add nsw i64 %323, %324
  %326 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %320, %struct.sctp_tcb.1* %321, i32 %322, i64 %325)
  store i32 0, i32* %2, align 4
  br label %349

327:                                              ; preds = %281, %276, %271
  %328 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %329 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %330 = load i32, i32* @SCTP_OUTPUT_FROM_CLOSING, align 4
  %331 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %332 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %328, %struct.sctp_tcb.1* %329, i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %327
  br label %334

334:                                              ; preds = %333, %229
  %335 = load %struct.socket*, %struct.socket** %3, align 8
  %336 = call i32 @soisdisconnecting(%struct.socket* %335)
  %337 = load %struct.sctp_tcb.1*, %struct.sctp_tcb.1** %6, align 8
  %338 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb.1* %337)
  %339 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %340 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %339)
  store i32 0, i32* %2, align 4
  br label %349

341:                                              ; preds = %32
  %342 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %343 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %342)
  %344 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %345 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %346 = load i32, i32* @EOPNOTSUPP, align 4
  %347 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %344, i32* null, i32* null, i64 %345, i32 %346)
  %348 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %341, %334, %317, %125, %73, %53, %44, %17
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, i32*, i32*, i64, i32) #1

declare dso_local i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb*) #1

declare dso_local %struct.sctp_tcb.1* @LIST_FIRST(i32*) #1

declare dso_local i32 @SCTP_TCB_LOCK(%struct.sctp_tcb.1*) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb.1*) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb.1*) #1

declare dso_local %struct.mbuf* @sctp_generate_cause(i32, i8*) #1

declare dso_local i32 @sctp_send_abort_tcb(%struct.sctp_tcb.1*, %struct.mbuf*, i32) #1

declare dso_local i32 @SCTP_STAT_INCR_COUNTER32(i32) #1

declare dso_local i32 @SCTP_STAT_DECR_GAUGE32(i32) #1

declare dso_local i32 @sctp_free_assoc(%struct.sctp_inpcb*, %struct.sctp_tcb.1*, i32, i64) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @SCTP_SET_STATE(%struct.sctp_tcb.1*, i64) #1

declare dso_local i32 @sctp_stop_timers_for_shutdown(%struct.sctp_tcb.1*) #1

declare dso_local i32 @sctp_send_shutdown(%struct.sctp_tcb.1*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_timer_start(i32, %struct.sctp_inpcb*, %struct.sctp_tcb.1*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_chunk_output(%struct.sctp_inpcb*, %struct.sctp_tcb.1*, i32, i32) #1

declare dso_local i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb.1*, i32) #1

declare dso_local i32 @soisdisconnecting(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
