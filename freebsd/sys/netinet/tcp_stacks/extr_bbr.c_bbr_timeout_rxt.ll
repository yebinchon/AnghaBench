; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timeout_rxt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timeout_rxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i64 }
%struct.tcp_bbr = type { i32, i32, %struct.TYPE_4__, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@PACE_TMR_RXT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@BBR_RWND_COLLAPSED = common dso_local global i32 0, align 4
@TCP_MAXRXTSHIFT = common dso_local global i32 0, align 4
@tcps_timeoutdrop = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@ticks = common dso_local global i64 0, align 8
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TF_PREVVALID = common dso_local global i32 0, align 4
@tcps_rexmttimeo = common dso_local global i32 0, align 4
@TCPS_SYN_RECEIVED = common dso_local global i64 0, align 8
@BBR_INITIAL_RTO = common dso_local global i32 0, align 4
@tcp_backoff = common dso_local global i32* null, align 8
@V_tcp_pmtud_blackhole_detect = common dso_local global i64 0, align 8
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@TCPS_FIN_WAIT_1 = common dso_local global i64 0, align 8
@TF2_PLPMTU_PMTUD = common dso_local global i32 0, align 4
@TF2_PLPMTU_MAXSEGSNT = common dso_local global i32 0, align 4
@TF2_PLPMTU_BLACKHOLE = common dso_local global i32 0, align 4
@tcps_pmtud_blackhole_failed = common dso_local global i32 0, align 4
@tcp_rexmit_drop_options = common dso_local global i64 0, align 8
@TF_REQ_SCALE = common dso_local global i32 0, align 4
@TF_REQ_TSTMP = common dso_local global i32 0, align 4
@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@V_tcp_mssdflt = common dso_local global i64 0, align 8
@V_tcp_pmtud_blackhole_mss = common dso_local global i64 0, align 8
@V_tcp_v6mssdflt = common dso_local global i64 0, align 8
@V_tcp_v6pmtud_blackhole_mss = common dso_local global i64 0, align 8
@tcps_pmtud_blackhole_activated = common dso_local global i32 0, align 4
@tcps_pmtud_blackhole_activated_min_mss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_bbr*, i32)* @bbr_timeout_rxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_timeout_rxt(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @PACE_TMR_RXT, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %13 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %11
  store i32 %16, i32* %14, align 8
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %411

22:                                               ; preds = %3
  %23 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @TCPS_HAVEESTABLISHED(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %411

37:                                               ; preds = %28, %22
  %38 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %39 = call i64 @bbr_progress_timeout_check(%struct.tcp_bbr* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = call i32 @tcp_set_inp_to_drop(i32 %44, i32 %45)
  br label %409

47:                                               ; preds = %37
  %48 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %49 = call i32 @bbr_remxt_tmr(%struct.tcpcb* %48)
  %50 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %51 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp eq %struct.TYPE_3__* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %57 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BBR_RWND_COLLAPSED, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55, %47
  %66 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %55
  %71 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TCP_MAXRXTSHIFT, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load i32, i32* @TCP_MAXRXTSHIFT, align 4
  %78 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @tcps_timeoutdrop, align 4
  %81 = call i32 @TCPSTAT_INC(i32 %80)
  store i32 1, i32* %9, align 4
  %82 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %83 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %86 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %85, i32 0, i32 20
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %76
  %90 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 20
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  br label %96

94:                                               ; preds = %76
  %95 = load i32, i32* @ETIMEDOUT, align 4
  br label %96

96:                                               ; preds = %94, %89
  %97 = phi i32 [ %93, %89 ], [ %95, %94 ]
  %98 = call i32 @tcp_set_inp_to_drop(i32 %84, i32 %97)
  br label %409

99:                                               ; preds = %70
  %100 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %101 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TCPS_SYN_SENT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 4
  store i32 1, i32* %107, align 4
  br label %194

108:                                              ; preds = %99
  %109 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %110 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %177

113:                                              ; preds = %108
  %114 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %115 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %118 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %116, %119
  %121 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %124 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @IN_RECOVERY(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %160, label %128

128:                                              ; preds = %113
  %129 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %130 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %133 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %135 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %134, i32 0, i32 18
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %138 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %137, i32 0, i32 19
  store i32 %136, i32* %138, align 4
  %139 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %140 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %139, i32 0, i32 9
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %143 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %142, i32 0, i32 8
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* @ticks, align 8
  %145 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %146 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %149 = add nsw i32 %148, 1
  %150 = ashr i32 %147, %149
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %144, %151
  %153 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %154 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %153, i32 0, i32 17
  store i64 %152, i64* %154, align 8
  %155 = load i32, i32* @TF_PREVVALID, align 4
  %156 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %157 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %167

160:                                              ; preds = %113
  %161 = load i32, i32* @TF_PREVVALID, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %164 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %160, %128
  %168 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %169 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %172 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %170, %173
  %175 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %176 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  br label %193

177:                                              ; preds = %108
  %178 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %179 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %182 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %180, %183
  %185 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %186 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @TF_PREVVALID, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %190 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %177, %167
  br label %194

194:                                              ; preds = %193, %105
  %195 = load i32, i32* @tcps_rexmttimeo, align 4
  %196 = call i32 @TCPSTAT_INC(i32 %195)
  %197 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %198 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @TCPS_SYN_SENT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %194
  %203 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %204 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TCPS_SYN_RECEIVED, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %202, %194
  %209 = load i32, i32* @BBR_INITIAL_RTO, align 4
  %210 = call i32 @USEC_2_TICKS(i32 %209)
  %211 = load i32*, i32** @tcp_backoff, align 8
  %212 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %213 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %211, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = mul nsw i32 %210, %217
  store i32 %218, i32* %8, align 4
  br label %230

219:                                              ; preds = %202
  %220 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %221 = call i32 @TCP_REXMTVAL(%struct.tcpcb* %220)
  %222 = load i32*, i32** @tcp_backoff, align 8
  %223 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %224 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %221, %228
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %219, %208
  %231 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %232 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %231, i32 0, i32 16
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %236 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @MSEC_2_TICKS(i32 %238)
  %240 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %241 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = mul nsw i32 %243, 1000
  %245 = call i32 @MSEC_2_TICKS(i32 %244)
  %246 = call i32 @TCPT_RANGESET(i32 %233, i32 %234, i32 %239, i32 %245)
  %247 = load i64, i64* @V_tcp_pmtud_blackhole_detect, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %341

249:                                              ; preds = %230
  %250 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %251 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %261, label %255

255:                                              ; preds = %249
  %256 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %257 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @TCPS_FIN_WAIT_1, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %341

261:                                              ; preds = %255, %249
  %262 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %263 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %262, i32 0, i32 11
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @TF2_PLPMTU_PMTUD, align 4
  %266 = load i32, i32* @TF2_PLPMTU_MAXSEGSNT, align 4
  %267 = or i32 %265, %266
  %268 = and i32 %264, %267
  %269 = load i32, i32* @TF2_PLPMTU_PMTUD, align 4
  %270 = load i32, i32* @TF2_PLPMTU_MAXSEGSNT, align 4
  %271 = or i32 %269, %270
  %272 = icmp eq i32 %268, %271
  br i1 %272, label %273, label %308

273:                                              ; preds = %261
  %274 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %275 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = icmp sge i32 %276, 2
  br i1 %277, label %278, label %308

278:                                              ; preds = %273
  %279 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %280 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %281, 6
  br i1 %282, label %283, label %308

283:                                              ; preds = %278
  %284 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %285 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = srem i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %308

289:                                              ; preds = %283
  %290 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %291 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %290, i32 0, i32 11
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @TF2_PLPMTU_BLACKHOLE, align 4
  %294 = and i32 %292, %293
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %307

296:                                              ; preds = %289
  %297 = load i32, i32* @TF2_PLPMTU_BLACKHOLE, align 4
  %298 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %299 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %298, i32 0, i32 11
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 4
  %302 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %303 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %306 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %305, i32 0, i32 12
  store i32 %304, i32* %306, align 8
  br label %307

307:                                              ; preds = %296, %289
  br label %340

308:                                              ; preds = %283, %278, %273, %261
  %309 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %310 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %309, i32 0, i32 11
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @TF2_PLPMTU_BLACKHOLE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %339

315:                                              ; preds = %308
  %316 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %317 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = icmp sge i32 %318, 6
  br i1 %319, label %320, label %339

320:                                              ; preds = %315
  %321 = load i32, i32* @TF2_PLPMTU_PMTUD, align 4
  %322 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %323 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %322, i32 0, i32 11
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  %326 = load i32, i32* @TF2_PLPMTU_BLACKHOLE, align 4
  %327 = xor i32 %326, -1
  %328 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %329 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %328, i32 0, i32 11
  %330 = load i32, i32* %329, align 4
  %331 = and i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %333 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %332, i32 0, i32 12
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %336 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %335, i32 0, i32 5
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* @tcps_pmtud_blackhole_failed, align 4
  %338 = call i32 @TCPSTAT_INC(i32 %337)
  br label %339

339:                                              ; preds = %320, %315, %308
  br label %340

340:                                              ; preds = %339, %307
  br label %341

341:                                              ; preds = %340, %255, %230
  %342 = load i64, i64* @tcp_rexmit_drop_options, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %366

344:                                              ; preds = %341
  %345 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %346 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @TCPS_SYN_SENT, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %366

350:                                              ; preds = %344
  %351 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %352 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = icmp eq i32 %353, 3
  br i1 %354, label %355, label %366

355:                                              ; preds = %350
  %356 = load i32, i32* @TF_REQ_SCALE, align 4
  %357 = load i32, i32* @TF_REQ_TSTMP, align 4
  %358 = or i32 %356, %357
  %359 = load i32, i32* @TF_SACK_PERMIT, align 4
  %360 = or i32 %358, %359
  %361 = xor i32 %360, -1
  %362 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %363 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, %361
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %355, %350, %344, %341
  %367 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %368 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @TCP_MAXRXTSHIFT, align 4
  %371 = sdiv i32 %370, 4
  %372 = icmp sgt i32 %369, %371
  br i1 %372, label %373, label %389

373:                                              ; preds = %366
  %374 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %375 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %374, i32 0, i32 15
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @in_losing(i32 %376)
  %378 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %379 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %378, i32 0, i32 10
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %382 = ashr i32 %380, %381
  %383 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %384 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %383, i32 0, i32 13
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, %382
  store i32 %386, i32* %384, align 4
  %387 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %388 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %387, i32 0, i32 10
  store i32 0, i32* %388, align 8
  br label %389

389:                                              ; preds = %373, %366
  %390 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %391 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 1
  %393 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %394 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = call i32 @sack_filter_clear(i32* %392, i64 %395)
  %397 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %398 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %401 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %400, i32 0, i32 9
  store i64 %399, i64* %401, align 8
  %402 = load i32, i32* @TF_ACKNOW, align 4
  %403 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %404 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %403, i32 0, i32 6
  %405 = load i32, i32* %404, align 4
  %406 = or i32 %405, %402
  store i32 %406, i32* %404, align 4
  %407 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %408 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %407, i32 0, i32 14
  store i64 0, i64* %408, align 8
  br label %409

409:                                              ; preds = %389, %96, %41
  %410 = load i32, i32* %9, align 4
  store i32 %410, i32* %4, align 4
  br label %411

411:                                              ; preds = %409, %36, %21
  %412 = load i32, i32* %4, align 4
  ret i32 %412
}

declare dso_local i64 @TCPS_HAVEESTABLISHED(i64) #1

declare dso_local i64 @bbr_progress_timeout_check(%struct.tcp_bbr*) #1

declare dso_local i32 @tcp_set_inp_to_drop(i32, i32) #1

declare dso_local i32 @bbr_remxt_tmr(%struct.tcpcb*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @IN_RECOVERY(i32) #1

declare dso_local i32 @USEC_2_TICKS(i32) #1

declare dso_local i32 @TCP_REXMTVAL(%struct.tcpcb*) #1

declare dso_local i32 @TCPT_RANGESET(i32, i32, i32, i32) #1

declare dso_local i32 @MSEC_2_TICKS(i32) #1

declare dso_local i32 @in_losing(i32) #1

declare dso_local i32 @sack_filter_clear(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
