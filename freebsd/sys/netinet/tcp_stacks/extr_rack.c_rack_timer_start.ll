; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcp_rack = type { i64, i64, %struct.TYPE_6__, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.rack_sendmap = type { i32, i64*, i32, i64 }

@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@PACE_TMR_RXT = common dso_local global i32 0, align 4
@RACK_ACKED = common dso_local global i32 0, align 4
@RACK_SACK_PASSED = common dso_local global i32 0, align 4
@TF_SENTFIN = common dso_local global i32 0, align 4
@RACK_HAS_FIN = common dso_local global i32 0, align 4
@rack_sendmap = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i64 0, align 8
@RACK_INITIAL_RTO = common dso_local global i64 0, align 8
@TCPTV_REXMTMAX = common dso_local global i64 0, align 8
@PACE_TMR_RACK = common dso_local global i32 0, align 4
@rack_tlp_max_resend = common dso_local global i64 0, align 8
@PACE_TMR_TLP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcpcb*, %struct.tcp_rack*, i64, i32)* @rack_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rack_timer_start(%struct.tcpcb* %0, %struct.tcp_rack* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.tcp_rack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.rack_sendmap*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %18, align 8
  %20 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %21 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %441

25:                                               ; preds = %4
  %26 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %27 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %32 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %33 = call i64 @rack_get_persists_timer_val(%struct.tcpcb* %31, %struct.tcp_rack* %32)
  store i64 %33, i64* %5, align 8
  br label %441

34:                                               ; preds = %25
  %35 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TF_SACK_PERMIT, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %34
  br label %59

48:                                               ; preds = %40
  %49 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %50 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 8
  %52 = call %struct.rack_sendmap* @TAILQ_FIRST(i32* %51)
  store %struct.rack_sendmap* %52, %struct.rack_sendmap** %19, align 8
  %53 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %54 = icmp eq %struct.rack_sendmap* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %154

58:                                               ; preds = %55, %48
  br label %59

59:                                               ; preds = %426, %381, %302, %294, %284, %204, %173, %166, %58, %47
  store i64 0, i64* %14, align 8
  %60 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %61 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 8
  %63 = call %struct.rack_sendmap* @TAILQ_FIRST(i32* %62)
  store %struct.rack_sendmap* %63, %struct.rack_sendmap** %19, align 8
  %64 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %65 = icmp ne %struct.rack_sendmap* %64, null
  br i1 %65, label %66, label %106

66:                                               ; preds = %59
  %67 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %68 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %17, align 8
  %72 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %73 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %17, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %79 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @TSTMP_GEQ(i64 %77, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %66
  %85 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %86 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %17, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %15, align 8
  br label %96

91:                                               ; preds = %66
  %92 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %93 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %15, align 8
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @TSTMP_GT(i64 %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %15, align 8
  %104 = sub nsw i64 %102, %103
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %101, %96
  br label %106

106:                                              ; preds = %105, %59
  %107 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %108 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @SEQ_LT(i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %106
  %116 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %117 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %116, i32 0, i32 6
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i64 @sbavail(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %115, %106
  %125 = load i32, i32* @PACE_TMR_RXT, align 4
  %126 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %127 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %125
  store i32 %130, i32* %128, align 8
  %131 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @TICKS_2_MSEC(i64 %133)
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %14, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %124
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %12, align 8
  %141 = sub nsw i64 %140, %139
  store i64 %141, i64* %12, align 8
  br label %147

142:                                              ; preds = %124
  %143 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %144 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %12, align 8
  br label %147

147:                                              ; preds = %142, %138
  %148 = load i64, i64* %12, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i64 1, i64* %12, align 8
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i64, i64* %12, align 8
  store i64 %152, i64* %5, align 8
  br label %441

153:                                              ; preds = %115
  store i64 0, i64* %5, align 8
  br label %441

154:                                              ; preds = %55
  %155 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %156 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @RACK_ACKED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %163 = call %struct.rack_sendmap* @rack_find_lowest_rsm(%struct.tcp_rack* %162)
  store %struct.rack_sendmap* %163, %struct.rack_sendmap** %19, align 8
  %164 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %165 = icmp eq %struct.rack_sendmap* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %59

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %154
  %169 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %170 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %59

174:                                              ; preds = %168
  %175 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %176 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @RACK_SACK_PASSED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %272

181:                                              ; preds = %174
  %182 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %183 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TF_SENTFIN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %181
  %189 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %190 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %193 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %191, %194
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %205

197:                                              ; preds = %188
  %198 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %199 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @RACK_HAS_FIN, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %59

205:                                              ; preds = %197, %188, %181
  %206 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %207 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %205
  %211 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %212 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @IN_RECOVERY(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %218 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %222 = call i64 @ctf_fixed_maxseg(%struct.tcpcb* %221)
  %223 = icmp slt i64 %220, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  br label %273

225:                                              ; preds = %216, %210, %205
  %226 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %227 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %228 = call i64 @rack_grab_rtt(%struct.tcpcb* %226, %struct.tcp_rack* %227)
  store i64 %228, i64* %13, align 8
  %229 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* %8, align 8
  %232 = call i64 @rack_calc_thresh_rack(%struct.tcp_rack* %229, i64 %230, i64 %231)
  store i64 %232, i64* %10, align 8
  %233 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %234 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %17, align 8
  %238 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %239 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %238, i32 0, i32 1
  %240 = load i64*, i64** %239, align 8
  %241 = load i64, i64* %17, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %10, align 8
  %245 = add nsw i64 %243, %244
  store i64 %245, i64* %11, align 8
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* %8, align 8
  %248 = call i64 @SEQ_GEQ(i64 %246, i64 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %225
  %251 = load i64, i64* %11, align 8
  %252 = load i64, i64* %8, align 8
  %253 = sub nsw i64 %251, %252
  store i64 %253, i64* %12, align 8
  %254 = load i64, i64* %12, align 8
  %255 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %256 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp slt i64 %254, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %250
  %261 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %262 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %12, align 8
  br label %265

265:                                              ; preds = %260, %250
  br label %271

266:                                              ; preds = %225
  %267 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %268 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %12, align 8
  br label %271

271:                                              ; preds = %266, %265
  br label %402

272:                                              ; preds = %174
  br label %273

273:                                              ; preds = %272, %224
  %274 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %275 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %273
  %279 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %280 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %278, %273
  br label %59

285:                                              ; preds = %278
  %286 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %287 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 8
  %289 = load i32, i32* @rack_sendmap, align 4
  %290 = load i32, i32* @r_tnext, align 4
  %291 = call %struct.rack_sendmap* @TAILQ_LAST_FAST(i32* %288, i32 %289, i32 %290)
  store %struct.rack_sendmap* %291, %struct.rack_sendmap** %19, align 8
  %292 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %293 = icmp eq %struct.rack_sendmap* %292, null
  br i1 %293, label %294, label %295

294:                                              ; preds = %285
  br label %59

295:                                              ; preds = %285
  %296 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %297 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @RACK_HAS_FIN, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %19, align 8
  br label %59

303:                                              ; preds = %295
  %304 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %305 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  store i64 %308, i64* %17, align 8
  store i64 0, i64* %14, align 8
  %309 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %310 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %309, i32 0, i32 1
  %311 = load i64*, i64** %310, align 8
  %312 = load i64, i64* %17, align 8
  %313 = getelementptr inbounds i64, i64* %311, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %316 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i64 @TSTMP_GEQ(i64 %314, i64 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %303
  %322 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %323 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %322, i32 0, i32 1
  %324 = load i64*, i64** %323, align 8
  %325 = load i64, i64* %17, align 8
  %326 = getelementptr inbounds i64, i64* %324, i64 %325
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %15, align 8
  br label %333

328:                                              ; preds = %303
  %329 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %330 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %15, align 8
  br label %333

333:                                              ; preds = %328, %321
  %334 = load i64, i64* %15, align 8
  %335 = load i64, i64* %8, align 8
  %336 = call i64 @TSTMP_GT(i64 %334, i64 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %333
  %339 = load i64, i64* %8, align 8
  %340 = load i64, i64* %15, align 8
  %341 = sub nsw i64 %339, %340
  store i64 %341, i64* %14, align 8
  br label %342

342:                                              ; preds = %338, %333
  store i64 1, i64* %18, align 8
  %343 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %344 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %357

347:                                              ; preds = %342
  %348 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %349 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 8
  %351 = load i64, i64* @TCP_RTT_SHIFT, align 8
  %352 = trunc i64 %351 to i32
  %353 = ashr i32 %350, %352
  %354 = sext i32 %353 to i64
  store i64 %354, i64* %16, align 8
  %355 = load i64, i64* %16, align 8
  %356 = call i64 @TICKS_2_MSEC(i64 %355)
  store i64 %356, i64* %13, align 8
  br label %359

357:                                              ; preds = %342
  %358 = load i64, i64* @RACK_INITIAL_RTO, align 8
  store i64 %358, i64* %13, align 8
  br label %359

359:                                              ; preds = %357, %347
  %360 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %361 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %362 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %363 = load i64, i64* %13, align 8
  %364 = call i64 @rack_calc_thresh_tlp(%struct.tcpcb* %360, %struct.tcp_rack* %361, %struct.rack_sendmap* %362, i64 %363)
  store i64 %364, i64* %10, align 8
  %365 = load i64, i64* %10, align 8
  %366 = load i64, i64* %14, align 8
  %367 = icmp sgt i64 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %359
  %369 = load i64, i64* %10, align 8
  %370 = load i64, i64* %14, align 8
  %371 = sub nsw i64 %369, %370
  store i64 %371, i64* %12, align 8
  br label %377

372:                                              ; preds = %359
  %373 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %374 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  store i64 %376, i64* %12, align 8
  br label %377

377:                                              ; preds = %372, %368
  %378 = load i64, i64* %12, align 8
  %379 = load i64, i64* @TCPTV_REXMTMAX, align 8
  %380 = icmp sgt i64 %378, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  br label %59

382:                                              ; preds = %377
  %383 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %384 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %387 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 4
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %385, %389
  br i1 %390, label %391, label %401

391:                                              ; preds = %382
  %392 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %393 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 5
  store i64 0, i64* %394, align 8
  %395 = load %struct.rack_sendmap*, %struct.rack_sendmap** %19, align 8
  %396 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %399 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 4
  store i64 %397, i64* %400, align 8
  br label %401

401:                                              ; preds = %391, %382
  br label %402

402:                                              ; preds = %401, %271
  %403 = load i64, i64* %18, align 8
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %402
  %406 = load i32, i32* @PACE_TMR_RACK, align 4
  %407 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %408 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 7
  %410 = load i32, i32* %409, align 8
  %411 = or i32 %410, %406
  store i32 %411, i32* %409, align 8
  br label %435

412:                                              ; preds = %402
  %413 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %414 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %413, i32 0, i32 2
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 6
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @rack_tlp_max_resend, align 8
  %418 = icmp sgt i64 %416, %417
  br i1 %418, label %426, label %419

419:                                              ; preds = %412
  %420 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %421 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %420, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 5
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @rack_tlp_max_resend, align 8
  %425 = icmp sgt i64 %423, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %419, %412
  br label %59

427:                                              ; preds = %419
  %428 = load i32, i32* @PACE_TMR_TLP, align 4
  %429 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %430 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %429, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 7
  %432 = load i32, i32* %431, align 8
  %433 = or i32 %432, %428
  store i32 %433, i32* %431, align 8
  br label %434

434:                                              ; preds = %427
  br label %435

435:                                              ; preds = %434, %405
  %436 = load i64, i64* %12, align 8
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store i64 1, i64* %12, align 8
  br label %439

439:                                              ; preds = %438, %435
  %440 = load i64, i64* %12, align 8
  store i64 %440, i64* %5, align 8
  br label %441

441:                                              ; preds = %439, %153, %151, %30, %24
  %442 = load i64, i64* %5, align 8
  ret i64 %442
}

declare dso_local i64 @rack_get_persists_timer_val(%struct.tcpcb*, %struct.tcp_rack*) #1

declare dso_local %struct.rack_sendmap* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @TSTMP_GEQ(i64, i64) #1

declare dso_local i64 @TSTMP_GT(i64, i64) #1

declare dso_local i64 @SEQ_LT(i32, i32) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @TICKS_2_MSEC(i64) #1

declare dso_local %struct.rack_sendmap* @rack_find_lowest_rsm(%struct.tcp_rack*) #1

declare dso_local i64 @IN_RECOVERY(i32) #1

declare dso_local i64 @ctf_fixed_maxseg(%struct.tcpcb*) #1

declare dso_local i64 @rack_grab_rtt(%struct.tcpcb*, %struct.tcp_rack*) #1

declare dso_local i64 @rack_calc_thresh_rack(%struct.tcp_rack*, i64, i64) #1

declare dso_local i64 @SEQ_GEQ(i64, i64) #1

declare dso_local %struct.rack_sendmap* @TAILQ_LAST_FAST(i32*, i32, i32) #1

declare dso_local i64 @rack_calc_thresh_tlp(%struct.tcpcb*, %struct.tcp_rack*, %struct.rack_sendmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
