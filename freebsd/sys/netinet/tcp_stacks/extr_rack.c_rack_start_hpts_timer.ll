; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_start_hpts_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_start_hpts_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.tcpcb = type { i64, i32, i32, i32, %struct.inpcb* }
%struct.inpcb = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@TCPS_CLOSED = common dso_local global i64 0, align 8
@TCPS_LISTEN = common dso_local global i64 0, align 8
@PACE_PKT_OUTPUT = common dso_local global i32 0, align 4
@tcp_sad_pacing_interval = common dso_local global i32 0, align 4
@TF_DELACK = common dso_local global i32 0, align 4
@tcp_delacktime = common dso_local global i32 0, align 4
@PACE_TMR_DELACK = common dso_local global i32 0, align 4
@tcp_always_keepalive = common dso_local global i64 0, align 8
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@TCPS_CLOSING = common dso_local global i64 0, align 8
@PACE_TMR_KEEP = common dso_local global i32 0, align 4
@PACE_TMR_MASK = common dso_local global i32 0, align 4
@INP_MBUF_QUEUE_READY = common dso_local global i32 0, align 4
@PACE_TMR_RACK = common dso_local global i32 0, align 4
@INP_DONT_SACK_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, %struct.tcpcb*, i32, i32, i32, i32)* @rack_start_hpts_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_start_hpts_timer(%struct.tcp_rack* %0, %struct.tcpcb* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.tcp_rack*, align 8
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inpcb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %7, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 4
  %20 = load %struct.inpcb*, %struct.inpcb** %19, align 8
  store %struct.inpcb* %20, %struct.inpcb** %13, align 8
  %21 = load %struct.inpcb*, %struct.inpcb** %13, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %404

26:                                               ; preds = %6
  %27 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCPS_CLOSED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TCPS_LISTEN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %404

39:                                               ; preds = %32
  %40 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %41 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %47 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @TSTMP_GT(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %55 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %53, %45, %39
  %61 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %64 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %67 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %74 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %60
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* @PACE_PKT_OUTPUT, align 4
  %81 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %82 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %112

86:                                               ; preds = %76
  %87 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %88 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PACE_PKT_OUTPUT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %86
  %95 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %96 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @TSTMP_GT(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %104 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %10, align 4
  br label %110

109:                                              ; preds = %94
  store i32 1, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %102
  br label %111

111:                                              ; preds = %110, %86
  br label %112

112:                                              ; preds = %111, %79
  %113 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %114 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @rack_timer_start(%struct.tcpcb* %113, %struct.tcp_rack* %114, i32 %115, i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %119 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %112
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @tcp_sad_pacing_interval, align 4
  %125 = call i32 @USEC_TO_MSEC(i32 %124)
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @tcp_sad_pacing_interval, align 4
  %129 = call i32 @USEC_TO_MSEC(i32 %128)
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %127, %122, %112
  %131 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @TF_DELACK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load i32, i32* @tcp_delacktime, align 4
  %139 = call i32 @TICKS_2_MSEC(i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* @PACE_TMR_DELACK, align 4
  %141 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %142 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %137, %130
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152, %149
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %15, align 4
  br label %166

158:                                              ; preds = %152, %146
  %159 = load i32, i32* @PACE_TMR_DELACK, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %162 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %160
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %158, %156
  %167 = load i32, i32* %15, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %210

169:                                              ; preds = %166
  %170 = load i32, i32* %10, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %210

172:                                              ; preds = %169
  %173 = load i64, i64* @tcp_always_keepalive, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %172
  %176 = load %struct.inpcb*, %struct.inpcb** %13, align 8
  %177 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SO_KEEPALIVE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %175, %172
  %185 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %186 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @TCPS_CLOSING, align 8
  %189 = icmp sle i64 %187, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %184
  %191 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %192 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @TCPS_HAVEESTABLISHED(i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %198 = call i32 @TP_KEEPIDLE(%struct.tcpcb* %197)
  store i32 %198, i32* %15, align 4
  br label %202

199:                                              ; preds = %190
  %200 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %201 = call i32 @TP_KEEPINIT(%struct.tcpcb* %200)
  store i32 %201, i32* %15, align 4
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* @PACE_TMR_KEEP, align 4
  %204 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %205 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %203
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %202, %184, %175
  br label %210

210:                                              ; preds = %209, %169, %166
  %211 = load i32, i32* %17, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %210
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* @PACE_TMR_KEEP, align 4
  %216 = load i32, i32* @PACE_TMR_DELACK, align 4
  %217 = or i32 %215, %216
  %218 = and i32 %214, %217
  %219 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %220 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @PACE_TMR_MASK, align 4
  %224 = and i32 %222, %223
  %225 = icmp eq i32 %218, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %213
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %15, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i32, i32* %17, align 4
  store i32 %231, i32* %15, align 4
  br label %232

232:                                              ; preds = %230, %226
  br label %233

233:                                              ; preds = %232, %213, %210
  %234 = load i32, i32* %15, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %233
  %237 = load i32, i32* %15, align 4
  %238 = icmp sgt i32 %237, 2147483646
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  store i32 2147483646, i32* %15, align 4
  br label %240

240:                                              ; preds = %239, %236
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %241, %242
  %244 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %245 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 8
  br label %247

247:                                              ; preds = %240, %233
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %332

250:                                              ; preds = %247
  %251 = load i32, i32* @INP_MBUF_QUEUE_READY, align 4
  %252 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %253 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %252, i32 0, i32 1
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %251
  store i32 %257, i32* %255, align 8
  %258 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %259 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @PACE_TMR_RACK, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %250
  %266 = load i32, i32* @INP_DONT_SACK_QUEUE, align 4
  %267 = load %struct.inpcb*, %struct.inpcb** %13, align 8
  %268 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  br label %278

271:                                              ; preds = %250
  %272 = load i32, i32* @INP_DONT_SACK_QUEUE, align 4
  %273 = xor i32 %272, -1
  %274 = load %struct.inpcb*, %struct.inpcb** %13, align 8
  %275 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = and i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %271, %265
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %279, %280
  %282 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %283 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 2
  store i32 %281, i32* %284, align 8
  %285 = load i32, i32* %15, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %278
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* %10, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %291, label %311

291:                                              ; preds = %287, %278
  %292 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %293 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %292, i32 0, i32 1
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %291
  %299 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %300 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %299, i32 0, i32 4
  %301 = load %struct.inpcb*, %struct.inpcb** %300, align 8
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @HPTS_MS_TO_SLOTS(i32 %302)
  %304 = call i32 @tcp_hpts_insert(%struct.inpcb* %301, i32 %303)
  br label %305

305:                                              ; preds = %298, %291
  %306 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* %10, align 4
  %310 = call i32 @rack_log_to_start(%struct.tcp_rack* %306, i32 %307, i32 %308, i32 %309, i32 1)
  br label %331

311:                                              ; preds = %287
  %312 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %313 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %312, i32 0, i32 1
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %311
  %319 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %320 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %319, i32 0, i32 4
  %321 = load %struct.inpcb*, %struct.inpcb** %320, align 8
  %322 = load i32, i32* %15, align 4
  %323 = call i32 @HPTS_MS_TO_SLOTS(i32 %322)
  %324 = call i32 @tcp_hpts_insert(%struct.inpcb* %321, i32 %323)
  br label %325

325:                                              ; preds = %318, %311
  %326 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %10, align 4
  %330 = call i32 @rack_log_to_start(%struct.tcp_rack* %326, i32 %327, i32 %328, i32 %329, i32 0)
  br label %331

331:                                              ; preds = %325, %305
  br label %393

332:                                              ; preds = %247
  %333 = load i32, i32* %15, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %391

335:                                              ; preds = %332
  %336 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %337 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @PACE_TMR_RACK, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %335
  %344 = load i32, i32* @INP_MBUF_QUEUE_READY, align 4
  %345 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %346 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %345, i32 0, i32 1
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %344
  store i32 %350, i32* %348, align 8
  %351 = load i32, i32* @INP_DONT_SACK_QUEUE, align 4
  %352 = load %struct.inpcb*, %struct.inpcb** %13, align 8
  %353 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 8
  br label %371

356:                                              ; preds = %335
  %357 = load i32, i32* @INP_MBUF_QUEUE_READY, align 4
  %358 = xor i32 %357, -1
  %359 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %360 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %359, i32 0, i32 1
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = and i32 %363, %358
  store i32 %364, i32* %362, align 8
  %365 = load i32, i32* @INP_DONT_SACK_QUEUE, align 4
  %366 = xor i32 %365, -1
  %367 = load %struct.inpcb*, %struct.inpcb** %13, align 8
  %368 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = and i32 %369, %366
  store i32 %370, i32* %368, align 8
  br label %371

371:                                              ; preds = %356, %343
  %372 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %373 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %372, i32 0, i32 1
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %371
  %379 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %380 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %379, i32 0, i32 4
  %381 = load %struct.inpcb*, %struct.inpcb** %380, align 8
  %382 = load i32, i32* %15, align 4
  %383 = call i32 @HPTS_MS_TO_SLOTS(i32 %382)
  %384 = call i32 @tcp_hpts_insert(%struct.inpcb* %381, i32 %383)
  br label %385

385:                                              ; preds = %378, %371
  %386 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %387 = load i32, i32* %9, align 4
  %388 = load i32, i32* %15, align 4
  %389 = load i32, i32* %10, align 4
  %390 = call i32 @rack_log_to_start(%struct.tcp_rack* %386, i32 %387, i32 %388, i32 %389, i32 0)
  br label %392

391:                                              ; preds = %332
  br label %392

392:                                              ; preds = %391, %385
  br label %393

393:                                              ; preds = %392, %331
  %394 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %395 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %394, i32 0, i32 0
  store i32 0, i32* %395, align 8
  %396 = load i32, i32* %10, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %393
  %399 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %400 = load i32, i32* %11, align 4
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* %9, align 4
  %403 = call i32 @rack_log_type_bbrsnd(%struct.tcp_rack* %399, i32 %400, i32 %401, i32 %402)
  br label %404

404:                                              ; preds = %25, %38, %398, %393
  ret void
}

declare dso_local i64 @TSTMP_GT(i32, i32) #1

declare dso_local i32 @rack_timer_start(%struct.tcpcb*, %struct.tcp_rack*, i32, i32) #1

declare dso_local i32 @USEC_TO_MSEC(i32) #1

declare dso_local i32 @TICKS_2_MSEC(i32) #1

declare dso_local i64 @TCPS_HAVEESTABLISHED(i64) #1

declare dso_local i32 @TP_KEEPIDLE(%struct.tcpcb*) #1

declare dso_local i32 @TP_KEEPINIT(%struct.tcpcb*) #1

declare dso_local i32 @tcp_hpts_insert(%struct.inpcb*, i32) #1

declare dso_local i32 @HPTS_MS_TO_SLOTS(i32) #1

declare dso_local i32 @rack_log_to_start(%struct.tcp_rack*, i32, i32, i32, i32) #1

declare dso_local i32 @rack_log_type_bbrsnd(%struct.tcp_rack*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
