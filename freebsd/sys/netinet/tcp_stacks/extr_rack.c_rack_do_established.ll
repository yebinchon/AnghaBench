; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_do_established.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_do_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i64 }
%struct.socket = type { i32 }
%struct.tcpcb = type { i64, i64, i32, i32, i64, i64, i32, i64 }
%struct.tcpopt = type { i32, i64 }
%struct.tcp_rack = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TOF_SACK = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i64 0, align 8
@TH_FIN = common dso_local global i64 0, align 8
@TH_RST = common dso_local global i64 0, align 8
@TH_URG = common dso_local global i64 0, align 8
@TH_ACK = common dso_local global i64 0, align 8
@TOF_TS = common dso_local global i32 0, align 4
@TF_NEEDSYN = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@BANDLIM_RST_OPENPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i64, i64, i32, i64, i64)* @rack_do_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_do_established(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, %struct.tcpopt* %4, i64 %5, i64 %6, i32 %7, i64 %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca %struct.socket*, align 8
  %15 = alloca %struct.tcpcb*, align 8
  %16 = alloca %struct.tcpopt*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.tcp_rack*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %12, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %13, align 8
  store %struct.socket* %2, %struct.socket** %14, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %15, align 8
  store %struct.tcpopt* %4, %struct.tcpopt** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %24 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %25 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TOF_SACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @__predict_true(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %10
  %34 = load i64, i64* %20, align 8
  %35 = load i64, i64* @TH_SYN, align 8
  %36 = load i64, i64* @TH_FIN, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @TH_RST, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @TH_URG, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @TH_ACK, align 8
  %43 = or i64 %41, %42
  %44 = and i64 %34, %43
  %45 = load i64, i64* @TH_ACK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @__predict_true(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %106

50:                                               ; preds = %33
  %51 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %52 = call i32 @SEGQ_EMPTY(%struct.tcpcb* %51)
  %53 = call i64 @__predict_true(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %106

55:                                               ; preds = %50
  %56 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %57 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @__predict_true(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %55
  %67 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %68 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.tcp_rack*
  store %struct.tcp_rack* %70, %struct.tcp_rack** %23, align 8
  %71 = load i64, i64* %18, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %75 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %76 = load %struct.socket*, %struct.socket** %14, align 8
  %77 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %78 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i64, i64* %21, align 8
  %83 = load %struct.tcp_rack*, %struct.tcp_rack** %23, align 8
  %84 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @rack_fastack(%struct.mbuf* %74, %struct.tcphdr* %75, %struct.socket* %76, %struct.tcpcb* %77, %struct.tcpopt* %78, i64 %79, i64 %80, i32 %81, i64 %82, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %326

90:                                               ; preds = %73
  br label %105

91:                                               ; preds = %66
  %92 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %93 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %94 = load %struct.socket*, %struct.socket** %14, align 8
  %95 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %96 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i64, i64* %21, align 8
  %101 = call i64 @rack_do_fastnewdata(%struct.mbuf* %92, %struct.tcphdr* %93, %struct.socket* %94, %struct.tcpcb* %95, %struct.tcpopt* %96, i64 %97, i64 %98, i32 %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 0, i32* %11, align 4
  br label %326

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %90
  br label %106

106:                                              ; preds = %105, %55, %50, %33, %10
  %107 = load %struct.socket*, %struct.socket** %14, align 8
  %108 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %109 = call i32 @ctf_calc_rwin(%struct.socket* %107, %struct.tcpcb* %108)
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* @TH_RST, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %106
  %115 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i64, i64* %20, align 8
  %121 = load i64, i64* @TH_FIN, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119, %106
  %125 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %126 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %127 = load %struct.socket*, %struct.socket** %14, align 8
  %128 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %129 = call i32 @ctf_process_rst(%struct.mbuf* %125, %struct.tcphdr* %126, %struct.socket* %127, %struct.tcpcb* %128)
  store i32 %129, i32* %11, align 4
  br label %326

130:                                              ; preds = %119, %114
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* @TH_SYN, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %137 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %138 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %139 = call i32 @ctf_challenge_ack(%struct.mbuf* %136, %struct.tcphdr* %137, %struct.tcpcb* %138, i64* %22)
  %140 = load i64, i64* %22, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %11, align 4
  br label %326

142:                                              ; preds = %130
  %143 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %144 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TOF_TS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %142
  %150 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %151 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %149
  %155 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %156 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %159 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @TSTMP_LT(i64 %157, i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %154
  %164 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %165 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %166 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %167 = load i64, i64* %18, align 8
  %168 = load i64, i64* %20, align 8
  %169 = call i64 @ctf_ts_check(%struct.mbuf* %164, %struct.tcphdr* %165, %struct.tcpcb* %166, i64 %167, i64 %168, i64* %22)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = load i64, i64* %22, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %11, align 4
  br label %326

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174, %154, %149, %142
  %176 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %177 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %178 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %179 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %180 = call i64 @ctf_drop_checks(%struct.tcpopt* %176, %struct.mbuf* %177, %struct.tcphdr* %178, %struct.tcpcb* %179, i64* %18, i64* %20, i64* %17, i64* %22)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load i64, i64* %22, align 8
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %11, align 4
  br label %326

185:                                              ; preds = %175
  %186 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %187 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @TOF_TS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %230

192:                                              ; preds = %185
  %193 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %194 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %197 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @SEQ_LEQ(i64 %195, i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %230

201:                                              ; preds = %192
  %202 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %203 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %206 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %18, align 8
  %209 = add nsw i64 %207, %208
  %210 = load i64, i64* %20, align 8
  %211 = load i64, i64* @TH_SYN, align 8
  %212 = load i64, i64* @TH_FIN, align 8
  %213 = or i64 %211, %212
  %214 = and i64 %210, %213
  %215 = icmp ne i64 %214, 0
  %216 = zext i1 %215 to i32
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %209, %217
  %219 = call i64 @SEQ_LEQ(i64 %204, i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %201
  %222 = call i32 (...) @tcp_ts_getticks()
  %223 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %224 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %226 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %229 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %228, i32 0, i32 5
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %221, %201, %192, %185
  %231 = load i64, i64* %20, align 8
  %232 = load i64, i64* @TH_ACK, align 8
  %233 = and i64 %231, %232
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %279

235:                                              ; preds = %230
  %236 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %237 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @TF_NEEDSYN, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %235
  %243 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %244 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %245 = load %struct.socket*, %struct.socket** %14, align 8
  %246 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %247 = load i64, i64* %17, align 8
  %248 = load i64, i64* %18, align 8
  %249 = load i32, i32* %19, align 4
  %250 = load i64, i64* %20, align 8
  %251 = load i64, i64* %21, align 8
  %252 = call i32 @rack_process_data(%struct.mbuf* %243, %struct.tcphdr* %244, %struct.socket* %245, %struct.tcpcb* %246, i64 %247, i64 %248, i32 %249, i64 %250, i64 %251)
  store i32 %252, i32* %11, align 4
  br label %326

253:                                              ; preds = %235
  %254 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %255 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @TF_ACKNOW, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %253
  %261 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %262 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %263 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %264 = load i64, i64* %20, align 8
  %265 = load i64, i64* %18, align 8
  %266 = call i32 @ctf_do_dropafterack(%struct.mbuf* %261, %struct.tcpcb* %262, %struct.tcphdr* %263, i64 %264, i64 %265, i64* %22)
  %267 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %268 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = inttoptr i64 %269 to %struct.tcp_rack*
  %271 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  %274 = load i64, i64* %22, align 8
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %11, align 4
  br label %326

276:                                              ; preds = %253
  %277 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %278 = call i32 @ctf_do_drop(%struct.mbuf* %277, i32* null)
  store i32 0, i32* %11, align 4
  br label %326

279:                                              ; preds = %230
  %280 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %281 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %282 = load %struct.socket*, %struct.socket** %14, align 8
  %283 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %284 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %285 = load i32, i32* %19, align 4
  %286 = load i64, i64* %18, align 8
  %287 = load i64, i64* %20, align 8
  %288 = call i64 @rack_process_ack(%struct.mbuf* %280, %struct.tcphdr* %281, %struct.socket* %282, %struct.tcpcb* %283, %struct.tcpopt* %284, i32 %285, i64 %286, i32* null, i64 %287, i64* %22)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %279
  %291 = load i64, i64* %22, align 8
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %11, align 4
  br label %326

293:                                              ; preds = %279
  %294 = load %struct.socket*, %struct.socket** %14, align 8
  %295 = getelementptr inbounds %struct.socket, %struct.socket* %294, i32 0, i32 0
  %296 = call i64 @sbavail(i32* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %315

298:                                              ; preds = %293
  %299 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %300 = call i64 @rack_progress_timeout_check(%struct.tcpcb* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %298
  %303 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %304 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @ETIMEDOUT, align 4
  %307 = call i32 @tcp_set_inp_to_drop(i32 %305, i32 %306)
  %308 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %309 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %310 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %311 = load i32, i32* @BANDLIM_RST_OPENPORT, align 4
  %312 = load i64, i64* %18, align 8
  %313 = call i32 @ctf_do_dropwithreset(%struct.mbuf* %308, %struct.tcpcb* %309, %struct.tcphdr* %310, i32 %311, i64 %312)
  store i32 1, i32* %11, align 4
  br label %326

314:                                              ; preds = %298
  br label %315

315:                                              ; preds = %314, %293
  %316 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %317 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %318 = load %struct.socket*, %struct.socket** %14, align 8
  %319 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %320 = load i64, i64* %17, align 8
  %321 = load i64, i64* %18, align 8
  %322 = load i32, i32* %19, align 4
  %323 = load i64, i64* %20, align 8
  %324 = load i64, i64* %21, align 8
  %325 = call i32 @rack_process_data(%struct.mbuf* %316, %struct.tcphdr* %317, %struct.socket* %318, %struct.tcpcb* %319, i64 %320, i64 %321, i32 %322, i64 %323, i64 %324)
  store i32 %325, i32* %11, align 4
  br label %326

326:                                              ; preds = %315, %302, %290, %276, %260, %242, %182, %171, %135, %124, %103, %89
  %327 = load i32, i32* %11, align 4
  ret i32 %327
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @SEGQ_EMPTY(%struct.tcpcb*) #1

declare dso_local i64 @rack_fastack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i64, i64, i32, i64, i32) #1

declare dso_local i64 @rack_do_fastnewdata(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i64, i64, i32, i64) #1

declare dso_local i32 @ctf_calc_rwin(%struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_process_rst(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_challenge_ack(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i64*) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i64 @ctf_ts_check(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i64, i64, i64*) #1

declare dso_local i64 @ctf_drop_checks(%struct.tcpopt*, %struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @SEQ_LEQ(i64, i64) #1

declare dso_local i32 @tcp_ts_getticks(...) #1

declare dso_local i32 @rack_process_data(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i64, i64, i32, i64, i64) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i64, i64, i64*) #1

declare dso_local i32 @ctf_do_drop(%struct.mbuf*, i32*) #1

declare dso_local i64 @rack_process_ack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i64, i32*, i64, i64*) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @rack_progress_timeout_check(%struct.tcpcb*) #1

declare dso_local i32 @tcp_set_inp_to_drop(i32, i32) #1

declare dso_local i32 @ctf_do_dropwithreset(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
