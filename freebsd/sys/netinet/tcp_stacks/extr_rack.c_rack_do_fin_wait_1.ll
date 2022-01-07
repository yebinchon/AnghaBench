; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_do_fin_wait_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_do_fin_wait_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcpcb = type { i32, i32, i32, i64, i64, i32, i64 }
%struct.tcpopt = type { i32, i64 }
%struct.tcp_rack = type { i32 }

@TH_RST = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@TF_NEEDSYN = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@SBS_CANTRCVMORE = common dso_local global i32 0, align 4
@TT_2MSL = common dso_local global i32 0, align 4
@tcp_fast_finwait2_recycle = common dso_local global i64 0, align 8
@tcp_finwait2_timeout = common dso_local global i32 0, align 4
@TCPS_FIN_WAIT_2 = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@BANDLIM_RST_OPENPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32, i32, i32)* @rack_do_fin_wait_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_do_fin_wait_1(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, %struct.tcpopt* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  store i32 0, i32* %23, align 4
  %24 = load %struct.socket*, %struct.socket** %14, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %26 = call i32 @ctf_calc_rwin(%struct.socket* %24, %struct.tcpcb* %25)
  %27 = load i32, i32* %20, align 4
  %28 = load i32, i32* @TH_RST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %10
  %32 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* @TH_FIN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36, %10
  %42 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %43 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %44 = load %struct.socket*, %struct.socket** %14, align 8
  %45 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %46 = call i32 @ctf_process_rst(%struct.mbuf* %42, %struct.tcphdr* %43, %struct.socket* %44, %struct.tcpcb* %45)
  store i32 %46, i32* %11, align 4
  br label %286

47:                                               ; preds = %36, %31
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @TH_SYN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %54 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %55 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %56 = call i32 @ctf_challenge_ack(%struct.mbuf* %53, %struct.tcphdr* %54, %struct.tcpcb* %55, i32* %22)
  %57 = load i32, i32* %22, align 4
  store i32 %57, i32* %11, align 4
  br label %286

58:                                               ; preds = %47
  %59 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %60 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TOF_TS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %58
  %66 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %72 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @TSTMP_LT(i64 %73, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %81 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %82 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %20, align 4
  %85 = call i64 @ctf_ts_check(%struct.mbuf* %80, %struct.tcphdr* %81, %struct.tcpcb* %82, i32 %83, i32 %84, i32* %22)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %22, align 4
  store i32 %88, i32* %11, align 4
  br label %286

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %70, %65, %58
  %91 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %93 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %94 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %95 = call i64 @ctf_drop_checks(%struct.tcpopt* %91, %struct.mbuf* %92, %struct.tcphdr* %93, %struct.tcpcb* %94, i32* %18, i32* %20, i32* %17, i32* %22)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %22, align 4
  store i32 %98, i32* %11, align 4
  br label %286

99:                                               ; preds = %90
  %100 = load %struct.socket*, %struct.socket** %14, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SS_NOFDREF, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %111 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %112 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %113 = load %struct.socket*, %struct.socket** %14, align 8
  %114 = call i64 @rack_check_data_after_close(%struct.mbuf* %110, %struct.tcpcb* %111, i32* %18, %struct.tcphdr* %112, %struct.socket* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 1, i32* %11, align 4
  br label %286

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %106, %99
  %119 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %120 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @TOF_TS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %162

125:                                              ; preds = %118
  %126 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %127 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %130 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @SEQ_LEQ(i32 %128, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %125
  %135 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* @TH_SYN, align 4
  %145 = load i32, i32* @TH_FIN, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %143, %146
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = add nsw i32 %142, %149
  %151 = call i64 @SEQ_LEQ(i32 %137, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %134
  %154 = call i32 (...) @tcp_ts_getticks()
  %155 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %156 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %158 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %161 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %153, %134, %125, %118
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* @TH_ACK, align 4
  %165 = and i32 %163, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %210

167:                                              ; preds = %162
  %168 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %169 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @TF_NEEDSYN, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %167
  %175 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %176 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %177 = load %struct.socket*, %struct.socket** %14, align 8
  %178 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %21, align 4
  %184 = call i32 @rack_process_data(%struct.mbuf* %175, %struct.tcphdr* %176, %struct.socket* %177, %struct.tcpcb* %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  store i32 %184, i32* %11, align 4
  br label %286

185:                                              ; preds = %167
  %186 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %187 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @TF_ACKNOW, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %185
  %193 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %194 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %195 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* %18, align 4
  %198 = call i32 @ctf_do_dropafterack(%struct.mbuf* %193, %struct.tcpcb* %194, %struct.tcphdr* %195, i32 %196, i32 %197, i32* %22)
  %199 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %200 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to %struct.tcp_rack*
  %203 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %22, align 4
  store i32 %206, i32* %11, align 4
  br label %286

207:                                              ; preds = %185
  %208 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %209 = call i32 @ctf_do_drop(%struct.mbuf* %208, i32* null)
  store i32 0, i32* %11, align 4
  br label %286

210:                                              ; preds = %162
  %211 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %212 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %213 = load %struct.socket*, %struct.socket** %14, align 8
  %214 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %215 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %20, align 4
  %219 = call i64 @rack_process_ack(%struct.mbuf* %211, %struct.tcphdr* %212, %struct.socket* %213, %struct.tcpcb* %214, %struct.tcpopt* %215, i32 %216, i32 %217, i32* %23, i32 %218, i32* %22)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = load i32, i32* %22, align 4
  store i32 %222, i32* %11, align 4
  br label %286

223:                                              ; preds = %210
  %224 = load i32, i32* %23, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %253

226:                                              ; preds = %223
  %227 = load %struct.socket*, %struct.socket** %14, align 8
  %228 = getelementptr inbounds %struct.socket, %struct.socket* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %226
  %235 = load %struct.socket*, %struct.socket** %14, align 8
  %236 = call i32 @soisdisconnected(%struct.socket* %235)
  %237 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %238 = load i32, i32* @TT_2MSL, align 4
  %239 = load i64, i64* @tcp_fast_finwait2_recycle, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = load i32, i32* @tcp_finwait2_timeout, align 4
  br label %246

243:                                              ; preds = %234
  %244 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %245 = call i32 @TP_MAXIDLE(%struct.tcpcb* %244)
  br label %246

246:                                              ; preds = %243, %241
  %247 = phi i32 [ %242, %241 ], [ %245, %243 ]
  %248 = call i32 @tcp_timer_activate(%struct.tcpcb* %237, i32 %238, i32 %247)
  br label %249

249:                                              ; preds = %246, %226
  %250 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %251 = load i32, i32* @TCPS_FIN_WAIT_2, align 4
  %252 = call i32 @tcp_state_change(%struct.tcpcb* %250, i32 %251)
  br label %253

253:                                              ; preds = %249, %223
  %254 = load %struct.socket*, %struct.socket** %14, align 8
  %255 = getelementptr inbounds %struct.socket, %struct.socket* %254, i32 0, i32 1
  %256 = call i64 @sbavail(i32* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %275

258:                                              ; preds = %253
  %259 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %260 = call i64 @rack_progress_timeout_check(%struct.tcpcb* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %258
  %263 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %264 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @ETIMEDOUT, align 4
  %267 = call i32 @tcp_set_inp_to_drop(i32 %265, i32 %266)
  %268 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %269 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %270 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %271 = load i32, i32* @BANDLIM_RST_OPENPORT, align 4
  %272 = load i32, i32* %18, align 4
  %273 = call i32 @ctf_do_dropwithreset(%struct.mbuf* %268, %struct.tcpcb* %269, %struct.tcphdr* %270, i32 %271, i32 %272)
  store i32 1, i32* %11, align 4
  br label %286

274:                                              ; preds = %258
  br label %275

275:                                              ; preds = %274, %253
  %276 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %277 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %278 = load %struct.socket*, %struct.socket** %14, align 8
  %279 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* %18, align 4
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* %20, align 4
  %284 = load i32, i32* %21, align 4
  %285 = call i32 @rack_process_data(%struct.mbuf* %276, %struct.tcphdr* %277, %struct.socket* %278, %struct.tcpcb* %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284)
  store i32 %285, i32* %11, align 4
  br label %286

286:                                              ; preds = %275, %262, %221, %207, %192, %174, %116, %97, %87, %52, %41
  %287 = load i32, i32* %11, align 4
  ret i32 %287
}

declare dso_local i32 @ctf_calc_rwin(%struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_process_rst(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_challenge_ack(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i64 @ctf_ts_check(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32, i32, i32*) #1

declare dso_local i64 @ctf_drop_checks(%struct.tcpopt*, %struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @rack_check_data_after_close(%struct.mbuf*, %struct.tcpcb*, i32*, %struct.tcphdr*, %struct.socket*) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i32 @tcp_ts_getticks(...) #1

declare dso_local i32 @rack_process_data(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32, i32*) #1

declare dso_local i32 @ctf_do_drop(%struct.mbuf*, i32*) #1

declare dso_local i64 @rack_process_ack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

declare dso_local i32 @tcp_timer_activate(%struct.tcpcb*, i32, i32) #1

declare dso_local i32 @TP_MAXIDLE(%struct.tcpcb*) #1

declare dso_local i32 @tcp_state_change(%struct.tcpcb*, i32) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @rack_progress_timeout_check(%struct.tcpcb*) #1

declare dso_local i32 @tcp_set_inp_to_drop(i32, i32) #1

declare dso_local i32 @ctf_do_dropwithreset(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
