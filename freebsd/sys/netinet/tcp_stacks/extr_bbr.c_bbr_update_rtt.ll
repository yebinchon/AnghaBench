; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_update_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_update_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_bbr = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bbr_sendmap = type { i32, i32, i32* }
%struct.tcpopt = type { i64, i32 }

@BBR_ACKED = common dso_local global i32 0, align 4
@BBR_WAS_RENEGED = common dso_local global i32 0, align 4
@BBR_RXT_CLEARED = common dso_local global i32 0, align 4
@BBR_RTT_BY_EXACTMATCH = common dso_local global i32 0, align 4
@bbr_can_use_ts_for_rtt = common dso_local global i32 0, align 4
@BBR_CUM_ACKED = common dso_local global i64 0, align 8
@TOF_TS = common dso_local global i32 0, align 4
@MS_IN_USEC = common dso_local global i32 0, align 4
@BBR_RTT_BY_TIMESTAMP = common dso_local global i32 0, align 4
@BBR_OVERMAX = common dso_local global i32 0, align 4
@BBR_TIMER_FUDGE = common dso_local global i32 0, align 4
@BBR_RTT_BY_TSMATCHING = common dso_local global i32 0, align 4
@BBR_TLP = common dso_local global i32 0, align 4
@BBR_RTT_BY_EARLIER_RET = common dso_local global i32 0, align 4
@BBR_RTT_BY_SOME_RETRAN = common dso_local global i32 0, align 4
@BBR_RTT_BY_THIS_RETRAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, %struct.tcpopt*, i32, i64, i32)* @bbr_update_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_update_rtt(%struct.tcpcb* %0, %struct.tcp_bbr* %1, %struct.bbr_sendmap* %2, %struct.tcpopt* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcpcb*, align 8
  %10 = alloca %struct.tcp_bbr*, align 8
  %11 = alloca %struct.bbr_sendmap*, align 8
  %12 = alloca %struct.tcpopt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %9, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %10, align 8
  store %struct.bbr_sendmap* %2, %struct.bbr_sendmap** %11, align 8
  store %struct.tcpopt* %3, %struct.tcpopt** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %20 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %21 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BBR_ACKED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %7
  %27 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %28 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BBR_WAS_RENEGED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %35 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BBR_RXT_CLEARED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26, %7
  store i32 0, i32* %8, align 4
  br label %438

41:                                               ; preds = %33
  %42 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %43 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %89

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %49 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @TSTMP_GT(i32 %47, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %58 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %56, %61
  store i32 %62, i32* %17, align 4
  br label %64

63:                                               ; preds = %46
  store i32 1, i32* %17, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, i32* %17, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %17, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %74 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %78 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @BBR_RTT_BY_EXACTMATCH, align 4
  %81 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %82 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %88 = call i32 @bbr_update_bbr_info(%struct.tcp_bbr* %73, %struct.bbr_sendmap* %74, i32 %75, i32 %76, i64 %79, i32 0, i32 %80, i32 %85, i64 %86, %struct.tcpopt* %87)
  store i32 1, i32* %8, align 4
  br label %438

89:                                               ; preds = %41
  %90 = load i32, i32* @bbr_can_use_ts_for_rtt, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %151

92:                                               ; preds = %89
  %93 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %94 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %151

97:                                               ; preds = %92
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @BBR_CUM_ACKED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %151

101:                                              ; preds = %97
  %102 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %103 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @TOF_TS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %151

108:                                              ; preds = %101
  %109 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %110 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %151

113:                                              ; preds = %108
  %114 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %115 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %114, i32 0, i32 3
  %116 = call i32 @tcp_tv_to_mssectick(i32* %115)
  %117 = sext i32 %116 to i64
  %118 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %119 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp slt i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  store i32 1, i32* %17, align 4
  br label %126

126:                                              ; preds = %125, %113
  %127 = load i32, i32* @MS_IN_USEC, align 4
  %128 = load i32, i32* %17, align 4
  %129 = mul nsw i32 %128, %127
  store i32 %129, i32* %17, align 4
  %130 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %131 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %135 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @BBR_RTT_BY_TIMESTAMP, align 4
  %138 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %139 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %142 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %140, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %150 = call i32 @bbr_update_bbr_info(%struct.tcp_bbr* %130, %struct.bbr_sendmap* %131, i32 %132, i32 %133, i64 %136, i32 0, i32 %137, i32 %147, i64 %148, %struct.tcpopt* %149)
  store i32 1, i32* %8, align 4
  br label %438

151:                                              ; preds = %108, %101, %97, %92, %89
  %152 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %153 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @bbr_ts_convert(i64 %154)
  store i32 %155, i32* %18, align 4
  %156 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %157 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @TOF_TS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %290

162:                                              ; preds = %151
  %163 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %164 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %290

167:                                              ; preds = %162
  %168 = load i64, i64* %14, align 8
  %169 = load i64, i64* @BBR_CUM_ACKED, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %290

171:                                              ; preds = %167
  %172 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %173 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @BBR_OVERMAX, align 4
  %176 = and i32 %174, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %290

178:                                              ; preds = %171
  %179 = load i32, i32* @BBR_TIMER_FUDGE, align 4
  store i32 %179, i32* %19, align 4
  store i64 0, i64* %16, align 8
  br label %180

180:                                              ; preds = %286, %178
  %181 = load i64, i64* %16, align 8
  %182 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %183 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %181, %185
  br i1 %186, label %187, label %289

187:                                              ; preds = %180
  %188 = load i32, i32* %18, align 4
  %189 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %190 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %16, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %19, align 4
  %196 = sub nsw i32 %194, %195
  %197 = call i64 @SEQ_GEQ(i32 %188, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %285

199:                                              ; preds = %187
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %202 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* %16, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %19, align 4
  %208 = add nsw i32 %206, %207
  %209 = call i64 @SEQ_LEQ(i32 %200, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %285

211:                                              ; preds = %199
  %212 = load i32, i32* %13, align 4
  %213 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %214 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* %16, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @TSTMP_GT(i32 %212, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %211
  %222 = load i32, i32* %13, align 4
  %223 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %224 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %16, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %222, %228
  store i32 %229, i32* %17, align 4
  br label %231

230:                                              ; preds = %211
  store i32 1, i32* %17, align 4
  br label %231

231:                                              ; preds = %230, %221
  %232 = load i32, i32* %17, align 4
  %233 = icmp sle i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 1, i32* %17, align 4
  br label %235

235:                                              ; preds = %234, %231
  %236 = load i32, i32* %17, align 4
  %237 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %238 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  %240 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %241 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %245 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* @BBR_RTT_BY_TSMATCHING, align 4
  %249 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %250 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* %16, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i64, i64* %14, align 8
  %256 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %257 = call i32 @bbr_update_bbr_info(%struct.tcp_bbr* %240, %struct.bbr_sendmap* %241, i32 %242, i32 %243, i64 %246, i32 %247, i32 %248, i32 %254, i64 %255, %struct.tcpopt* %256)
  %258 = load i64, i64* %16, align 8
  %259 = add nsw i64 %258, 1
  %260 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %261 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = icmp slt i64 %259, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %235
  %266 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %267 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %268 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* %13, align 4
  %271 = load i64, i64* %14, align 8
  %272 = call i32 @bbr_earlier_retran(%struct.tcpcb* %266, %struct.tcp_bbr* %267, %struct.bbr_sendmap* %268, i32 %269, i32 %270, i64 %271)
  br label %284

273:                                              ; preds = %235
  %274 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %275 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @BBR_TLP, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %282 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %281, i32 0, i32 1
  store i64 0, i64* %282, align 8
  br label %283

283:                                              ; preds = %280, %273
  br label %284

284:                                              ; preds = %283, %265
  store i32 1, i32* %8, align 4
  br label %438

285:                                              ; preds = %199, %187
  br label %286

286:                                              ; preds = %285
  %287 = load i64, i64* %16, align 8
  %288 = add nsw i64 %287, 1
  store i64 %288, i64* %16, align 8
  br label %180

289:                                              ; preds = %180
  br label %290

290:                                              ; preds = %289, %171, %167, %162, %151
  %291 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %292 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  store i64 %295, i64* %16, align 8
  %296 = load i32, i32* %13, align 4
  %297 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %298 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = load i64, i64* %16, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @TSTMP_GT(i32 %296, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %290
  %306 = load i32, i32* %13, align 4
  %307 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %308 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %307, i32 0, i32 2
  %309 = load i32*, i32** %308, align 8
  %310 = load i64, i64* %16, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %306, %312
  store i32 %313, i32* %17, align 4
  br label %315

314:                                              ; preds = %290
  br label %381

315:                                              ; preds = %305
  %316 = load i32, i32* %17, align 4
  %317 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %318 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %316, %320
  br i1 %321, label %322, label %394

322:                                              ; preds = %315
  %323 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %324 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @BBR_OVERMAX, align 4
  %327 = and i32 %325, %326
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %380

329:                                              ; preds = %322
  %330 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %331 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = sub nsw i32 %332, 2
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %16, align 8
  %335 = load i32, i32* %13, align 4
  %336 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %337 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %336, i32 0, i32 2
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* %16, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = call i64 @TSTMP_GT(i32 %335, i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %329
  %345 = load i32, i32* %13, align 4
  %346 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %347 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %346, i32 0, i32 2
  %348 = load i32*, i32** %347, align 8
  %349 = load i64, i64* %16, align 8
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = sub nsw i32 %345, %351
  store i32 %352, i32* %17, align 4
  br label %354

353:                                              ; preds = %329
  store i32 1, i32* %17, align 4
  br label %354

354:                                              ; preds = %353, %344
  %355 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %356 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %357 = load i32, i32* %17, align 4
  %358 = load i32, i32* %13, align 4
  %359 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %360 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i32, i32* %18, align 4
  %363 = load i32, i32* @BBR_RTT_BY_EARLIER_RET, align 4
  %364 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %365 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = load i64, i64* %16, align 8
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load i64, i64* %14, align 8
  %371 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %372 = call i32 @bbr_update_bbr_info(%struct.tcp_bbr* %355, %struct.bbr_sendmap* %356, i32 %357, i32 %358, i64 %361, i32 %362, i32 %363, i32 %369, i64 %370, %struct.tcpopt* %371)
  %373 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %374 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %375 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %376 = load i32, i32* %17, align 4
  %377 = load i32, i32* %13, align 4
  %378 = load i64, i64* %14, align 8
  %379 = call i32 @bbr_earlier_retran(%struct.tcpcb* %373, %struct.tcp_bbr* %374, %struct.bbr_sendmap* %375, i32 %376, i32 %377, i64 %378)
  br label %393

380:                                              ; preds = %322
  br label %381

381:                                              ; preds = %380, %314
  %382 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %383 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %384 = load i32, i32* %13, align 4
  %385 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %386 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i32, i32* %18, align 4
  %389 = load i32, i32* @BBR_RTT_BY_SOME_RETRAN, align 4
  %390 = load i64, i64* %14, align 8
  %391 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %392 = call i32 @bbr_update_bbr_info(%struct.tcp_bbr* %382, %struct.bbr_sendmap* %383, i32 0, i32 %384, i64 %387, i32 %388, i32 %389, i32 0, i64 %390, %struct.tcpopt* %391)
  br label %393

393:                                              ; preds = %381, %354
  br label %437

394:                                              ; preds = %315
  %395 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %396 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @BBR_TLP, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %394
  %402 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %403 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %402, i32 0, i32 1
  store i64 0, i64* %403, align 8
  br label %404

404:                                              ; preds = %401, %394
  %405 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %406 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @BBR_OVERMAX, align 4
  %409 = and i32 %407, %408
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %424

411:                                              ; preds = %404
  %412 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %413 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %414 = load i32, i32* %17, align 4
  %415 = load i32, i32* %13, align 4
  %416 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %417 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load i32, i32* %18, align 4
  %420 = load i32, i32* @BBR_RTT_BY_THIS_RETRAN, align 4
  %421 = load i64, i64* %14, align 8
  %422 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %423 = call i32 @bbr_update_bbr_info(%struct.tcp_bbr* %412, %struct.bbr_sendmap* %413, i32 %414, i32 %415, i64 %418, i32 %419, i32 %420, i32 0, i64 %421, %struct.tcpopt* %422)
  br label %436

424:                                              ; preds = %404
  %425 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %426 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %11, align 8
  %427 = load i32, i32* %13, align 4
  %428 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %429 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i32, i32* %18, align 4
  %432 = load i32, i32* @BBR_RTT_BY_SOME_RETRAN, align 4
  %433 = load i64, i64* %14, align 8
  %434 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %435 = call i32 @bbr_update_bbr_info(%struct.tcp_bbr* %425, %struct.bbr_sendmap* %426, i32 0, i32 %427, i64 %430, i32 %431, i32 %432, i32 0, i64 %433, %struct.tcpopt* %434)
  br label %436

436:                                              ; preds = %424, %411
  store i32 1, i32* %8, align 4
  br label %438

437:                                              ; preds = %393
  store i32 0, i32* %8, align 4
  br label %438

438:                                              ; preds = %437, %436, %284, %126, %68, %40
  %439 = load i32, i32* %8, align 4
  ret i32 %439
}

declare dso_local i64 @TSTMP_GT(i32, i32) #1

declare dso_local i32 @bbr_update_bbr_info(%struct.tcp_bbr*, %struct.bbr_sendmap*, i32, i32, i64, i32, i32, i32, i64, %struct.tcpopt*) #1

declare dso_local i32 @tcp_tv_to_mssectick(i32*) #1

declare dso_local i32 @bbr_ts_convert(i64) #1

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i32 @bbr_earlier_retran(%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
