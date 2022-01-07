; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_ack_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_ack_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i64, i64, i32, i64, i32, i32 }
%struct.tcp_bbr = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i64, i64, i64, i32 }
%struct.tcphdr = type { i64 }

@BBR_STATE_PROBE_RTT = common dso_local global i64 0, align 8
@BBR_RTT_PROP = common dso_local global i32 0, align 4
@bbr_cwnd_may_shrink = common dso_local global i64 0, align 8
@TF_GPUTINPROG = common dso_local global i32 0, align 4
@VOI_TCP_GPUT = common dso_local global i32 0, align 4
@VOI_TCP_GPUT_ND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_bbr*, %struct.tcphdr*, i64, i64, i64, i32, i64)* @bbr_ack_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_ack_received(%struct.tcpcb* %0, %struct.tcp_bbr* %1, %struct.tcphdr* %2, i64 %3, i64 %4, i64 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.tcpcb*, align 8
  %10 = alloca %struct.tcp_bbr*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %9, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %10, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %26 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @INP_WLOCK_ASSERT(i32 %28)
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BBR_STATE_PROBE_RTT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %8
  %36 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %37 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %35
  br label %340

47:                                               ; preds = %41, %8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %21, align 8
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %20, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %47
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %12, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %21, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i64, i64* %21, align 8
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %74, %69, %62
  br label %78

77:                                               ; preds = %47
  store i64 0, i64* %12, align 8
  br label %78

78:                                               ; preds = %77, %76
  %79 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %18, align 8
  %82 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %83 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 7
  %85 = call i64 @get_filter_value(i32* %84)
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %17, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %92 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @bbr_get_target_cwnd(%struct.tcp_bbr* %89, i64 %90, i64 %94)
  store i64 %95, i64* %19, align 8
  br label %102

96:                                               ; preds = %78
  %97 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %98 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %99 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @bbr_initial_cwnd(%struct.tcp_bbr* %97, i32 %100)
  store i64 %101, i64* %19, align 8
  br label %102

102:                                              ; preds = %96, %88
  %103 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @IN_RECOVERY(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %102
  %109 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %110 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %108
  %114 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %115 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %114, i32 0, i32 4
  store i32 1, i32* %115, align 4
  %116 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %117 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %121 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  %123 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %124 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %125 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %129 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %127, %131
  %133 = call i64 @ctf_flight_size(%struct.tcpcb* %123, i64 %132)
  %134 = load i64, i64* %12, align 8
  %135 = add nsw i64 %133, %134
  store i64 %135, i64* %18, align 8
  br label %136

136:                                              ; preds = %113, %108, %102
  %137 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %138 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @IN_RECOVERY(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %247

142:                                              ; preds = %136
  %143 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %144 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %143, i32 0, i32 3
  store i32 1, i32* %144, align 8
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %16, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* %18, align 8
  %151 = sub nsw i64 %150, %149
  store i64 %151, i64* %18, align 8
  %152 = load i64, i64* %18, align 8
  %153 = load i64, i64* %21, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i64, i64* %21, align 8
  store i64 %156, i64* %18, align 8
  br label %157

157:                                              ; preds = %155, %148
  br label %160

158:                                              ; preds = %142
  %159 = load i64, i64* %21, align 8
  store i64 %159, i64* %18, align 8
  br label %160

160:                                              ; preds = %158, %157
  %161 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %162 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %163 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %162, i32 0, i32 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %167 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %165, %169
  %171 = call i64 @ctf_flight_size(%struct.tcpcb* %161, i64 %170)
  store i64 %171, i64* %23, align 8
  %172 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %173 = load i64, i64* %23, align 8
  %174 = load i64, i64* %16, align 8
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @bbr_log_type_cwndupd(%struct.tcp_bbr* %172, i64 %173, i64 0, i64 %174, i32 10, i64 0, i64 0, i32 %175)
  %177 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %178 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %246

181:                                              ; preds = %160
  %182 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %183 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %182, i32 0, i32 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %187 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @TSTMP_GEQ(i32 %185, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %181
  %193 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %194 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %198 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %197, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %196, %200
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %24, align 8
  br label %204

203:                                              ; preds = %181
  store i64 0, i64* %24, align 8
  br label %204

204:                                              ; preds = %203, %192
  %205 = load i64, i64* %24, align 8
  %206 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %207 = load i32, i32* @BBR_RTT_PROP, align 4
  %208 = call i64 @bbr_get_rtt(%struct.tcp_bbr* %206, i32 %207)
  %209 = icmp sge i64 %205, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %212 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %211, i32 0, i32 4
  store i32 0, i32* %212, align 4
  br label %245

213:                                              ; preds = %204
  %214 = load i64, i64* %23, align 8
  %215 = load i64, i64* %12, align 8
  %216 = add nsw i64 %214, %215
  %217 = load i64, i64* %18, align 8
  %218 = icmp sgt i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load i64, i64* %23, align 8
  %221 = load i64, i64* %12, align 8
  %222 = add nsw i64 %220, %221
  store i64 %222, i64* %18, align 8
  br label %223

223:                                              ; preds = %219, %213
  %224 = load i64, i64* %18, align 8
  %225 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %226 = call i64 @get_min_cwnd(%struct.tcp_bbr* %225)
  %227 = icmp slt i64 %224, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %230 = call i64 @get_min_cwnd(%struct.tcp_bbr* %229)
  store i64 %230, i64* %18, align 8
  br label %231

231:                                              ; preds = %228, %223
  %232 = load i64, i64* %18, align 8
  %233 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %234 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %233, i32 0, i32 4
  store i64 %232, i64* %234, align 8
  %235 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %236 = load i64, i64* %20, align 8
  %237 = load i64, i64* %13, align 8
  %238 = load i64, i64* %14, align 8
  %239 = load i64, i64* %19, align 8
  %240 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %241 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = call i32 @bbr_log_type_cwndupd(%struct.tcp_bbr* %235, i64 %236, i64 %237, i64 %238, i32 1, i64 %239, i64 %242, i32 %243)
  br label %340

245:                                              ; preds = %210
  br label %246

246:                                              ; preds = %245, %160
  br label %250

247:                                              ; preds = %136
  %248 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %249 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %248, i32 0, i32 3
  store i32 0, i32* %249, align 8
  br label %250

250:                                              ; preds = %247, %246
  %251 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %252 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %250
  %256 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %257 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %256, i32 0, i32 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %255
  %262 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %263 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %262, i32 0, i32 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, -1
  store i64 %266, i64* %264, align 8
  %267 = load i64, i64* %12, align 8
  %268 = load i64, i64* %21, align 8
  %269 = icmp sgt i64 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %261
  %271 = load i64, i64* %21, align 8
  store i64 %271, i64* %12, align 8
  br label %272

272:                                              ; preds = %270, %261
  br label %273

273:                                              ; preds = %272, %255, %250
  %274 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %275 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %306

278:                                              ; preds = %273
  store i32 2, i32* %22, align 4
  %279 = load i64, i64* %18, align 8
  %280 = load i64, i64* %12, align 8
  %281 = add nsw i64 %279, %280
  %282 = load i64, i64* %19, align 8
  %283 = call i64 @min(i64 %281, i64 %282)
  store i64 %283, i64* %25, align 8
  %284 = load i64, i64* %25, align 8
  %285 = load i64, i64* %18, align 8
  %286 = icmp sgt i64 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %278
  %288 = load i64, i64* %25, align 8
  store i64 %288, i64* %18, align 8
  br label %305

289:                                              ; preds = %278
  %290 = load i64, i64* @bbr_cwnd_may_shrink, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %302, label %292

292:                                              ; preds = %289
  %293 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %294 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %292
  %298 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %299 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %298, i32 0, i32 6
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %297, %292, %289
  %303 = load i64, i64* %25, align 8
  store i64 %303, i64* %18, align 8
  br label %304

304:                                              ; preds = %302, %297
  br label %305

305:                                              ; preds = %304, %287
  br label %321

306:                                              ; preds = %273
  %307 = load i64, i64* %18, align 8
  %308 = load i64, i64* %19, align 8
  %309 = icmp slt i64 %307, %308
  br i1 %309, label %315, label %310

310:                                              ; preds = %306
  %311 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %312 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %311, i32 0, i32 5
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %310, %306
  store i32 3, i32* %22, align 4
  %316 = load i64, i64* %12, align 8
  %317 = load i64, i64* %18, align 8
  %318 = add nsw i64 %317, %316
  store i64 %318, i64* %18, align 8
  br label %320

319:                                              ; preds = %310
  store i32 4, i32* %22, align 4
  br label %320

320:                                              ; preds = %319, %315
  br label %321

321:                                              ; preds = %320, %305
  %322 = load i64, i64* %18, align 8
  %323 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %324 = call i64 @get_min_cwnd(%struct.tcp_bbr* %323)
  %325 = call i8* @max(i64 %322, i64 %324)
  %326 = ptrtoint i8* %325 to i64
  %327 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %328 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %327, i32 0, i32 4
  store i64 %326, i64* %328, align 8
  %329 = load %struct.tcp_bbr*, %struct.tcp_bbr** %10, align 8
  %330 = load i64, i64* %20, align 8
  %331 = load i64, i64* %13, align 8
  %332 = load i64, i64* %14, align 8
  %333 = load i32, i32* %22, align 4
  %334 = load i64, i64* %19, align 8
  %335 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %336 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = call i32 @bbr_log_type_cwndupd(%struct.tcp_bbr* %329, i64 %330, i64 %331, i64 %332, i32 %333, i64 %334, i64 %337, i32 %338)
  br label %340

340:                                              ; preds = %321, %231, %46
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i64 @get_filter_value(i32*) #1

declare dso_local i64 @bbr_get_target_cwnd(%struct.tcp_bbr*, i64, i64) #1

declare dso_local i64 @bbr_initial_cwnd(%struct.tcp_bbr*, i32) #1

declare dso_local i64 @IN_RECOVERY(i32) #1

declare dso_local i64 @ctf_flight_size(%struct.tcpcb*, i64) #1

declare dso_local i32 @bbr_log_type_cwndupd(%struct.tcp_bbr*, i64, i64, i64, i32, i64, i64, i32) #1

declare dso_local i64 @TSTMP_GEQ(i32, i32) #1

declare dso_local i64 @bbr_get_rtt(%struct.tcp_bbr*, i32) #1

declare dso_local i64 @get_min_cwnd(%struct.tcp_bbr*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
