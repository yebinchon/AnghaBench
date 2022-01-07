; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_inpcb = type { i32, i32 }
%struct.sctp_tcb = type { %struct.TYPE_7__*, %struct.sctp_association }
%struct.TYPE_7__ = type { i64 }
%struct.sctp_association = type { i32, i64, i32, i32, %struct.TYPE_6__, %struct.sctp_nets*, %struct.sctp_nets* }
%struct.TYPE_6__ = type { i64 (%struct.sctp_tcb.0*, %struct.sctp_association.1*)* }
%struct.sctp_tcb.0 = type opaque
%struct.sctp_association.1 = type opaque
%struct.sctp_nets = type { i32 }
%struct.mbuf = type { i32 }

@SCTP_FROM_SCTP_USRREQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_TCPTYPE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_IN_TCPPOOL = common dso_local global i32 0, align 4
@SBS_CANTRCVMORE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SCTP_STATE_ABOUT_TO_BE_FREED = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_WAIT = common dso_local global i64 0, align 8
@SCTP_STATE_COOKIE_ECHOED = common dso_local global i64 0, align 8
@SCTP_STATE_OPEN = common dso_local global i64 0, align 8
@sctps_currestab = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@SCTP_STATE_PARTIAL_MSG_LEFT = common dso_local global i32 0, align 4
@SCTP_CAUSE_USER_INITIATED_ABT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCTP_LOC_6 = common dso_local global i64 0, align 8
@SCTP_SO_LOCKED = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_SHUTDOWNGUARD = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_CLOSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_shutdown(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sctp_inpcb*, align 8
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %12, %struct.sctp_inpcb** %4, align 8
  %13 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %14 = icmp eq %struct.sctp_inpcb* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %17 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %16, i32* null, i32* null, i64 %17, i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %259

21:                                               ; preds = %1
  %22 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %23 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb* %22)
  %24 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SCTP_PCB_FLAGS_TCPTYPE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %21
  %31 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SCTP_PCB_FLAGS_IN_TCPPOOL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %30
  %38 = load %struct.socket*, %struct.socket** %3, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 1
  %40 = call i32 @SOCKBUF_LOCK(%struct.TYPE_8__* %39)
  %41 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.socket*, %struct.socket** %3, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.socket*, %struct.socket** %3, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 1
  %50 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_8__* %49)
  %51 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %52 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %51)
  %53 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %54 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %53, i32* null, i32* null, i64 %54, i32 %55)
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %57, i32* %2, align 4
  br label %259

58:                                               ; preds = %30, %21
  %59 = load %struct.socket*, %struct.socket** %3, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SS_ISCONNECTED, align 4
  %63 = load i32, i32* @SS_ISCONNECTING, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %61, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %71 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %70)
  %72 = load i32, i32* @ENOTCONN, align 4
  store i32 %72, i32* %2, align 4
  br label %259

73:                                               ; preds = %58
  %74 = load %struct.socket*, %struct.socket** %3, align 8
  %75 = call i32 @socantsendmore(%struct.socket* %74)
  %76 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %77 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %76, i32 0, i32 1
  %78 = call %struct.sctp_tcb* @LIST_FIRST(i32* %77)
  store %struct.sctp_tcb* %78, %struct.sctp_tcb** %5, align 8
  %79 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %80 = icmp eq %struct.sctp_tcb* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %83 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %82)
  store i32 0, i32* %2, align 4
  br label %259

84:                                               ; preds = %73
  %85 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %86 = call i32 @SCTP_TCB_LOCK(%struct.sctp_tcb* %85)
  %87 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %88 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %87, i32 0, i32 1
  store %struct.sctp_association* %88, %struct.sctp_association** %6, align 8
  %89 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %90 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SCTP_STATE_ABOUT_TO_BE_FREED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %97 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %96)
  %98 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %99 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %98)
  store i32 0, i32* %2, align 4
  br label %259

100:                                              ; preds = %84
  %101 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %102 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %101)
  %103 = load i64, i64* @SCTP_STATE_COOKIE_WAIT, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %107 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %106)
  %108 = load i64, i64* @SCTP_STATE_COOKIE_ECHOED, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %112 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %111)
  %113 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %117 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %116)
  %118 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %119 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %118)
  store i32 0, i32* %2, align 4
  br label %259

120:                                              ; preds = %110, %105, %100
  %121 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %122 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %122, i32 0, i32 6
  %124 = load %struct.sctp_nets*, %struct.sctp_nets** %123, align 8
  %125 = icmp ne %struct.sctp_nets* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %128 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %128, i32 0, i32 6
  %130 = load %struct.sctp_nets*, %struct.sctp_nets** %129, align 8
  store %struct.sctp_nets* %130, %struct.sctp_nets** %7, align 8
  br label %136

131:                                              ; preds = %120
  %132 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %133 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %133, i32 0, i32 5
  %135 = load %struct.sctp_nets*, %struct.sctp_nets** %134, align 8
  store %struct.sctp_nets* %135, %struct.sctp_nets** %7, align 8
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %138 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %137)
  %139 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %186

141:                                              ; preds = %136
  %142 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %143 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %142, i32 0, i32 3
  %144 = call i64 @TAILQ_EMPTY(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %186

146:                                              ; preds = %141
  %147 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %148 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %147, i32 0, i32 2
  %149 = call i64 @TAILQ_EMPTY(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %146
  %152 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %153 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %151
  %157 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %158 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64 (%struct.sctp_tcb.0*, %struct.sctp_association.1*)*, i64 (%struct.sctp_tcb.0*, %struct.sctp_association.1*)** %159, align 8
  %161 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %162 = bitcast %struct.sctp_tcb* %161 to %struct.sctp_tcb.0*
  %163 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %164 = bitcast %struct.sctp_association* %163 to %struct.sctp_association.1*
  %165 = call i64 %160(%struct.sctp_tcb.0* %162, %struct.sctp_association.1* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %222

168:                                              ; preds = %156
  %169 = load i32, i32* @sctps_currestab, align 4
  %170 = call i32 @SCTP_STAT_DECR_GAUGE32(i32 %169)
  %171 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %172 = load i32, i32* @SCTP_STATE_SHUTDOWN_SENT, align 4
  %173 = call i32 @SCTP_SET_STATE(%struct.sctp_tcb* %171, i32 %172)
  %174 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %175 = call i32 @sctp_stop_timers_for_shutdown(%struct.sctp_tcb* %174)
  %176 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %177 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %178 = call i32 @sctp_send_shutdown(%struct.sctp_tcb* %176, %struct.sctp_nets* %177)
  %179 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWN, align 4
  %180 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %181 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %180, i32 0, i32 0
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %184 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %185 = call i32 @sctp_timer_start(i32 %179, %struct.TYPE_7__* %182, %struct.sctp_tcb* %183, %struct.sctp_nets* %184)
  br label %242

186:                                              ; preds = %151, %146, %141, %136
  %187 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %188 = load i32, i32* @SCTP_STATE_SHUTDOWN_PENDING, align 4
  %189 = call i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb* %187, i32 %188)
  %190 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %191 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64 (%struct.sctp_tcb.0*, %struct.sctp_association.1*)*, i64 (%struct.sctp_tcb.0*, %struct.sctp_association.1*)** %192, align 8
  %194 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %195 = bitcast %struct.sctp_tcb* %194 to %struct.sctp_tcb.0*
  %196 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %197 = bitcast %struct.sctp_association* %196 to %struct.sctp_association.1*
  %198 = call i64 %193(%struct.sctp_tcb.0* %195, %struct.sctp_association.1* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %186
  %201 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %202 = load i32, i32* @SCTP_STATE_PARTIAL_MSG_LEFT, align 4
  %203 = call i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %186
  %205 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %206 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %205, i32 0, i32 3
  %207 = call i64 @TAILQ_EMPTY(i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %241

209:                                              ; preds = %204
  %210 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %211 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %210, i32 0, i32 2
  %212 = call i64 @TAILQ_EMPTY(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %241

214:                                              ; preds = %209
  %215 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %216 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @SCTP_STATE_PARTIAL_MSG_LEFT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %241

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %167
  %223 = load i32, i32* @SCTP_CAUSE_USER_INITIATED_ABT, align 4
  %224 = call %struct.mbuf* @sctp_generate_cause(i32 %223, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.mbuf* %224, %struct.mbuf** %8, align 8
  %225 = load i64, i64* @SCTP_FROM_SCTP_USRREQ, align 8
  %226 = load i64, i64* @SCTP_LOC_6, align 8
  %227 = add nsw i64 %225, %226
  %228 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %229 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %228, i32 0, i32 0
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  store i64 %227, i64* %231, align 8
  %232 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %233 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %232)
  %234 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %235 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %234, i32 0, i32 0
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %238 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %239 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %240 = call i32 @sctp_abort_an_association(%struct.TYPE_7__* %236, %struct.sctp_tcb* %237, %struct.mbuf* %238, i32 %239)
  store i32 0, i32* %2, align 4
  br label %259

241:                                              ; preds = %214, %209, %204
  br label %242

242:                                              ; preds = %241, %168
  %243 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWNGUARD, align 4
  %244 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %245 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %244, i32 0, i32 0
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %248 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %249 = call i32 @sctp_timer_start(i32 %243, %struct.TYPE_7__* %246, %struct.sctp_tcb* %247, %struct.sctp_nets* %248)
  %250 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %251 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %252 = load i32, i32* @SCTP_OUTPUT_FROM_CLOSING, align 4
  %253 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %254 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %250, %struct.sctp_tcb* %251, i32 %252, i32 %253)
  %255 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %256 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %255)
  %257 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %258 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %257)
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %242, %222, %115, %95, %81, %69, %37, %15
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, i32*, i32*, i64, i32) #1

declare dso_local i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @socantsendmore(%struct.socket*) #1

declare dso_local %struct.sctp_tcb* @LIST_FIRST(i32*) #1

declare dso_local i32 @SCTP_TCB_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb*) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @SCTP_STAT_DECR_GAUGE32(i32) #1

declare dso_local i32 @SCTP_SET_STATE(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_stop_timers_for_shutdown(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_send_shutdown(%struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_timer_start(i32, %struct.TYPE_7__*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb*, i32) #1

declare dso_local %struct.mbuf* @sctp_generate_cause(i32, i8*) #1

declare dso_local i32 @sctp_abort_an_association(%struct.TYPE_7__*, %struct.sctp_tcb*, %struct.mbuf*, i32) #1

declare dso_local i32 @sctp_chunk_output(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
