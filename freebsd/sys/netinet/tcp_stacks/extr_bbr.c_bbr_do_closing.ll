; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_closing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_closing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { i32, i32 }
%struct.tcpcb = type { i32, i32, i64, i32, i32, i64, i64 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32, i32, i32)* @bbr_do_closing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_do_closing(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, %struct.tcpopt* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  br label %266

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
  br label %266

63:                                               ; preds = %52
  %64 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %65 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TOF_TS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %77 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @TSTMP_LT(i64 %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %75
  %85 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %86 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %87 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %20, align 4
  %90 = call i64 @ctf_ts_check(%struct.mbuf* %85, %struct.tcphdr* %86, %struct.tcpcb* %87, i32 %88, i32 %89, i32* %23)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %23, align 4
  store i32 %93, i32* %11, align 4
  br label %266

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %75, %70, %63
  %96 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @INP_WLOCK_ASSERT(i32 %98)
  %100 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %102 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %103 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %104 = call i64 @ctf_drop_checks(%struct.tcpopt* %100, %struct.mbuf* %101, %struct.tcphdr* %102, %struct.tcpcb* %103, i32* %18, i32* %20, i32* %17, i32* %23)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* %23, align 4
  store i32 %107, i32* %11, align 4
  br label %266

108:                                              ; preds = %95
  %109 = load %struct.socket*, %struct.socket** %14, align 8
  %110 = getelementptr inbounds %struct.socket, %struct.socket* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SS_NOFDREF, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %120 = load %struct.tcp_bbr*, %struct.tcp_bbr** %24, align 8
  %121 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %122 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %123 = load %struct.socket*, %struct.socket** %14, align 8
  %124 = call i64 @bbr_check_data_after_close(%struct.mbuf* %119, %struct.tcp_bbr* %120, %struct.tcpcb* %121, i32* %18, %struct.tcphdr* %122, %struct.socket* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store i32 1, i32* %11, align 4
  br label %266

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %115, %108
  %129 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %130 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TOF_TS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %174

135:                                              ; preds = %128
  %136 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %137 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %140 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @SEQ_LEQ(i32 %138, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %174

144:                                              ; preds = %135
  %145 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %146 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %149 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %18, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* @TH_SYN, align 4
  %155 = load i32, i32* @TH_FIN, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %153, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = add nsw i32 %152, %159
  %161 = call i64 @SEQ_LEQ(i32 %147, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %144
  %164 = load %struct.tcp_bbr*, %struct.tcp_bbr** %24, align 8
  %165 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %164, i32 0, i32 1
  %166 = call i32 @tcp_tv_to_mssectick(i32* %165)
  %167 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %168 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  %169 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %170 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %173 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %163, %144, %135, %128
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* @TH_ACK, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %174
  %180 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %181 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TF_NEEDSYN, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %188 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %189 = load %struct.socket*, %struct.socket** %14, align 8
  %190 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %21, align 4
  %196 = call i32 @bbr_process_data(%struct.mbuf* %187, %struct.tcphdr* %188, %struct.socket* %189, %struct.tcpcb* %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  store i32 %196, i32* %11, align 4
  br label %266

197:                                              ; preds = %179
  %198 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %199 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @TF_ACKNOW, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %197
  %205 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %206 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %207 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @ctf_do_dropafterack(%struct.mbuf* %205, %struct.tcpcb* %206, %struct.tcphdr* %207, i32 %208, i32 %209, i32* %23)
  %211 = load %struct.tcp_bbr*, %struct.tcp_bbr** %24, align 8
  %212 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %211, i32 0, i32 0
  store i32 1, i32* %212, align 4
  %213 = load i32, i32* %23, align 4
  store i32 %213, i32* %11, align 4
  br label %266

214:                                              ; preds = %197
  %215 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %216 = call i32 @ctf_do_drop(%struct.mbuf* %215, i32* null)
  store i32 0, i32* %11, align 4
  br label %266

217:                                              ; preds = %174
  %218 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %219 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %220 = load %struct.socket*, %struct.socket** %14, align 8
  %221 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %222 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %20, align 4
  %226 = call i64 @bbr_process_ack(%struct.mbuf* %218, %struct.tcphdr* %219, %struct.socket* %220, %struct.tcpcb* %221, %struct.tcpopt* %222, i32 %223, i32 %224, i32* %22, i32 %225, i32* %23)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = load i32, i32* %23, align 4
  store i32 %229, i32* %11, align 4
  br label %266

230:                                              ; preds = %217
  %231 = load i32, i32* %22, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %235 = call i32 @tcp_twstart(%struct.tcpcb* %234)
  %236 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %237 = call i32 @m_freem(%struct.mbuf* %236)
  store i32 1, i32* %11, align 4
  br label %266

238:                                              ; preds = %230
  %239 = load %struct.socket*, %struct.socket** %14, align 8
  %240 = getelementptr inbounds %struct.socket, %struct.socket* %239, i32 0, i32 1
  %241 = call i64 @sbavail(i32* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %238
  %244 = load %struct.tcp_bbr*, %struct.tcp_bbr** %24, align 8
  %245 = call i64 @bbr_progress_timeout_check(%struct.tcp_bbr* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %249 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %250 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %251 = load i32, i32* @BANDLIM_RST_OPENPORT, align 4
  %252 = load i32, i32* %18, align 4
  %253 = call i32 @ctf_do_dropwithreset_conn(%struct.mbuf* %248, %struct.tcpcb* %249, %struct.tcphdr* %250, i32 %251, i32 %252)
  store i32 1, i32* %11, align 4
  br label %266

254:                                              ; preds = %243
  br label %255

255:                                              ; preds = %254, %238
  %256 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %257 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %258 = load %struct.socket*, %struct.socket** %14, align 8
  %259 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %21, align 4
  %265 = call i32 @bbr_process_data(%struct.mbuf* %256, %struct.tcphdr* %257, %struct.socket* %258, %struct.tcpcb* %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264)
  store i32 %265, i32* %11, align 4
  br label %266

266:                                              ; preds = %255, %247, %233, %228, %214, %204, %186, %126, %106, %92, %57, %46
  %267 = load i32, i32* %11, align 4
  ret i32 %267
}

declare dso_local i32 @ctf_calc_rwin(%struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_process_rst(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_challenge_ack(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i64 @ctf_ts_check(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32, i32, i32*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i64 @ctf_drop_checks(%struct.tcpopt*, %struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @bbr_check_data_after_close(%struct.mbuf*, %struct.tcp_bbr*, %struct.tcpcb*, i32*, %struct.tcphdr*, %struct.socket*) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i32 @tcp_tv_to_mssectick(i32*) #1

declare dso_local i32 @bbr_process_data(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32, i32*) #1

declare dso_local i32 @ctf_do_drop(%struct.mbuf*, i32*) #1

declare dso_local i64 @bbr_process_ack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @tcp_twstart(%struct.tcpcb*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @bbr_progress_timeout_check(%struct.tcp_bbr*) #1

declare dso_local i32 @ctf_do_dropwithreset_conn(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
