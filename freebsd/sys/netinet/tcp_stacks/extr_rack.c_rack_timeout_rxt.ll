; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timeout_rxt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timeout_rxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i32, i32, i32, i64, i64, i32, i32, i64, i64, i32, i64, i32, %struct.inpcb*, i32, i64, i32, i32, i64, %struct.TYPE_4__* }
%struct.inpcb = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tcp_rack = type { %struct.TYPE_6__, %struct.inpcb* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@TT_STOPPED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PACE_TMR_RXT = common dso_local global i32 0, align 4
@RACK_RWND_COLLAPSED = common dso_local global i32 0, align 4
@TCP_MAXRXTSHIFT = common dso_local global i32 0, align 4
@tcps_timeoutdrop = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@TF_WASFRECOVERY = common dso_local global i32 0, align 4
@TF_WASCRECOVERY = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TF_PREVVALID = common dso_local global i32 0, align 4
@tcps_rexmttimeo = common dso_local global i32 0, align 4
@TCPS_SYN_RECEIVED = common dso_local global i64 0, align 8
@RACK_INITIAL_RTO = common dso_local global i32 0, align 4
@tcp_backoff = common dso_local global i32* null, align 8
@rack_rto_min = common dso_local global i32 0, align 4
@rack_rto_max = common dso_local global i32 0, align 4
@V_tcp_pmtud_blackhole_detect = common dso_local global i64 0, align 8
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@TCPS_FIN_WAIT_1 = common dso_local global i64 0, align 8
@TF2_PLPMTU_PMTUD = common dso_local global i32 0, align 4
@TF2_PLPMTU_MAXSEGSNT = common dso_local global i32 0, align 4
@TF2_PLPMTU_BLACKHOLE = common dso_local global i32 0, align 4
@tcps_pmtud_blackhole_failed = common dso_local global i32 0, align 4
@rack_use_sack_filter = common dso_local global i64 0, align 8
@TF_ACKNOW = common dso_local global i32 0, align 4
@CC_RTO = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@V_tcp_mssdflt = common dso_local global i64 0, align 8
@V_tcp_pmtud_blackhole_mss = common dso_local global i64 0, align 8
@V_tcp_v6mssdflt = common dso_local global i64 0, align 8
@V_tcp_v6pmtud_blackhole_mss = common dso_local global i64 0, align 8
@tcps_pmtud_blackhole_activated = common dso_local global i32 0, align 4
@tcps_pmtud_blackhole_activated_min_mss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_rack*, i32)* @rack_timeout_rxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_timeout_rxt(%struct.tcpcb* %0, %struct.tcp_rack* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 15
  %13 = load %struct.inpcb*, %struct.inpcb** %12, align 8
  store %struct.inpcb* %13, %struct.inpcb** %9, align 8
  %14 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 21
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TT_STOPPED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %391

23:                                               ; preds = %3
  %24 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %25 = call i64 @rack_progress_timeout_check(%struct.tcpcb* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = call i32 @tcp_set_inp_to_drop(%struct.inpcb* %28, i32 %29)
  store i32 1, i32* %4, align 4
  br label %391

31:                                               ; preds = %23
  %32 = load i32, i32* @PACE_TMR_RXT, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %35 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @TCPS_HAVEESTABLISHED(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %391

53:                                               ; preds = %44, %31
  %54 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %55 = call i32 @rack_remxt_tmr(%struct.tcpcb* %54)
  %56 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %57 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp eq %struct.TYPE_5__* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  %62 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %63 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RACK_RWND_COLLAPSED, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61, %53
  %72 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %73 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %61
  %77 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %78 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TCP_MAXRXTSHIFT, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load i32, i32* @TCP_MAXRXTSHIFT, align 4
  %84 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @tcps_timeoutdrop, align 4
  %87 = call i32 @TCPSTAT_INC(i32 %86)
  store i32 1, i32* %10, align 4
  %88 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %89 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %88, i32 0, i32 1
  %90 = load %struct.inpcb*, %struct.inpcb** %89, align 8
  %91 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %92 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %91, i32 0, i32 20
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %82
  %96 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 20
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  br label %102

100:                                              ; preds = %82
  %101 = load i32, i32* @ETIMEDOUT, align 4
  br label %102

102:                                              ; preds = %100, %95
  %103 = phi i32 [ %99, %95 ], [ %101, %100 ]
  %104 = call i32 @tcp_set_inp_to_drop(%struct.inpcb* %90, i32 %103)
  br label %389

105:                                              ; preds = %76
  %106 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TCPS_SYN_SENT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %113 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %112, i32 0, i32 4
  store i32 1, i32* %113, align 4
  br label %197

114:                                              ; preds = %105
  %115 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %189

119:                                              ; preds = %114
  %120 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %121 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %124 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %126 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %125, i32 0, i32 18
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %129 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %128, i32 0, i32 19
  store i32 %127, i32* %129, align 4
  %130 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %131 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %134 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %133, i32 0, i32 6
  store i64 %132, i64* %134, align 8
  %135 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 14
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @IN_FASTRECOVERY(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %119
  %141 = load i32, i32* @TF_WASFRECOVERY, align 4
  %142 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %143 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %142, i32 0, i32 14
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %153

146:                                              ; preds = %119
  %147 = load i32, i32* @TF_WASFRECOVERY, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %150 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %146, %140
  %154 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %155 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %154, i32 0, i32 14
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @IN_CONGRECOVERY(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i32, i32* @TF_WASCRECOVERY, align 4
  %161 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %162 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %161, i32 0, i32 14
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %172

165:                                              ; preds = %153
  %166 = load i32, i32* @TF_WASCRECOVERY, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %169 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %168, i32 0, i32 14
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %165, %159
  %173 = load i64, i64* @ticks, align 8
  %174 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %175 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %178 = add nsw i32 %177, 1
  %179 = ashr i32 %176, %178
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %173, %180
  %182 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %183 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %182, i32 0, i32 17
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* @TF_PREVVALID, align 4
  %185 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %186 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %185, i32 0, i32 14
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %196

189:                                              ; preds = %114
  %190 = load i32, i32* @TF_PREVVALID, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %193 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %192, i32 0, i32 14
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %189, %172
  br label %197

197:                                              ; preds = %196, %111
  %198 = load i32, i32* @tcps_rexmttimeo, align 4
  %199 = call i32 @TCPSTAT_INC(i32 %198)
  %200 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %201 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @TCPS_SYN_SENT, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %197
  %206 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %207 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @TCPS_SYN_RECEIVED, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %205, %197
  %212 = load i32, i32* @RACK_INITIAL_RTO, align 4
  %213 = load i32*, i32** @tcp_backoff, align 8
  %214 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %212, %219
  %221 = call i32 @MSEC_2_TICKS(i32 %220)
  store i32 %221, i32* %8, align 4
  br label %233

222:                                              ; preds = %205
  %223 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %224 = call i32 @TCP_REXMTVAL(%struct.tcpcb* %223)
  %225 = load i32*, i32** @tcp_backoff, align 8
  %226 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %227 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %225, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %224, %231
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %222, %211
  %234 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %235 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %234, i32 0, i32 16
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @rack_rto_min, align 4
  %239 = call i32 @MSEC_2_TICKS(i32 %238)
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @max(i32 %239, i32 %240)
  %242 = load i32, i32* @rack_rto_max, align 4
  %243 = call i32 @MSEC_2_TICKS(i32 %242)
  %244 = call i32 @TCPT_RANGESET(i32 %236, i32 %237, i32 %241, i32 %243)
  %245 = load i64, i64* @V_tcp_pmtud_blackhole_detect, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %339

247:                                              ; preds = %233
  %248 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %249 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %255 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @TCPS_FIN_WAIT_1, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %339

259:                                              ; preds = %253, %247
  %260 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %261 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @TF2_PLPMTU_PMTUD, align 4
  %264 = load i32, i32* @TF2_PLPMTU_MAXSEGSNT, align 4
  %265 = or i32 %263, %264
  %266 = and i32 %262, %265
  %267 = load i32, i32* @TF2_PLPMTU_PMTUD, align 4
  %268 = load i32, i32* @TF2_PLPMTU_MAXSEGSNT, align 4
  %269 = or i32 %267, %268
  %270 = icmp eq i32 %266, %269
  br i1 %270, label %271, label %306

271:                                              ; preds = %259
  %272 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %273 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = icmp sge i32 %274, 2
  br i1 %275, label %276, label %306

276:                                              ; preds = %271
  %277 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %278 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = icmp slt i32 %279, 6
  br i1 %280, label %281, label %306

281:                                              ; preds = %276
  %282 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %283 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = srem i32 %284, 2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %306

287:                                              ; preds = %281
  %288 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %289 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %288, i32 0, i32 9
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @TF2_PLPMTU_BLACKHOLE, align 4
  %292 = and i32 %290, %291
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %287
  %295 = load i32, i32* @TF2_PLPMTU_BLACKHOLE, align 4
  %296 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %297 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  %300 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %301 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %300, i32 0, i32 11
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %304 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %303, i32 0, i32 10
  store i64 %302, i64* %304, align 8
  br label %305

305:                                              ; preds = %294, %287
  br label %338

306:                                              ; preds = %281, %276, %271, %259
  %307 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %308 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @TF2_PLPMTU_BLACKHOLE, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %337

313:                                              ; preds = %306
  %314 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %315 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = icmp sge i32 %316, 6
  br i1 %317, label %318, label %337

318:                                              ; preds = %313
  %319 = load i32, i32* @TF2_PLPMTU_PMTUD, align 4
  %320 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %321 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  %324 = load i32, i32* @TF2_PLPMTU_BLACKHOLE, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %327 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %326, i32 0, i32 9
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 4
  %330 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %331 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %330, i32 0, i32 10
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %334 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %333, i32 0, i32 11
  store i64 %332, i64* %334, align 8
  %335 = load i32, i32* @tcps_pmtud_blackhole_failed, align 4
  %336 = call i32 @TCPSTAT_INC(i32 %335)
  br label %337

337:                                              ; preds = %318, %313, %306
  br label %338

338:                                              ; preds = %337, %305
  br label %339

339:                                              ; preds = %338, %253, %233
  %340 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %341 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @TCP_MAXRXTSHIFT, align 4
  %344 = sdiv i32 %343, 4
  %345 = icmp sgt i32 %342, %344
  br i1 %345, label %346, label %362

346:                                              ; preds = %339
  %347 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %348 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %347, i32 0, i32 15
  %349 = load %struct.inpcb*, %struct.inpcb** %348, align 8
  %350 = call i32 @in_losing(%struct.inpcb* %349)
  %351 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %352 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %351, i32 0, i32 8
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %355 = ashr i32 %353, %354
  %356 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %357 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %356, i32 0, i32 12
  %358 = load i32, i32* %357, align 8
  %359 = add nsw i32 %358, %355
  store i32 %359, i32* %357, align 8
  %360 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %361 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %360, i32 0, i32 8
  store i32 0, i32* %361, align 8
  br label %362

362:                                              ; preds = %346, %339
  %363 = load i64, i64* @rack_use_sack_filter, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %362
  %366 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %367 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 0
  %369 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %370 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @sack_filter_clear(i32* %368, i64 %371)
  br label %373

373:                                              ; preds = %365, %362
  %374 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %375 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %378 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %377, i32 0, i32 7
  store i64 %376, i64* %378, align 8
  %379 = load i32, i32* @TF_ACKNOW, align 4
  %380 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %381 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %380, i32 0, i32 14
  %382 = load i32, i32* %381, align 8
  %383 = or i32 %382, %379
  store i32 %383, i32* %381, align 8
  %384 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %385 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %384, i32 0, i32 13
  store i64 0, i64* %385, align 8
  %386 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %387 = load i32, i32* @CC_RTO, align 4
  %388 = call i32 @rack_cong_signal(%struct.tcpcb* %386, i32* null, i32 %387)
  br label %389

389:                                              ; preds = %373, %102
  %390 = load i32, i32* %10, align 4
  store i32 %390, i32* %4, align 4
  br label %391

391:                                              ; preds = %389, %52, %27, %22
  %392 = load i32, i32* %4, align 4
  ret i32 %392
}

declare dso_local i64 @rack_progress_timeout_check(%struct.tcpcb*) #1

declare dso_local i32 @tcp_set_inp_to_drop(%struct.inpcb*, i32) #1

declare dso_local i64 @TCPS_HAVEESTABLISHED(i64) #1

declare dso_local i32 @rack_remxt_tmr(%struct.tcpcb*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i64 @IN_FASTRECOVERY(i32) #1

declare dso_local i64 @IN_CONGRECOVERY(i32) #1

declare dso_local i32 @MSEC_2_TICKS(i32) #1

declare dso_local i32 @TCP_REXMTVAL(%struct.tcpcb*) #1

declare dso_local i32 @TCPT_RANGESET(i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @in_losing(%struct.inpcb*) #1

declare dso_local i32 @sack_filter_clear(i32*, i64) #1

declare dso_local i32 @rack_cong_signal(%struct.tcpcb*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
