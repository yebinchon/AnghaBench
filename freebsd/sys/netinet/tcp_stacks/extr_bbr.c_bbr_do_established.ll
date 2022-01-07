; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_established.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i64 }
%struct.socket = type { i32 }
%struct.tcpcb = type { i32, i64, i64, i32, i64, i32, i32, i64, i32, i64 }
%struct.tcpopt = type { i32, i64 }
%struct.tcp_bbr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TOF_SACK = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i64 0, align 8
@TH_FIN = common dso_local global i64 0, align 8
@TH_RST = common dso_local global i64 0, align 8
@TH_URG = common dso_local global i64 0, align 8
@TH_ACK = common dso_local global i64 0, align 8
@TOF_TS = common dso_local global i32 0, align 4
@TF_NEEDSYN = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@BANDLIM_RST_OPENPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i64, i64, i32, i64, i64)* @bbr_do_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_do_established(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, %struct.tcpopt* %4, i64 %5, i64 %6, i32 %7, i64 %8, i64 %9) #0 {
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
  %22 = alloca %struct.tcp_bbr*, align 8
  %23 = alloca i64, align 8
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
  %24 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.tcp_bbr*
  store %struct.tcp_bbr* %27, %struct.tcp_bbr** %22, align 8
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %22, align 8
  %29 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 4, %34
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %10
  %38 = load i32, i32* %19, align 4
  %39 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @max(i32 %38, i32 %41)
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %22, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %10
  %47 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %48 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TOF_SACK, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i64 @__predict_true(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %121

56:                                               ; preds = %46
  %57 = load i64, i64* %20, align 8
  %58 = load i64, i64* @TH_SYN, align 8
  %59 = load i64, i64* @TH_FIN, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* @TH_RST, align 8
  %62 = or i64 %60, %61
  %63 = load i64, i64* @TH_URG, align 8
  %64 = or i64 %62, %63
  %65 = load i64, i64* @TH_ACK, align 8
  %66 = or i64 %64, %65
  %67 = and i64 %57, %66
  %68 = load i64, i64* @TH_ACK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @__predict_true(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %121

73:                                               ; preds = %56
  %74 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %75 = call i32 @SEGQ_EMPTY(%struct.tcpcb* %74)
  %76 = call i64 @__predict_true(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %121

78:                                               ; preds = %73
  %79 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %80 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @__predict_true(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %78
  %90 = load i64, i64* %18, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %94 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %95 = load %struct.socket*, %struct.socket** %14, align 8
  %96 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %97 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %18, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load i64, i64* %21, align 8
  %102 = call i64 @bbr_fastack(%struct.mbuf* %93, %struct.tcphdr* %94, %struct.socket* %95, %struct.tcpcb* %96, %struct.tcpopt* %97, i64 %98, i64 %99, i32 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  br label %337

105:                                              ; preds = %92
  br label %120

106:                                              ; preds = %89
  %107 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %108 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %109 = load %struct.socket*, %struct.socket** %14, align 8
  %110 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %111 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load i32, i32* %19, align 4
  %115 = load i64, i64* %21, align 8
  %116 = call i64 @bbr_do_fastnewdata(%struct.mbuf* %107, %struct.tcphdr* %108, %struct.socket* %109, %struct.tcpcb* %110, %struct.tcpopt* %111, i64 %112, i64 %113, i32 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %337

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %105
  br label %121

121:                                              ; preds = %120, %78, %73, %56, %46
  %122 = load %struct.socket*, %struct.socket** %14, align 8
  %123 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %124 = call i32 @ctf_calc_rwin(%struct.socket* %122, %struct.tcpcb* %123)
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* @TH_RST, align 8
  %127 = and i64 %125, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %121
  %130 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %131 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load i64, i64* %20, align 8
  %136 = load i64, i64* @TH_FIN, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134, %121
  %140 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %141 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %142 = load %struct.socket*, %struct.socket** %14, align 8
  %143 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %144 = call i32 @ctf_process_rst(%struct.mbuf* %140, %struct.tcphdr* %141, %struct.socket* %142, %struct.tcpcb* %143)
  store i32 %144, i32* %11, align 4
  br label %337

145:                                              ; preds = %134, %129
  %146 = load i64, i64* %20, align 8
  %147 = load i64, i64* @TH_SYN, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %152 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %153 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %154 = call i32 @ctf_challenge_ack(%struct.mbuf* %151, %struct.tcphdr* %152, %struct.tcpcb* %153, i64* %23)
  %155 = load i64, i64* %23, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %11, align 4
  br label %337

157:                                              ; preds = %145
  %158 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %159 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @TOF_TS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %190

164:                                              ; preds = %157
  %165 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %166 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %164
  %170 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %171 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %174 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @TSTMP_LT(i64 %172, i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %169
  %179 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %180 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %181 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %182 = load i64, i64* %18, align 8
  %183 = load i64, i64* %20, align 8
  %184 = call i64 @ctf_ts_check(%struct.mbuf* %179, %struct.tcphdr* %180, %struct.tcpcb* %181, i64 %182, i64 %183, i64* %23)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load i64, i64* %23, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %11, align 4
  br label %337

189:                                              ; preds = %178
  br label %190

190:                                              ; preds = %189, %169, %164, %157
  %191 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %192 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @INP_WLOCK_ASSERT(i32 %193)
  %195 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %196 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %197 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %198 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %199 = call i64 @ctf_drop_checks(%struct.tcpopt* %195, %struct.mbuf* %196, %struct.tcphdr* %197, %struct.tcpcb* %198, i64* %18, i64* %20, i64* %17, i64* %23)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %190
  %202 = load i64, i64* %23, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %11, align 4
  br label %337

204:                                              ; preds = %190
  %205 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %206 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @TOF_TS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %251

211:                                              ; preds = %204
  %212 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %213 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %216 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @SEQ_LEQ(i64 %214, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %251

220:                                              ; preds = %211
  %221 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %222 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %225 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %18, align 8
  %228 = add nsw i64 %226, %227
  %229 = load i64, i64* %20, align 8
  %230 = load i64, i64* @TH_SYN, align 8
  %231 = load i64, i64* @TH_FIN, align 8
  %232 = or i64 %230, %231
  %233 = and i64 %229, %232
  %234 = icmp ne i64 %233, 0
  %235 = zext i1 %234 to i32
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %228, %236
  %238 = call i64 @SEQ_LEQ(i64 %223, i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %251

240:                                              ; preds = %220
  %241 = load %struct.tcp_bbr*, %struct.tcp_bbr** %22, align 8
  %242 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %241, i32 0, i32 1
  %243 = call i32 @tcp_tv_to_mssectick(i32* %242)
  %244 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %245 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %244, i32 0, i32 5
  store i32 %243, i32* %245, align 8
  %246 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %247 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %250 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %249, i32 0, i32 4
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %240, %220, %211, %204
  %252 = load i64, i64* %20, align 8
  %253 = load i64, i64* @TH_ACK, align 8
  %254 = and i64 %252, %253
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %295

256:                                              ; preds = %251
  %257 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %258 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @TF_NEEDSYN, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %256
  %264 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %265 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %266 = load %struct.socket*, %struct.socket** %14, align 8
  %267 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %268 = load i64, i64* %17, align 8
  %269 = load i64, i64* %18, align 8
  %270 = load i32, i32* %19, align 4
  %271 = load i64, i64* %20, align 8
  %272 = load i64, i64* %21, align 8
  %273 = call i32 @bbr_process_data(%struct.mbuf* %264, %struct.tcphdr* %265, %struct.socket* %266, %struct.tcpcb* %267, i64 %268, i64 %269, i32 %270, i64 %271, i64 %272)
  store i32 %273, i32* %11, align 4
  br label %337

274:                                              ; preds = %256
  %275 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %276 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @TF_ACKNOW, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %274
  %282 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %283 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %284 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %285 = load i64, i64* %20, align 8
  %286 = load i64, i64* %18, align 8
  %287 = call i32 @ctf_do_dropafterack(%struct.mbuf* %282, %struct.tcpcb* %283, %struct.tcphdr* %284, i64 %285, i64 %286, i64* %23)
  %288 = load %struct.tcp_bbr*, %struct.tcp_bbr** %22, align 8
  %289 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %288, i32 0, i32 0
  store i32 1, i32* %289, align 4
  %290 = load i64, i64* %23, align 8
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %11, align 4
  br label %337

292:                                              ; preds = %274
  %293 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %294 = call i32 @ctf_do_drop(%struct.mbuf* %293, i32* null)
  store i32 0, i32* %11, align 4
  br label %337

295:                                              ; preds = %251
  %296 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %297 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %298 = load %struct.socket*, %struct.socket** %14, align 8
  %299 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %300 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %301 = load i32, i32* %19, align 4
  %302 = load i64, i64* %18, align 8
  %303 = load i64, i64* %20, align 8
  %304 = call i64 @bbr_process_ack(%struct.mbuf* %296, %struct.tcphdr* %297, %struct.socket* %298, %struct.tcpcb* %299, %struct.tcpopt* %300, i32 %301, i64 %302, i32* null, i64 %303, i64* %23)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %295
  %307 = load i64, i64* %23, align 8
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %11, align 4
  br label %337

309:                                              ; preds = %295
  %310 = load %struct.socket*, %struct.socket** %14, align 8
  %311 = getelementptr inbounds %struct.socket, %struct.socket* %310, i32 0, i32 0
  %312 = call i64 @sbavail(i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %309
  %315 = load %struct.tcp_bbr*, %struct.tcp_bbr** %22, align 8
  %316 = call i64 @bbr_progress_timeout_check(%struct.tcp_bbr* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %314
  %319 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %320 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %321 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %322 = load i32, i32* @BANDLIM_RST_OPENPORT, align 4
  %323 = load i64, i64* %18, align 8
  %324 = call i32 @ctf_do_dropwithreset_conn(%struct.mbuf* %319, %struct.tcpcb* %320, %struct.tcphdr* %321, i32 %322, i64 %323)
  store i32 1, i32* %11, align 4
  br label %337

325:                                              ; preds = %314
  br label %326

326:                                              ; preds = %325, %309
  %327 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %328 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %329 = load %struct.socket*, %struct.socket** %14, align 8
  %330 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %331 = load i64, i64* %17, align 8
  %332 = load i64, i64* %18, align 8
  %333 = load i32, i32* %19, align 4
  %334 = load i64, i64* %20, align 8
  %335 = load i64, i64* %21, align 8
  %336 = call i32 @bbr_process_data(%struct.mbuf* %327, %struct.tcphdr* %328, %struct.socket* %329, %struct.tcpcb* %330, i64 %331, i64 %332, i32 %333, i64 %334, i64 %335)
  store i32 %336, i32* %11, align 4
  br label %337

337:                                              ; preds = %326, %318, %306, %292, %281, %263, %201, %186, %150, %139, %118, %104
  %338 = load i32, i32* %11, align 4
  ret i32 %338
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @SEGQ_EMPTY(%struct.tcpcb*) #1

declare dso_local i64 @bbr_fastack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i64, i64, i32, i64) #1

declare dso_local i64 @bbr_do_fastnewdata(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i64, i64, i32, i64) #1

declare dso_local i32 @ctf_calc_rwin(%struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_process_rst(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_challenge_ack(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i64*) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i64 @ctf_ts_check(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i64, i64, i64*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i64 @ctf_drop_checks(%struct.tcpopt*, %struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @SEQ_LEQ(i64, i64) #1

declare dso_local i32 @tcp_tv_to_mssectick(i32*) #1

declare dso_local i32 @bbr_process_data(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i64, i64, i32, i64, i64) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i64, i64, i64*) #1

declare dso_local i32 @ctf_do_drop(%struct.mbuf*, i32*) #1

declare dso_local i64 @bbr_process_ack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i64, i32*, i64, i64*) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @bbr_progress_timeout_check(%struct.tcp_bbr*) #1

declare dso_local i32 @ctf_do_dropwithreset_conn(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
