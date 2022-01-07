; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_tcp_track_sloppy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_tcp_track_sloppy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state_peer = type { i64, i64 }
%struct.pf_state = type { i32, i32, i32* }
%struct.pf_pdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tcphdr* }
%struct.tcphdr = type { i32 }

@TH_SYN = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@TH_FIN = common dso_local global i32 0, align 4
@TCPS_CLOSING = common dso_local global i64 0, align 8
@TH_ACK = common dso_local global i32 0, align 4
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@PFRES_SRCLIMIT = common dso_local global i32 0, align 4
@PF_DROP = common dso_local global i32 0, align 4
@TCPS_FIN_WAIT_2 = common dso_local global i64 0, align 8
@TH_RST = common dso_local global i32 0, align 4
@TCPS_TIME_WAIT = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i32 0, align 4
@PFTM_TCP_CLOSED = common dso_local global i32 0, align 4
@PFTM_TCP_FIN_WAIT = common dso_local global i32 0, align 4
@PFTM_TCP_OPENING = common dso_local global i32 0, align 4
@PFTM_TCP_CLOSING = common dso_local global i32 0, align 4
@PFTM_TCP_ESTABLISHED = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state_peer*, %struct.pf_state_peer*, %struct.pf_state**, %struct.pf_pdesc*, i32*)* @pf_tcp_track_sloppy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_tcp_track_sloppy(%struct.pf_state_peer* %0, %struct.pf_state_peer* %1, %struct.pf_state** %2, %struct.pf_pdesc* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_state_peer*, align 8
  %8 = alloca %struct.pf_state_peer*, align 8
  %9 = alloca %struct.pf_state**, align 8
  %10 = alloca %struct.pf_pdesc*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tcphdr*, align 8
  store %struct.pf_state_peer* %0, %struct.pf_state_peer** %7, align 8
  store %struct.pf_state_peer* %1, %struct.pf_state_peer** %8, align 8
  store %struct.pf_state** %2, %struct.pf_state*** %9, align 8
  store %struct.pf_pdesc* %3, %struct.pf_pdesc** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.pf_pdesc*, %struct.pf_pdesc** %10, align 8
  %14 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  store %struct.tcphdr* %16, %struct.tcphdr** %12, align 8
  %17 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %18 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TH_SYN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %25 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TCPS_SYN_SENT, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* @TCPS_SYN_SENT, align 8
  %31 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %32 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %5
  %35 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TH_FIN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %43 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TCPS_CLOSING, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i64, i64* @TCPS_CLOSING, align 8
  %49 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %50 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %54 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TH_ACK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %158

59:                                               ; preds = %52
  %60 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %61 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TCPS_SYN_SENT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %59
  %66 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %67 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %68 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %70 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %65
  %75 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %76 = load %struct.pf_state*, %struct.pf_state** %75, align 8
  %77 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %82 = call i64 @pf_src_connlimit(%struct.pf_state** %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @PFRES_SRCLIMIT, align 4
  %87 = call i32 @REASON_SET(i32* %85, i32 %86)
  %88 = load i32, i32* @PF_DROP, align 4
  store i32 %88, i32* %6, align 4
  br label %253

89:                                               ; preds = %80, %74, %65
  br label %157

90:                                               ; preds = %59
  %91 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %92 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TCPS_CLOSING, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %98 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %99 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %156

100:                                              ; preds = %90
  %101 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %102 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TCPS_SYN_SENT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %100
  %107 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %108 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TCPS_SYN_SENT, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %114 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %115 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %117 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %116, i32 0, i32 0
  store i64 %113, i64* %117, align 8
  %118 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %119 = load %struct.pf_state*, %struct.pf_state** %118, align 8
  %120 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %112
  %124 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %125 = call i64 @pf_src_connlimit(%struct.pf_state** %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @PFRES_SRCLIMIT, align 4
  %130 = call i32 @REASON_SET(i32* %128, i32 %129)
  %131 = load i32, i32* @PF_DROP, align 4
  store i32 %131, i32* %6, align 4
  br label %253

132:                                              ; preds = %123, %112
  br label %155

133:                                              ; preds = %106, %100
  %134 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %135 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TCPS_CLOSING, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %133
  %140 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %141 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %147 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i64, i64* @TCPS_CLOSING, align 8
  %152 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %153 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %150, %145, %139, %133
  br label %155

155:                                              ; preds = %154, %132
  br label %156

156:                                              ; preds = %155, %96
  br label %157

157:                                              ; preds = %156, %89
  br label %158

158:                                              ; preds = %157, %52
  %159 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %160 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @TH_RST, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i64, i64* @TCPS_TIME_WAIT, align 8
  %167 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %168 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %170 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %169, i32 0, i32 0
  store i64 %166, i64* %170, align 8
  br label %171

171:                                              ; preds = %165, %158
  %172 = load i32, i32* @time_uptime, align 4
  %173 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %174 = load %struct.pf_state*, %struct.pf_state** %173, align 8
  %175 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  %176 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %177 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %180 = icmp sge i64 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %171
  %182 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %183 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %186 = icmp sge i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load i32, i32* @PFTM_TCP_CLOSED, align 4
  %189 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %190 = load %struct.pf_state*, %struct.pf_state** %189, align 8
  %191 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  br label %251

192:                                              ; preds = %181, %171
  %193 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %194 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @TCPS_CLOSING, align 8
  %197 = icmp sge i64 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %192
  %199 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %200 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @TCPS_CLOSING, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load i32, i32* @PFTM_TCP_FIN_WAIT, align 4
  %206 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %207 = load %struct.pf_state*, %struct.pf_state** %206, align 8
  %208 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 8
  br label %250

209:                                              ; preds = %198, %192
  %210 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %211 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %221, label %215

215:                                              ; preds = %209
  %216 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %217 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %215, %209
  %222 = load i32, i32* @PFTM_TCP_OPENING, align 4
  %223 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %224 = load %struct.pf_state*, %struct.pf_state** %223, align 8
  %225 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  br label %249

226:                                              ; preds = %215
  %227 = load %struct.pf_state_peer*, %struct.pf_state_peer** %7, align 8
  %228 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @TCPS_CLOSING, align 8
  %231 = icmp sge i64 %229, %230
  br i1 %231, label %238, label %232

232:                                              ; preds = %226
  %233 = load %struct.pf_state_peer*, %struct.pf_state_peer** %8, align 8
  %234 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @TCPS_CLOSING, align 8
  %237 = icmp sge i64 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %232, %226
  %239 = load i32, i32* @PFTM_TCP_CLOSING, align 4
  %240 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %241 = load %struct.pf_state*, %struct.pf_state** %240, align 8
  %242 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %241, i32 0, i32 0
  store i32 %239, i32* %242, align 8
  br label %248

243:                                              ; preds = %232
  %244 = load i32, i32* @PFTM_TCP_ESTABLISHED, align 4
  %245 = load %struct.pf_state**, %struct.pf_state*** %9, align 8
  %246 = load %struct.pf_state*, %struct.pf_state** %245, align 8
  %247 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 8
  br label %248

248:                                              ; preds = %243, %238
  br label %249

249:                                              ; preds = %248, %221
  br label %250

250:                                              ; preds = %249, %204
  br label %251

251:                                              ; preds = %250, %187
  %252 = load i32, i32* @PF_PASS, align 4
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %251, %127, %84
  %254 = load i32, i32* %6, align 4
  ret i32 %254
}

declare dso_local i64 @pf_src_connlimit(%struct.pf_state**) #1

declare dso_local i32 @REASON_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
