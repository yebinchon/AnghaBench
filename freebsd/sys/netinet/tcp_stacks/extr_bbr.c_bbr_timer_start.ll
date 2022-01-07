; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32, i32, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcp_bbr = type { i64, i64, i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i32, i64, i64, i32, i32 }
%struct.bbr_sendmap = type { i32, i64*, i32, i64 }

@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@PACE_TMR_RXT = common dso_local global i32 0, align 4
@BBR_INITIAL_RTO = common dso_local global i64 0, align 8
@TCP_RTT_SHIFT = common dso_local global i64 0, align 8
@tcp_backoff = common dso_local global i64* null, align 8
@MS_IN_USEC = common dso_local global i32 0, align 4
@USECS_IN_SECOND = common dso_local global i64 0, align 8
@BBR_ACKED = common dso_local global i32 0, align 4
@BBR_SACK_PASSED = common dso_local global i32 0, align 4
@TF_SENTFIN = common dso_local global i32 0, align 4
@BBR_HAS_FIN = common dso_local global i32 0, align 4
@BBR_RTT_RACK = common dso_local global i32 0, align 4
@bbr_sendmap = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@bbr_tlp_type_to_use = common dso_local global i32 0, align 4
@bbr_to_arm_rack = common dso_local global i32 0, align 4
@PACE_TMR_RACK = common dso_local global i32 0, align 4
@bbr_tlp_max_resend = common dso_local global i64 0, align 8
@bbr_to_arm_tlp = common dso_local global i32 0, align 4
@PACE_TMR_TLP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcpcb*, %struct.tcp_bbr*, i64)* @bbr_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bbr_timer_start(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.bbr_sendmap*, align 8
  %17 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %15, align 8
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %19 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %457

23:                                               ; preds = %3
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %31 = call i64 @bbr_get_persists_timer_val(%struct.tcpcb* %29, %struct.tcp_bbr* %30)
  store i64 %31, i64* %4, align 8
  br label %457

32:                                               ; preds = %23
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %34 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %35)
  store %struct.bbr_sendmap* %36, %struct.bbr_sendmap** %16, align 8
  %37 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %38 = icmp eq %struct.bbr_sendmap* %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %32
  %40 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TF_SACK_PERMIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %194

52:                                               ; preds = %46, %39, %32
  br label %53

53:                                               ; preds = %444, %395, %380, %310, %302, %292, %238, %206, %52
  %54 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @SEQ_LT(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 7
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i64 @sbavail(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %193

71:                                               ; preds = %62, %53
  store i64 0, i64* %12, align 8
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %73 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  %75 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %74)
  store %struct.bbr_sendmap* %75, %struct.bbr_sendmap** %16, align 8
  %76 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %77 = icmp ne %struct.bbr_sendmap* %76, null
  br i1 %77, label %78, label %118

78:                                               ; preds = %71
  %79 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %80 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %14, align 8
  %84 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %85 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %91 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @TSTMP_GEQ(i64 %89, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %78
  %97 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %98 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %13, align 8
  br label %108

103:                                              ; preds = %78
  %104 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %105 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %13, align 8
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @TSTMP_GT(i64 %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %13, align 8
  %116 = sub nsw i64 %114, %115
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117, %71
  %119 = load i32, i32* @PACE_TMR_RXT, align 4
  %120 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %121 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %119
  store i32 %124, i32* %122, align 8
  %125 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %126 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = load i64, i64* @BBR_INITIAL_RTO, align 8
  store i64 %130, i64* %17, align 8
  br label %144

131:                                              ; preds = %118
  %132 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %133 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @TICKS_2_USEC(i64 %134)
  %136 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %137 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @TICKS_2_USEC(i64 %138)
  %140 = mul nsw i64 %139, 4
  %141 = add nsw i64 %135, %140
  %142 = load i64, i64* @TCP_RTT_SHIFT, align 8
  %143 = ashr i64 %141, %142
  store i64 %143, i64* %17, align 8
  br label %144

144:                                              ; preds = %131, %129
  %145 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %146 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load i64*, i64** @tcp_backoff, align 8
  %151 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %152 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %150, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %17, align 8
  %158 = mul nsw i64 %157, %156
  store i64 %158, i64* %17, align 8
  br label %159

159:                                              ; preds = %149, %144
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %12, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* %17, align 8
  %166 = sub nsw i64 %165, %164
  store i64 %166, i64* %17, align 8
  br label %172

167:                                              ; preds = %159
  %168 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %169 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %17, align 8
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* %17, align 8
  %175 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %176 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MS_IN_USEC, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %182 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @USECS_IN_SECOND, align 8
  %185 = mul nsw i64 %183, %184
  %186 = call i32 @TCPT_RANGESET_NOSLOP(i64 %173, i64 %174, i32 %180, i64 %185)
  %187 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %188 = load i64, i64* %7, align 8
  %189 = load i64, i64* %11, align 8
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @bbr_log_timer_var(%struct.tcp_bbr* %187, i32 2, i64 %188, i64 0, i64 %189, i64 0, i64 %190)
  %192 = load i64, i64* %10, align 8
  store i64 %192, i64* %4, align 8
  br label %457

193:                                              ; preds = %62
  store i64 0, i64* %4, align 8
  br label %457

194:                                              ; preds = %46
  %195 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %196 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @BBR_ACKED, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %203 = call %struct.bbr_sendmap* @bbr_find_lowest_rsm(%struct.tcp_bbr* %202)
  store %struct.bbr_sendmap* %203, %struct.bbr_sendmap** %16, align 8
  %204 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %205 = icmp eq %struct.bbr_sendmap* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %53

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %207, %194
  %209 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %210 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @BBR_SACK_PASSED, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %287

215:                                              ; preds = %208
  %216 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %217 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @TF_SENTFIN, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %215
  %223 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %224 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %227 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %225, %228
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %239

231:                                              ; preds = %222
  %232 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %233 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @BBR_HAS_FIN, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %53

239:                                              ; preds = %231, %222, %215
  %240 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %241 = load i32, i32* @BBR_RTT_RACK, align 4
  %242 = call i64 @bbr_get_rtt(%struct.tcp_bbr* %240, i32 %241)
  store i64 %242, i64* %11, align 8
  %243 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %244 = load i64, i64* %11, align 8
  %245 = load i64, i64* %7, align 8
  %246 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %247 = call i64 @bbr_calc_thresh_rack(%struct.tcp_bbr* %243, i64 %244, i64 %245, %struct.bbr_sendmap* %246)
  store i64 %247, i64* %8, align 8
  %248 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %249 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  store i64 %252, i64* %14, align 8
  %253 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %254 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %253, i32 0, i32 1
  %255 = load i64*, i64** %254, align 8
  %256 = load i64, i64* %14, align 8
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* %8, align 8
  %260 = add nsw i64 %258, %259
  store i64 %260, i64* %9, align 8
  %261 = load i64, i64* %9, align 8
  %262 = load i64, i64* %7, align 8
  %263 = call i64 @SEQ_GEQ(i64 %261, i64 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %239
  %266 = load i64, i64* %9, align 8
  %267 = load i64, i64* %7, align 8
  %268 = sub nsw i64 %266, %267
  store i64 %268, i64* %10, align 8
  %269 = load i64, i64* %10, align 8
  %270 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %271 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp slt i64 %269, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %265
  %276 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %277 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %10, align 8
  br label %280

280:                                              ; preds = %275, %265
  br label %286

281:                                              ; preds = %239
  %282 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %283 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %10, align 8
  br label %286

286:                                              ; preds = %281, %280
  br label %418

287:                                              ; preds = %208
  %288 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %289 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  br label %53

293:                                              ; preds = %287
  %294 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %295 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 6
  %297 = load i32, i32* @bbr_sendmap, align 4
  %298 = load i32, i32* @r_tnext, align 4
  %299 = call %struct.bbr_sendmap* @TAILQ_LAST_FAST(i32* %296, i32 %297, i32 %298)
  store %struct.bbr_sendmap* %299, %struct.bbr_sendmap** %16, align 8
  %300 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %301 = icmp eq %struct.bbr_sendmap* %300, null
  br i1 %301, label %302, label %303

302:                                              ; preds = %293
  br label %53

303:                                              ; preds = %293
  %304 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %305 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @BBR_HAS_FIN, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %16, align 8
  br label %53

311:                                              ; preds = %303
  store i64 0, i64* %12, align 8
  %312 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %313 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  store i64 %316, i64* %14, align 8
  %317 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %318 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %317, i32 0, i32 1
  %319 = load i64*, i64** %318, align 8
  %320 = load i64, i64* %14, align 8
  %321 = getelementptr inbounds i64, i64* %319, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %324 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = call i64 @TSTMP_GEQ(i64 %322, i64 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %311
  %330 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %331 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %330, i32 0, i32 1
  %332 = load i64*, i64** %331, align 8
  %333 = load i64, i64* %14, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %13, align 8
  br label %341

336:                                              ; preds = %311
  %337 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %338 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %13, align 8
  br label %341

341:                                              ; preds = %336, %329
  %342 = load i64, i64* %13, align 8
  %343 = load i64, i64* %7, align 8
  %344 = call i64 @TSTMP_GT(i64 %342, i64 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %341
  %347 = load i64, i64* %7, align 8
  %348 = load i64, i64* %13, align 8
  %349 = sub nsw i64 %347, %348
  store i64 %349, i64* %12, align 8
  br label %350

350:                                              ; preds = %346, %341
  store i64 1, i64* %15, align 8
  %351 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %352 = load i32, i32* @bbr_tlp_type_to_use, align 4
  %353 = call i64 @bbr_get_rtt(%struct.tcp_bbr* %351, i32 %352)
  store i64 %353, i64* %11, align 8
  %354 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %355 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %356 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %357 = load i64, i64* %11, align 8
  %358 = load i64, i64* %7, align 8
  %359 = call i64 @bbr_calc_thresh_tlp(%struct.tcpcb* %354, %struct.tcp_bbr* %355, %struct.bbr_sendmap* %356, i64 %357, i64 %358)
  store i64 %359, i64* %8, align 8
  %360 = load i64, i64* %8, align 8
  %361 = load i64, i64* %12, align 8
  %362 = icmp sgt i64 %360, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %350
  %364 = load i64, i64* %8, align 8
  %365 = load i64, i64* %12, align 8
  %366 = sub nsw i64 %364, %365
  store i64 %366, i64* %10, align 8
  br label %372

367:                                              ; preds = %350
  %368 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %369 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %10, align 8
  br label %372

372:                                              ; preds = %367, %363
  %373 = load i64, i64* %10, align 8
  %374 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %375 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @USECS_IN_SECOND, align 8
  %378 = mul nsw i64 %376, %377
  %379 = icmp sgt i64 %373, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %372
  br label %53

381:                                              ; preds = %372
  %382 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %383 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %398

386:                                              ; preds = %381
  %387 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %388 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %391 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %389, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %386
  %396 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %397 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %396, i32 0, i32 2
  store i32 0, i32* %397, align 8
  br label %53

398:                                              ; preds = %386, %381
  %399 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %400 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %399, i32 0, i32 3
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %403 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 3
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %401, %405
  br i1 %406, label %407, label %417

407:                                              ; preds = %398
  %408 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %409 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 4
  store i64 0, i64* %410, align 8
  %411 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %16, align 8
  %412 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %411, i32 0, i32 3
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %415 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 3
  store i64 %413, i64* %416, align 8
  br label %417

417:                                              ; preds = %407, %398
  br label %418

418:                                              ; preds = %417, %286
  %419 = load i64, i64* %15, align 8
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %418
  %422 = load i32, i32* @bbr_to_arm_rack, align 4
  %423 = call i32 @BBR_STAT_INC(i32 %422)
  %424 = load i32, i32* @PACE_TMR_RACK, align 4
  %425 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %426 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 8
  %429 = or i32 %428, %424
  store i32 %429, i32* %427, align 8
  br label %455

430:                                              ; preds = %418
  %431 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %432 = load i64, i64* %7, align 8
  %433 = load i64, i64* %12, align 8
  %434 = load i64, i64* %11, align 8
  %435 = load i64, i64* %8, align 8
  %436 = load i64, i64* %10, align 8
  %437 = call i32 @bbr_log_timer_var(%struct.tcp_bbr* %431, i32 1, i64 %432, i64 %433, i64 %434, i64 %435, i64 %436)
  %438 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %439 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %438, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 4
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @bbr_tlp_max_resend, align 8
  %443 = icmp sgt i64 %441, %442
  br i1 %443, label %444, label %445

444:                                              ; preds = %430
  br label %53

445:                                              ; preds = %430
  %446 = load i32, i32* @bbr_to_arm_tlp, align 4
  %447 = call i32 @BBR_STAT_INC(i32 %446)
  %448 = load i32, i32* @PACE_TMR_TLP, align 4
  %449 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %450 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %449, i32 0, i32 3
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 5
  %452 = load i32, i32* %451, align 8
  %453 = or i32 %452, %448
  store i32 %453, i32* %451, align 8
  br label %454

454:                                              ; preds = %445
  br label %455

455:                                              ; preds = %454, %421
  %456 = load i64, i64* %10, align 8
  store i64 %456, i64* %4, align 8
  br label %457

457:                                              ; preds = %455, %193, %172, %28, %22
  %458 = load i64, i64* %4, align 8
  ret i64 %458
}

declare dso_local i64 @bbr_get_persists_timer_val(%struct.tcpcb*, %struct.tcp_bbr*) #1

declare dso_local %struct.bbr_sendmap* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @SEQ_LT(i32, i32) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @TSTMP_GEQ(i64, i64) #1

declare dso_local i64 @TSTMP_GT(i64, i64) #1

declare dso_local i64 @TICKS_2_USEC(i64) #1

declare dso_local i32 @TCPT_RANGESET_NOSLOP(i64, i64, i32, i64) #1

declare dso_local i32 @bbr_log_timer_var(%struct.tcp_bbr*, i32, i64, i64, i64, i64, i64) #1

declare dso_local %struct.bbr_sendmap* @bbr_find_lowest_rsm(%struct.tcp_bbr*) #1

declare dso_local i64 @bbr_get_rtt(%struct.tcp_bbr*, i32) #1

declare dso_local i64 @bbr_calc_thresh_rack(%struct.tcp_bbr*, i64, i64, %struct.bbr_sendmap*) #1

declare dso_local i64 @SEQ_GEQ(i64, i64) #1

declare dso_local %struct.bbr_sendmap* @TAILQ_LAST_FAST(i32*, i32, i32) #1

declare dso_local i64 @bbr_calc_thresh_tlp(%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, i64, i64) #1

declare dso_local i32 @BBR_STAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
