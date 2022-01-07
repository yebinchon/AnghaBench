; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_after_packet_dropped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_after_packet_dropped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.sctp_nets = type { i32, i64, i32, i32, i32, i32, i64 }
%struct.sctp_pktdrop_chunk = type { i32, i32 }

@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_SAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*, %struct.sctp_pktdrop_chunk*, i64*, i64*)* @sctp_cwnd_update_after_packet_dropped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cwnd_update_after_packet_dropped(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, %struct.sctp_pktdrop_chunk* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca %struct.sctp_pktdrop_chunk*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %7, align 8
  store %struct.sctp_pktdrop_chunk* %2, %struct.sctp_pktdrop_chunk** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %18 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %19 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %8, align 8
  %22 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohl(i32 %23)
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %8, align 8
  %27 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohl(i32 %28)
  %30 = load i64*, i64** %10, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %34 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %39 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %10, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %5
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %45, %48
  %50 = sdiv i32 %49, 1000000
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %56, %42
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %159

64:                                               ; preds = %59
  %65 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %66 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = sub nsw i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %73 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %79 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %82 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %77, %64
  %84 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %85 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %88 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = sdiv i64 %86, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i64*, i64** %10, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %96 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = sdiv i64 %94, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %14, align 4
  %103 = mul i32 %101, %102
  %104 = load i32, i32* %15, align 4
  %105 = udiv i32 %103, %104
  store i32 %105, i32* %16, align 4
  %106 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %107 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %111 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %109, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %83
  %115 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %116 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %120 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  store i32 0, i32* %16, align 4
  br label %132

128:                                              ; preds = %114
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %16, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %128, %127
  br label %133

133:                                              ; preds = %132, %83
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %136 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %140 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %143 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = icmp sle i32 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %133
  %147 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %148 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %151 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %146, %133
  %153 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %154 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %158 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  br label %197

159:                                              ; preds = %59
  %160 = load i64, i64* %11, align 8
  %161 = load i64*, i64** %10, align 8
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %160, %162
  %164 = ashr i64 %163, 2
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %12, align 4
  %166 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %167 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ugt i32 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %159
  %172 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %173 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %177 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = mul i32 %175, %178
  %180 = load i32, i32* %12, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %171
  %183 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %184 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %188 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = mul i32 %186, %189
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %182, %171, %159
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %194 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %191, %152
  %198 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %199 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %11, align 8
  %203 = icmp sgt i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = load i64, i64* %11, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %208 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %204, %197
  %210 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %211 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %214 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %209
  %218 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %219 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %222 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %217, %209
  %224 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %225 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %224, i32 0, i32 2
  %226 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %227 = call i32 @sctp_enforce_cwnd_limit(%struct.TYPE_4__* %225, %struct.sctp_nets* %226)
  %228 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %229 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sub nsw i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %277

234:                                              ; preds = %223
  %235 = load i32, i32* @sctp, align 4
  %236 = load i32, i32* @cwnd, align 4
  %237 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %238 = load i32, i32* @pd, align 4
  %239 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %240 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %244 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %243, i32 0, i32 1
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 16
  %249 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %250 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %248, %251
  %253 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %254 = load i32, i32* %13, align 4
  %255 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %256 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = call i32 @SDT_PROBE5(i32 %235, i32 %236, %struct.sctp_nets* %237, i32 %238, i32 %242, i32 %252, %struct.sctp_nets* %253, i32 %254, i64 %258)
  %260 = load i32, i32* @sctp_logging_level, align 4
  %261 = call i32 @SCTP_BASE_SYSCTL(i32 %260)
  %262 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %276

265:                                              ; preds = %234
  %266 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %267 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %268 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %269 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sub nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* @SCTP_CWND_LOG_FROM_SAT, align 4
  %275 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %266, %struct.sctp_nets* %267, i64 %273, i32 %274)
  br label %276

276:                                              ; preds = %265, %234
  br label %277

277:                                              ; preds = %276, %223
  ret void
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @sctp_enforce_cwnd_limit(%struct.TYPE_4__*, %struct.sctp_nets*) #1

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, %struct.sctp_nets*, i32, i64) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.sctp_nets*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
