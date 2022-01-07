; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_fin_wait_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_fin_wait_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { i32, i32 }
%struct.tcpcb = type { i32, i32, i32, i64, i32, i64, i64 }
%struct.tcpopt = type { i32, i64 }
%struct.tcp_bbr = type { i32, i32 }

@TH_RST = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@TF_NEEDSYN = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@BANDLIM_RST_OPENPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32, i32, i32)* @bbr_do_fin_wait_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_do_fin_wait_2(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, %struct.tcpopt* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca %struct.socket*, align 8
  %15 = alloca %struct.tcpcb*, align 8
  %16 = alloca %struct.tcpopt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.tcp_bbr*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %12, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %13, align 8
  store %struct.socket* %2, %struct.socket** %14, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %15, align 8
  store %struct.tcpopt* %4, %struct.tcpopt** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.tcp_bbr*
  store %struct.tcp_bbr* %28, %struct.tcp_bbr** %24, align 8
  %29 = load %struct.socket*, %struct.socket** %14, align 8
  %30 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %31 = call i32 @ctf_calc_rwin(%struct.socket* %29, %struct.tcpcb* %30)
  %32 = load i32, i32* %20, align 4
  %33 = load i32, i32* @TH_RST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %10
  %37 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* @TH_FIN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %10
  %47 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %48 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %49 = load %struct.socket*, %struct.socket** %14, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %51 = call i32 @ctf_process_rst(%struct.mbuf* %47, %struct.tcphdr* %48, %struct.socket* %49, %struct.tcpcb* %50)
  store i32 %51, i32* %11, align 4
  br label %278

52:                                               ; preds = %41, %36
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* @TH_SYN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %59 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %60 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %61 = call i32 @ctf_challenge_ack(%struct.mbuf* %58, %struct.tcphdr* %59, %struct.tcpcb* %60, i32* %23)
  %62 = load i32, i32* %23, align 4
  store i32 %62, i32* %11, align 4
  br label %278

63:                                               ; preds = %52
  %64 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @INP_WLOCK_ASSERT(i32 %66)
  %68 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %69 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TOF_TS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %63
  %75 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %76 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %81 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @TSTMP_LT(i64 %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %79
  %89 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %90 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %91 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %20, align 4
  %94 = call i64 @ctf_ts_check(%struct.mbuf* %89, %struct.tcphdr* %90, %struct.tcpcb* %91, i32 %92, i32 %93, i32* %23)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %23, align 4
  store i32 %97, i32* %11, align 4
  br label %278

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %79, %74, %63
  %100 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %101 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @INP_WLOCK_ASSERT(i32 %102)
  %104 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %106 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %107 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %108 = call i64 @ctf_drop_checks(%struct.tcpopt* %104, %struct.mbuf* %105, %struct.tcphdr* %106, %struct.tcpcb* %107, i32* %18, i32* %20, i32* %17, i32* %23)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* %23, align 4
  store i32 %111, i32* %11, align 4
  br label %278

112:                                              ; preds = %99
  %113 = load %struct.socket*, %struct.socket** %14, align 8
  %114 = getelementptr inbounds %struct.socket, %struct.socket* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SS_NOFDREF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %112
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %124 = load %struct.tcp_bbr*, %struct.tcp_bbr** %24, align 8
  %125 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %126 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %127 = load %struct.socket*, %struct.socket** %14, align 8
  %128 = call i64 @bbr_check_data_after_close(%struct.mbuf* %123, %struct.tcp_bbr* %124, %struct.tcpcb* %125, i32* %18, %struct.tcphdr* %126, %struct.socket* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i32 1, i32* %11, align 4
  br label %278

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %119, %112
  %133 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %134 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @INP_WLOCK_ASSERT(i32 %135)
  %137 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %138 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @INP_WLOCK_ASSERT(i32 %139)
  %141 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %142 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TOF_TS, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %132
  %148 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %149 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %152 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @SEQ_LEQ(i32 %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %147
  %157 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %158 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %161 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* @TH_SYN, align 4
  %167 = load i32, i32* @TH_FIN, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = add nsw i32 %164, %171
  %173 = call i64 @SEQ_LEQ(i32 %159, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %156
  %176 = load %struct.tcp_bbr*, %struct.tcp_bbr** %24, align 8
  %177 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %176, i32 0, i32 1
  %178 = call i32 @tcp_tv_to_mssectick(i32* %177)
  %179 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %180 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %182 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %185 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %175, %156, %147, %132
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* @TH_ACK, align 4
  %189 = and i32 %187, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %229

191:                                              ; preds = %186
  %192 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %193 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @TF_NEEDSYN, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %191
  %199 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %200 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %201 = load %struct.socket*, %struct.socket** %14, align 8
  %202 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %21, align 4
  %208 = call i32 @bbr_process_data(%struct.mbuf* %199, %struct.tcphdr* %200, %struct.socket* %201, %struct.tcpcb* %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207)
  store i32 %208, i32* %11, align 4
  br label %278

209:                                              ; preds = %191
  %210 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %211 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @TF_ACKNOW, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %218 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %219 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* %18, align 4
  %222 = call i32 @ctf_do_dropafterack(%struct.mbuf* %217, %struct.tcpcb* %218, %struct.tcphdr* %219, i32 %220, i32 %221, i32* %23)
  %223 = load %struct.tcp_bbr*, %struct.tcp_bbr** %24, align 8
  %224 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %223, i32 0, i32 0
  store i32 1, i32* %224, align 4
  %225 = load i32, i32* %23, align 4
  store i32 %225, i32* %11, align 4
  br label %278

226:                                              ; preds = %209
  %227 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %228 = call i32 @ctf_do_drop(%struct.mbuf* %227, i32* null)
  store i32 0, i32* %11, align 4
  br label %278

229:                                              ; preds = %186
  %230 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %231 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @INP_WLOCK_ASSERT(i32 %232)
  %234 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %235 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %236 = load %struct.socket*, %struct.socket** %14, align 8
  %237 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %238 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %20, align 4
  %242 = call i64 @bbr_process_ack(%struct.mbuf* %234, %struct.tcphdr* %235, %struct.socket* %236, %struct.tcpcb* %237, %struct.tcpopt* %238, i32 %239, i32 %240, i32* %22, i32 %241, i32* %23)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %229
  %245 = load i32, i32* %23, align 4
  store i32 %245, i32* %11, align 4
  br label %278

246:                                              ; preds = %229
  %247 = load %struct.socket*, %struct.socket** %14, align 8
  %248 = getelementptr inbounds %struct.socket, %struct.socket* %247, i32 0, i32 1
  %249 = call i64 @sbavail(i32* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %246
  %252 = load %struct.tcp_bbr*, %struct.tcp_bbr** %24, align 8
  %253 = call i64 @bbr_progress_timeout_check(%struct.tcp_bbr* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %257 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %258 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %259 = load i32, i32* @BANDLIM_RST_OPENPORT, align 4
  %260 = load i32, i32* %18, align 4
  %261 = call i32 @ctf_do_dropwithreset_conn(%struct.mbuf* %256, %struct.tcpcb* %257, %struct.tcphdr* %258, i32 %259, i32 %260)
  store i32 1, i32* %11, align 4
  br label %278

262:                                              ; preds = %251
  br label %263

263:                                              ; preds = %262, %246
  %264 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %265 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @INP_WLOCK_ASSERT(i32 %266)
  %268 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %269 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %270 = load %struct.socket*, %struct.socket** %14, align 8
  %271 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %18, align 4
  %274 = load i32, i32* %19, align 4
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* %21, align 4
  %277 = call i32 @bbr_process_data(%struct.mbuf* %268, %struct.tcphdr* %269, %struct.socket* %270, %struct.tcpcb* %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276)
  store i32 %277, i32* %11, align 4
  br label %278

278:                                              ; preds = %263, %255, %244, %226, %216, %198, %130, %110, %96, %57, %46
  %279 = load i32, i32* %11, align 4
  ret i32 %279
}

declare dso_local i32 @ctf_calc_rwin(%struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_process_rst(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_challenge_ack(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i64 @ctf_ts_check(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32, i32, i32*) #1

declare dso_local i64 @ctf_drop_checks(%struct.tcpopt*, %struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @bbr_check_data_after_close(%struct.mbuf*, %struct.tcp_bbr*, %struct.tcpcb*, i32*, %struct.tcphdr*, %struct.socket*) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i32 @tcp_tv_to_mssectick(i32*) #1

declare dso_local i32 @bbr_process_data(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32, i32*) #1

declare dso_local i32 @ctf_do_drop(%struct.mbuf*, i32*) #1

declare dso_local i64 @bbr_process_ack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @bbr_progress_timeout_check(%struct.tcp_bbr*) #1

declare dso_local i32 @ctf_do_dropwithreset_conn(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
