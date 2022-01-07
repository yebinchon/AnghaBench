; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_condense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_condense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.lro_ctrl = type { i64, i64 }
%struct.lro_entry = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_4__*, i32, i32, i64, i64, %struct.mbuf* }
%struct.TYPE_4__ = type { %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_3__, %struct.mbuf* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.tcphdr = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"le:%p m:%p th comes back NULL?\00", align 1
@TCPOLEN_TSTAMP_APPA = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@TH_PUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.lro_ctrl*, %struct.lro_entry*, i32)* @tcp_lro_condense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lro_condense(%struct.tcpcb* %0, %struct.lro_ctrl* %1, %struct.lro_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.lro_ctrl*, align 8
  %7 = alloca %struct.lro_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.lro_ctrl* %1, %struct.lro_ctrl** %6, align 8
  store %struct.lro_entry* %2, %struct.lro_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %16

16:                                               ; preds = %363, %289, %268, %251, %218, %188, %100, %76, %4
  %17 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %18 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %17, i32 0, i32 11
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 1
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %21, %struct.mbuf** %10, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %521

25:                                               ; preds = %16
  %26 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %27 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %28 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %27, i32 0, i32 11
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  %30 = call %struct.tcphdr* @tcp_lro_get_th(%struct.lro_entry* %26, %struct.mbuf* %29)
  store %struct.tcphdr* %30, %struct.tcphdr** %11, align 8
  %31 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %32 = icmp ne %struct.tcphdr* %31, null
  %33 = zext i1 %32 to i32
  %34 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %35 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %36 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %35, i32 0, i32 11
  %37 = load %struct.mbuf*, %struct.mbuf** %36, align 8
  %38 = bitcast %struct.mbuf* %37 to i8*
  %39 = call i32 @KASSERT(i32 %33, i8* %38)
  %40 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %41 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 2
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 %45, 32
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %49 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %48, i64 1
  %50 = bitcast %struct.tcphdr* %49 to i64*
  store i64* %50, i64** %9, align 8
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %25
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @TCPOLEN_TSTAMP_APPA, align 4
  %56 = icmp ne i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @__predict_false(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %53
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @TCPOPT_NOP, align 4
  %64 = shl i32 %63, 24
  %65 = load i32, i32* @TCPOPT_NOP, align 4
  %66 = shl i32 %65, 16
  %67 = or i32 %64, %66
  %68 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %69 = shl i32 %68, 8
  %70 = or i32 %67, %69
  %71 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %72 = or i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = call i64 @ntohl(i64 %73)
  %75 = icmp ne i64 %62, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %60, %53
  %77 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  %79 = load %struct.mbuf*, %struct.mbuf** %78, align 8
  %80 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %81 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %80, i32 0, i32 11
  %82 = load %struct.mbuf*, %struct.mbuf** %81, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 1
  store %struct.mbuf* %79, %struct.mbuf** %83, align 8
  %84 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %85 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %86 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @tcp_push_and_replace(%struct.tcpcb* %84, %struct.lro_ctrl* %85, %struct.lro_entry* %86, %struct.mbuf* %87, i32 %88)
  br label %16

90:                                               ; preds = %60, %25
  %91 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %92 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TH_ACK, align 4
  %95 = load i32, i32* @TH_PUSH, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = and i32 %93, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %90
  %101 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %101, i32 0, i32 1
  %103 = load %struct.mbuf*, %struct.mbuf** %102, align 8
  %104 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %105 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %104, i32 0, i32 11
  %106 = load %struct.mbuf*, %struct.mbuf** %105, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 1
  store %struct.mbuf* %103, %struct.mbuf** %107, align 8
  %108 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %109 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %110 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %111 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @tcp_push_and_replace(%struct.tcpcb* %108, %struct.lro_ctrl* %109, %struct.lro_entry* %110, %struct.mbuf* %111, i32 %112)
  br label %16

114:                                              ; preds = %90
  br label %115

115:                                              ; preds = %509, %462, %114
  %116 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %117 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %116, i32 0, i32 11
  %118 = load %struct.mbuf*, %struct.mbuf** %117, align 8
  %119 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %118, i32 0, i32 1
  %120 = load %struct.mbuf*, %struct.mbuf** %119, align 8
  store %struct.mbuf* %120, %struct.mbuf** %10, align 8
  %121 = icmp ne %struct.mbuf* %120, null
  br i1 %121, label %122, label %521

122:                                              ; preds = %115
  %123 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 1
  %125 = load %struct.mbuf*, %struct.mbuf** %124, align 8
  %126 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %127 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %126, i32 0, i32 11
  %128 = load %struct.mbuf*, %struct.mbuf** %127, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 1
  store %struct.mbuf* %125, %struct.mbuf** %129, align 8
  %130 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %131, align 8
  %132 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %133 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %12, align 8
  %136 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %137 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %138 = call %struct.tcphdr* @tcp_lro_get_th(%struct.lro_entry* %136, %struct.mbuf* %137)
  store %struct.tcphdr* %138, %struct.tcphdr** %11, align 8
  %139 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %140 = icmp ne %struct.tcphdr* %139, null
  %141 = zext i1 %140 to i32
  %142 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %143 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %144 = bitcast %struct.mbuf* %143 to i8*
  %145 = call i32 @KASSERT(i32 %141, i8* %144)
  %146 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %147 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %146, i64 1
  %148 = bitcast %struct.tcphdr* %147 to i64*
  store i64* %148, i64** %9, align 8
  %149 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %150 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = shl i32 %151, 2
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 %154, 32
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %14, align 4
  %157 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %158 = icmp ne %struct.tcpcb* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %122
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %164 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %165 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %166 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %167 = call i32 @tcp_lro_log(%struct.tcpcb* %163, %struct.lro_ctrl* %164, %struct.lro_entry* %165, %struct.mbuf* %166, i32 1, i64 0, i64 0, i64 0, i64 0)
  br label %168

168:                                              ; preds = %162, %159, %122
  %169 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %170 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %173 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp sge i64 %171, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %168
  %177 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %178 = icmp ne %struct.tcpcb* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %184 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %185 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %186 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %187 = call i32 @tcp_lro_log(%struct.tcpcb* %183, %struct.lro_ctrl* %184, %struct.lro_entry* %185, %struct.mbuf* %186, i32 2, i64 0, i64 0, i64 0, i64 0)
  br label %188

188:                                              ; preds = %182, %179, %176
  %189 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %190 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %191 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %192 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @tcp_push_and_replace(%struct.tcpcb* %189, %struct.lro_ctrl* %190, %struct.lro_entry* %191, %struct.mbuf* %192, i32 %193)
  br label %16

195:                                              ; preds = %168
  %196 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %197 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %200 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %12, align 8
  %203 = sub nsw i64 %201, %202
  %204 = icmp sgt i64 %198, %203
  br i1 %204, label %205, label %225

205:                                              ; preds = %195
  %206 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %207 = icmp ne %struct.tcpcb* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %213 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %214 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %215 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %216 = load i64, i64* %12, align 8
  %217 = call i32 @tcp_lro_log(%struct.tcpcb* %212, %struct.lro_ctrl* %213, %struct.lro_entry* %214, %struct.mbuf* %215, i32 3, i64 %216, i64 0, i64 0, i64 0)
  br label %218

218:                                              ; preds = %211, %208, %205
  %219 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %220 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %221 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %222 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @tcp_push_and_replace(%struct.tcpcb* %219, %struct.lro_ctrl* %220, %struct.lro_entry* %221, %struct.mbuf* %222, i32 %223)
  br label %16

225:                                              ; preds = %195
  %226 = load i32, i32* %14, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %258

228:                                              ; preds = %225
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* @TCPOLEN_TSTAMP_APPA, align 4
  %231 = icmp ne i32 %229, %230
  %232 = zext i1 %231 to i32
  %233 = call i64 @__predict_false(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %251, label %235

235:                                              ; preds = %228
  %236 = load i64*, i64** %9, align 8
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* @TCPOPT_NOP, align 4
  %239 = shl i32 %238, 24
  %240 = load i32, i32* @TCPOPT_NOP, align 4
  %241 = shl i32 %240, 16
  %242 = or i32 %239, %241
  %243 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %244 = shl i32 %243, 8
  %245 = or i32 %242, %244
  %246 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %247 = or i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = call i64 @ntohl(i64 %248)
  %250 = icmp ne i64 %237, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %235, %228
  %252 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %253 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %254 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %255 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @tcp_push_and_replace(%struct.tcpcb* %252, %struct.lro_ctrl* %253, %struct.lro_entry* %254, %struct.mbuf* %255, i32 %256)
  br label %16

258:                                              ; preds = %235, %225
  %259 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %260 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @TH_ACK, align 4
  %263 = load i32, i32* @TH_PUSH, align 4
  %264 = or i32 %262, %263
  %265 = xor i32 %264, -1
  %266 = and i32 %261, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %258
  %269 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %270 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %271 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %272 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @tcp_push_and_replace(%struct.tcpcb* %269, %struct.lro_ctrl* %270, %struct.lro_entry* %271, %struct.mbuf* %272, i32 %273)
  br label %16

275:                                              ; preds = %258
  %276 = load i32, i32* %14, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %305

278:                                              ; preds = %275
  %279 = load i64*, i64** %9, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 1
  %281 = load i64, i64* %280, align 8
  %282 = call i64 @ntohl(i64 %281)
  store i64 %282, i64* %15, align 8
  %283 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %284 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %283, i32 0, i32 10
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* %15, align 8
  %287 = call i64 @TSTMP_GT(i64 %285, i64 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %278
  %290 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %291 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %292 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %293 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @tcp_push_and_replace(%struct.tcpcb* %290, %struct.lro_ctrl* %291, %struct.lro_entry* %292, %struct.mbuf* %293, i32 %294)
  br label %16

296:                                              ; preds = %278
  %297 = load i64, i64* %15, align 8
  %298 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %299 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %298, i32 0, i32 10
  store i64 %297, i64* %299, align 8
  %300 = load i64*, i64** %9, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 2
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %304 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %303, i32 0, i32 9
  store i64 %302, i64* %304, align 8
  br label %305

305:                                              ; preds = %296, %275
  %306 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %307 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = call i64 @ntohl(i64 %308)
  %310 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %311 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %309, %312
  br i1 %313, label %335, label %314

314:                                              ; preds = %305
  %315 = load i64, i64* %12, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %333

317:                                              ; preds = %314
  %318 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %319 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %322 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = icmp eq i64 %320, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %317
  %326 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %327 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %326, i32 0, i32 4
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %330 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = icmp eq i64 %328, %331
  br label %333

333:                                              ; preds = %325, %317, %314
  %334 = phi i1 [ false, %317 ], [ false, %314 ], [ %332, %325 ]
  br label %335

335:                                              ; preds = %333, %305
  %336 = phi i1 [ true, %305 ], [ %334, %333 ]
  %337 = zext i1 %336 to i32
  %338 = call i64 @__predict_false(i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %370

340:                                              ; preds = %335
  %341 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %342 = icmp ne %struct.tcpcb* %341, null
  br i1 %342, label %343, label %363

343:                                              ; preds = %340
  %344 = load i32, i32* %8, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %363

346:                                              ; preds = %343
  %347 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %348 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %349 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %350 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %351 = load i64, i64* %12, align 8
  %352 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %353 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = call i64 @ntohl(i64 %354)
  %356 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %357 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %360 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @tcp_lro_log(%struct.tcpcb* %347, %struct.lro_ctrl* %348, %struct.lro_entry* %349, %struct.mbuf* %350, i32 4, i64 %351, i64 %355, i64 %358, i64 %361)
  br label %363

363:                                              ; preds = %346, %343, %340
  %364 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %365 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %366 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %367 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %368 = load i32, i32* %8, align 4
  %369 = call i32 @tcp_push_and_replace(%struct.tcpcb* %364, %struct.lro_ctrl* %365, %struct.lro_entry* %366, %struct.mbuf* %367, i32 %368)
  br label %16

370:                                              ; preds = %335
  %371 = load i64, i64* %12, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %384, label %373

373:                                              ; preds = %370
  %374 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %375 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %374, i32 0, i32 3
  %376 = load i64, i64* %375, align 8
  %377 = call i64 @ntohl(i64 %376)
  %378 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %379 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = call i64 @ntohl(i64 %380)
  %382 = call i64 @SEQ_GT(i64 %377, i64 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %400

384:                                              ; preds = %373, %370
  %385 = load i64, i64* %12, align 8
  %386 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %387 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %386, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = add nsw i64 %388, %385
  store i64 %389, i64* %387, align 8
  %390 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %391 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %390, i32 0, i32 3
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %394 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %393, i32 0, i32 3
  store i64 %392, i64* %394, align 8
  %395 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %396 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %395, i32 0, i32 4
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %399 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %398, i32 0, i32 4
  store i64 %397, i64* %399, align 8
  br label %419

400:                                              ; preds = %373
  %401 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %402 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %401, i32 0, i32 3
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %405 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = icmp eq i64 %403, %406
  br i1 %407, label %408, label %418

408:                                              ; preds = %400
  %409 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %410 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %413 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %412, i32 0, i32 4
  %414 = load i64, i64* %413, align 8
  %415 = call i64 @WIN_MAX(i64 %411, i64 %414)
  %416 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %417 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %416, i32 0, i32 4
  store i64 %415, i64* %417, align 8
  br label %418

418:                                              ; preds = %408, %400
  br label %419

419:                                              ; preds = %418, %384
  %420 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %421 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %13, align 8
  %424 = load i64, i64* %13, align 8
  %425 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %426 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %425, i32 0, i32 5
  %427 = load i64, i64* %426, align 8
  %428 = add nsw i64 %427, %424
  store i64 %428, i64* %426, align 8
  %429 = load i64, i64* %12, align 8
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %465

431:                                              ; preds = %419
  %432 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %433 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = add nsw i64 %434, 1
  store i64 %435, i64* %433, align 8
  %436 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %437 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %436, i32 0, i32 8
  %438 = load i32, i32* %437, align 4
  %439 = add nsw i32 %438, -1
  store i32 %439, i32* %437, align 4
  %440 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %441 = icmp ne %struct.tcpcb* %440, null
  br i1 %441, label %442, label %462

442:                                              ; preds = %431
  %443 = load i32, i32* %8, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %462

445:                                              ; preds = %442
  %446 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %447 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %448 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %449 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %450 = load i64, i64* %12, align 8
  %451 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %452 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %451, i32 0, i32 2
  %453 = load i64, i64* %452, align 8
  %454 = call i64 @ntohl(i64 %453)
  %455 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %456 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %459 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %458, i32 0, i32 4
  %460 = load i64, i64* %459, align 8
  %461 = call i32 @tcp_lro_log(%struct.tcpcb* %446, %struct.lro_ctrl* %447, %struct.lro_entry* %448, %struct.mbuf* %449, i32 5, i64 %450, i64 %454, i64 %457, i64 %460)
  br label %462

462:                                              ; preds = %445, %442, %431
  %463 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %464 = call i32 @m_freem(%struct.mbuf* %463)
  br label %115

465:                                              ; preds = %419
  %466 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %467 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = add nsw i64 %468, 1
  store i64 %469, i64* %467, align 8
  %470 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %471 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %470, i32 0, i32 7
  %472 = load i32, i32* %471, align 8
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %471, align 8
  %474 = load i64, i64* %12, align 8
  %475 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %476 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = add nsw i64 %477, %474
  store i64 %478, i64* %476, align 8
  %479 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %480 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %481 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %481, i32 0, i32 2
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* %12, align 8
  %485 = sub nsw i64 %483, %484
  %486 = call i32 @m_adj(%struct.mbuf* %479, i64 %485)
  %487 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %488 = icmp ne %struct.tcpcb* %487, null
  br i1 %488, label %489, label %509

489:                                              ; preds = %465
  %490 = load i32, i32* %8, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %509

492:                                              ; preds = %489
  %493 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %494 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %495 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %496 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %497 = load i64, i64* %12, align 8
  %498 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %499 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %498, i32 0, i32 2
  %500 = load i64, i64* %499, align 8
  %501 = call i64 @ntohl(i64 %500)
  %502 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %503 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %502, i32 0, i32 3
  %504 = load i64, i64* %503, align 8
  %505 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %506 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %505, i32 0, i32 4
  %507 = load i64, i64* %506, align 8
  %508 = call i32 @tcp_lro_log(%struct.tcpcb* %493, %struct.lro_ctrl* %494, %struct.lro_entry* %495, %struct.mbuf* %496, i32 6, i64 %497, i64 %501, i64 %504, i64 %507)
  br label %509

509:                                              ; preds = %492, %489, %465
  %510 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %511 = call i32 @m_demote_pkthdr(%struct.mbuf* %510)
  %512 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %513 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %514 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %513, i32 0, i32 6
  %515 = load %struct.TYPE_4__*, %struct.TYPE_4__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %515, i32 0, i32 0
  store %struct.mbuf* %512, %struct.mbuf** %516, align 8
  %517 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %518 = call %struct.TYPE_4__* @m_last(%struct.mbuf* %517)
  %519 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %520 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %519, i32 0, i32 6
  store %struct.TYPE_4__* %518, %struct.TYPE_4__** %520, align 8
  br label %115

521:                                              ; preds = %24, %115
  ret void
}

declare dso_local %struct.tcphdr* @tcp_lro_get_th(%struct.lro_entry*, %struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @tcp_push_and_replace(%struct.tcpcb*, %struct.lro_ctrl*, %struct.lro_entry*, %struct.mbuf*, i32) #1

declare dso_local i32 @tcp_lro_log(%struct.tcpcb*, %struct.lro_ctrl*, %struct.lro_entry*, %struct.mbuf*, i32, i64, i64, i64, i64) #1

declare dso_local i64 @TSTMP_GT(i64, i64) #1

declare dso_local i64 @SEQ_GT(i64, i64) #1

declare dso_local i64 @WIN_MAX(i64, i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

declare dso_local i32 @m_demote_pkthdr(%struct.mbuf*) #1

declare dso_local %struct.TYPE_4__* @m_last(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
