; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_update_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_update_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.tcp_rack = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.rack_sendmap = type { i32, i32, i32* }
%struct.tcpopt = type { i32, i32 }

@RACK_ACKED = common dso_local global i32 0, align 4
@CUM_ACKED = common dso_local global i64 0, align 8
@TOF_TS = common dso_local global i32 0, align 4
@RACK_TLP = common dso_local global i32 0, align 4
@CC_NDUPACK = common dso_local global i32 0, align 4
@RACK_OVERMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_rack*, %struct.rack_sendmap*, %struct.tcpopt*, i32, i64)* @rack_update_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_update_rtt(%struct.tcpcb* %0, %struct.tcp_rack* %1, %struct.rack_sendmap* %2, %struct.tcpopt* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca %struct.tcp_rack*, align 8
  %10 = alloca %struct.rack_sendmap*, align 8
  %11 = alloca %struct.tcpopt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %8, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %9, align 8
  store %struct.rack_sendmap* %2, %struct.rack_sendmap** %10, align 8
  store %struct.tcpopt* %3, %struct.tcpopt** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %17 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RACK_ACKED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %479

23:                                               ; preds = %6
  %24 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %25 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %59, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @CUM_ACKED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %207

32:                                               ; preds = %28
  %33 = load %struct.tcpopt*, %struct.tcpopt** %11, align 8
  %34 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TOF_TS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %207

39:                                               ; preds = %32
  %40 = load %struct.tcpopt*, %struct.tcpopt** %11, align 8
  %41 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %207

44:                                               ; preds = %39
  %45 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %46 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %49 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tcpopt*, %struct.tcpopt** %11, align 8
  %56 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %207

59:                                               ; preds = %44, %23
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %62 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %65 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %60, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %74, %59
  %76 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %77 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %92 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %99 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @SEQ_LT(i32 %97, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %96, %90
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %107 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %110 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %116 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %104
  br label %119

119:                                              ; preds = %118, %96
  %120 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @tcp_rack_xmit_timer(%struct.tcp_rack* %120, i32 %122)
  %124 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %125 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @RACK_TLP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %172

130:                                              ; preds = %119
  %131 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @IN_RECOVERY(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %172, label %136

136:                                              ; preds = %130
  %137 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %138 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %136
  %143 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %144 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %147 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 5
  store i32 %145, i32* %148, align 4
  %149 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %150 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %153 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  store i32 %151, i32* %154, align 8
  %155 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %156 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %159 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 4
  %161 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %162 = load i32, i32* @CC_NDUPACK, align 4
  %163 = call i32 @rack_cong_signal(%struct.tcpcb* %161, i32* null, i32 %162)
  %164 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %165 = call i32 @ctf_fixed_maxseg(%struct.tcpcb* %164)
  %166 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %167 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 8
  %169 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %170 = call i32 @rack_log_to_prr(%struct.tcp_rack* %169, i32 7)
  br label %171

171:                                              ; preds = %142, %136
  br label %172

172:                                              ; preds = %171, %130, %119
  %173 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %174 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %178 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %181 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @SEQ_LT(i32 %176, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %172
  %190 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %191 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %194 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %192, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %201 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %205 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %189, %172
  store i32 1, i32* %7, align 4
  br label %479

207:                                              ; preds = %44, %39, %32, %28
  %208 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %209 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %208, i32 0, i32 2
  store i64 0, i64* %209, align 8
  %210 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %211 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  %212 = load %struct.tcpopt*, %struct.tcpopt** %11, align 8
  %213 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @TOF_TS, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %363

218:                                              ; preds = %207
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* @CUM_ACKED, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %363

222:                                              ; preds = %218
  %223 = load %struct.tcpopt*, %struct.tcpopt** %11, align 8
  %224 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %363

227:                                              ; preds = %222
  %228 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %229 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @RACK_OVERMAX, align 4
  %232 = and i32 %230, %231
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %363

234:                                              ; preds = %227
  store i64 0, i64* %14, align 8
  br label %235

235:                                              ; preds = %359, %234
  %236 = load i64, i64* %14, align 8
  %237 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %238 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %236, %240
  br i1 %241, label %242, label %362

242:                                              ; preds = %235
  %243 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %244 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* %14, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.tcpopt*, %struct.tcpopt** %11, align 8
  %250 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %248, %251
  br i1 %252, label %253, label %358

253:                                              ; preds = %242
  %254 = load i32, i32* %12, align 4
  %255 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %256 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* %14, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %254, %260
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp sle i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %253
  store i32 1, i32* %15, align 4
  br label %265

265:                                              ; preds = %264, %253
  %266 = load i64, i64* %14, align 8
  %267 = add nsw i64 %266, 1
  %268 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %269 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = icmp slt i64 %267, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %265
  %274 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %275 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %12, align 4
  %278 = call i32 @rack_earlier_retran(%struct.tcpcb* %274, %struct.rack_sendmap* %275, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %273, %265
  %280 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %281 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %286 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %15, align 4
  %289 = icmp sgt i32 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %284, %279
  %291 = load i32, i32* %15, align 4
  %292 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %293 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %290, %284
  %295 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %296 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %294
  %301 = load i32, i32* %15, align 4
  %302 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %303 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i64 @SEQ_LT(i32 %301, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %300, %294
  %309 = load i32, i32* %15, align 4
  %310 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %311 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 0
  store i32 %309, i32* %312, align 8
  %313 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %314 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %308
  %319 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %320 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  store i32 1, i32* %321, align 8
  br label %322

322:                                              ; preds = %318, %308
  br label %323

323:                                              ; preds = %322, %300
  %324 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %325 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %329 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %332 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %330, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = call i64 @SEQ_LT(i32 %327, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %357

340:                                              ; preds = %323
  %341 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %342 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %345 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %343, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %352 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 1
  store i32 %350, i32* %353, align 4
  %354 = load i32, i32* %15, align 4
  %355 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %356 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %355, i32 0, i32 0
  store i32 %354, i32* %356, align 8
  br label %357

357:                                              ; preds = %340, %323
  store i32 1, i32* %7, align 4
  br label %479

358:                                              ; preds = %242
  br label %359

359:                                              ; preds = %358
  %360 = load i64, i64* %14, align 8
  %361 = add nsw i64 %360, 1
  store i64 %361, i64* %14, align 8
  br label %235

362:                                              ; preds = %235
  br label %364

363:                                              ; preds = %227, %222, %218, %207
  br label %364

364:                                              ; preds = %363, %362
  %365 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %366 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = sub nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %14, align 8
  %370 = load i32, i32* %12, align 4
  %371 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %372 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i64, i64* %14, align 8
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = sub nsw i32 %370, %376
  store i32 %377, i32* %15, align 4
  %378 = load i32, i32* %15, align 4
  %379 = icmp sle i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %364
  store i32 1, i32* %15, align 4
  br label %381

381:                                              ; preds = %380, %364
  %382 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %383 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %414

387:                                              ; preds = %381
  %388 = load i32, i32* %15, align 4
  %389 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %390 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i64 @SEQ_LT(i32 %388, i32 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %414

395:                                              ; preds = %387
  %396 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %397 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 %398, 2
  %400 = sext i32 %399 to i64
  store i64 %400, i64* %14, align 8
  %401 = load i32, i32* %12, align 4
  %402 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %403 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %402, i32 0, i32 2
  %404 = load i32*, i32** %403, align 8
  %405 = load i64, i64* %14, align 8
  %406 = getelementptr inbounds i32, i32* %404, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = sub nsw i32 %401, %407
  store i32 %408, i32* %15, align 4
  %409 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %410 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %411 = load i32, i32* %15, align 4
  %412 = load i32, i32* %12, align 4
  %413 = call i32 @rack_earlier_retran(%struct.tcpcb* %409, %struct.rack_sendmap* %410, i32 %411, i32 %412)
  br label %477

414:                                              ; preds = %387, %381
  %415 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %416 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %476

420:                                              ; preds = %414
  %421 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %422 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %434

426:                                              ; preds = %420
  %427 = load i32, i32* %15, align 4
  %428 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %429 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i64 @SEQ_LT(i32 %427, i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %449

434:                                              ; preds = %426, %420
  %435 = load i32, i32* %15, align 4
  %436 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %437 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %437, i32 0, i32 0
  store i32 %435, i32* %438, align 8
  %439 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %440 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %434
  %445 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %446 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i32 0, i32 0
  store i32 1, i32* %447, align 8
  br label %448

448:                                              ; preds = %444, %434
  br label %449

449:                                              ; preds = %448, %426
  %450 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %451 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %455 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %454, i32 0, i32 2
  %456 = load i32*, i32** %455, align 8
  %457 = load i64, i64* %14, align 8
  %458 = getelementptr inbounds i32, i32* %456, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = call i64 @SEQ_LT(i32 %453, i32 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %475

462:                                              ; preds = %449
  %463 = load %struct.rack_sendmap*, %struct.rack_sendmap** %10, align 8
  %464 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %463, i32 0, i32 2
  %465 = load i32*, i32** %464, align 8
  %466 = load i64, i64* %14, align 8
  %467 = getelementptr inbounds i32, i32* %465, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %470 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %470, i32 0, i32 1
  store i32 %468, i32* %471, align 4
  %472 = load i32, i32* %15, align 4
  %473 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %474 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %473, i32 0, i32 0
  store i32 %472, i32* %474, align 8
  br label %475

475:                                              ; preds = %462, %449
  store i32 1, i32* %7, align 4
  br label %479

476:                                              ; preds = %414
  br label %477

477:                                              ; preds = %476, %395
  br label %478

478:                                              ; preds = %477
  store i32 0, i32* %7, align 4
  br label %479

479:                                              ; preds = %478, %475, %357, %206, %22
  %480 = load i32, i32* %7, align 4
  ret i32 %480
}

declare dso_local i64 @SEQ_LT(i32, i32) #1

declare dso_local i32 @tcp_rack_xmit_timer(%struct.tcp_rack*, i32) #1

declare dso_local i32 @IN_RECOVERY(i32) #1

declare dso_local i32 @rack_cong_signal(%struct.tcpcb*, i32*, i32) #1

declare dso_local i32 @ctf_fixed_maxseg(%struct.tcpcb*) #1

declare dso_local i32 @rack_log_to_prr(%struct.tcp_rack*, i32) #1

declare dso_local i32 @rack_earlier_retran(%struct.tcpcb*, %struct.rack_sendmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
