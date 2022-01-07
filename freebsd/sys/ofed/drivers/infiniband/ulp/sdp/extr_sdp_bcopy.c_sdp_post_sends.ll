; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_bcopy.c_sdp_post_sends.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_bcopy.c_sdp_post_sends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64, i64, i32, i32, i32, %struct.socket*, i64, i64, i32, i32 }
%struct.socket = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf*, %struct.mbuf* }

@.str = private unnamed_addr constant [41 x i8] c"Send on socket without cmid ECONNRESET.\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@SDP_TX_SIZE = common dso_local global i32 0, align 4
@SDP_MIN_TX_CREDITS = common dso_local global i32 0, align 4
@SDP_HEAD_SIZE = common dso_local global i64 0, align 8
@send_miss_no_credits = common dso_local global i32 0, align 4
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@TCPS_FIN_WAIT_2 = common dso_local global i64 0, align 8
@post_send_credits = common dso_local global i32 0, align 4
@SDP_NEEDFIN = common dso_local global i32 0, align 4
@sdp_nagle_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_post_sends(%struct.sdp_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %11 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %10, i32 0, i32 5
  %12 = load %struct.socket*, %struct.socket** %11, align 8
  store %struct.socket* %12, %struct.socket** %7, align 8
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %14 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.socket*, %struct.socket** %7, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  %26 = icmp ne %struct.mbuf* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %29 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %28, i32 0, i32 5
  %30 = load %struct.socket*, %struct.socket** %29, align 8
  %31 = call i32 @sdp_dbg(%struct.socket* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %33 = load i32, i32* @ECONNRESET, align 4
  %34 = call i32 @sdp_notify(%struct.sdp_sock* %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %21
  br label %283

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %272, %36
  %38 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %39 = call i32 @sdp_tx_ring_slots_left(%struct.sdp_sock* %38)
  %40 = load i32, i32* @SDP_TX_SIZE, align 4
  %41 = sdiv i32 %40, 2
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %45 = call i64 @sdp_xmit_poll(%struct.sdp_sock* %44, i32 1)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %48 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  %52 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %53 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ring_tail(i32 %54)
  %56 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %57 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %51
  %61 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %62 = call i32 @tx_credits(%struct.sdp_sock* %61)
  %63 = load i32, i32* @SDP_MIN_TX_CREDITS, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %67 = call i32 @sdp_tx_ring_slots_left(%struct.sdp_sock* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.socket*, %struct.socket** %7, align 8
  %71 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %72 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SDP_HEAD_SIZE, align 8
  %75 = sub nsw i64 %73, %74
  %76 = load i32, i32* %4, align 4
  %77 = call %struct.mbuf* @sdp_alloc_mb_chrcvbuf_ack(%struct.socket* %70, i64 %75, i32 %76)
  store %struct.mbuf* %77, %struct.mbuf** %5, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %79 = icmp eq %struct.mbuf* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %275

81:                                               ; preds = %69
  %82 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %83 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = call i32 @sdp_post_send(%struct.sdp_sock* %84, %struct.mbuf* %85)
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %65, %60, %51, %46
  %90 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %91 = call i32 @tx_credits(%struct.sdp_sock* %90)
  %92 = load i32, i32* @SDP_MIN_TX_CREDITS, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %89
  %95 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %96 = call i32 @sdp_tx_ring_slots_left(%struct.sdp_sock* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load %struct.socket*, %struct.socket** %7, align 8
  %100 = getelementptr inbounds %struct.socket, %struct.socket* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.mbuf*, %struct.mbuf** %101, align 8
  %103 = icmp ne %struct.mbuf* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %106 = load %struct.socket*, %struct.socket** %7, align 8
  %107 = getelementptr inbounds %struct.socket, %struct.socket* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.mbuf*, %struct.mbuf** %108, align 8
  %110 = call i64 @sdp_nagle_off(%struct.sdp_sock* %105, %struct.mbuf* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* @send_miss_no_credits, align 4
  %114 = call i32 @SDPSTATS_COUNTER_INC(i32 %113)
  br label %115

115:                                              ; preds = %112, %104, %98, %94, %89
  br label %116

116:                                              ; preds = %172, %115
  %117 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %118 = call i32 @tx_credits(%struct.sdp_sock* %117)
  %119 = load i32, i32* @SDP_MIN_TX_CREDITS, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %123 = call i32 @sdp_tx_ring_slots_left(%struct.sdp_sock* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load %struct.socket*, %struct.socket** %7, align 8
  %127 = getelementptr inbounds %struct.socket, %struct.socket* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load %struct.mbuf*, %struct.mbuf** %128, align 8
  store %struct.mbuf* %129, %struct.mbuf** %5, align 8
  %130 = icmp ne %struct.mbuf* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %134 = call i64 @sdp_nagle_off(%struct.sdp_sock* %132, %struct.mbuf* %133)
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %131, %125, %121, %116
  %137 = phi i1 [ false, %125 ], [ false, %121 ], [ false, %116 ], [ %135, %131 ]
  br i1 %137, label %138, label %181

138:                                              ; preds = %136
  %139 = load %struct.socket*, %struct.socket** %7, align 8
  %140 = getelementptr inbounds %struct.socket, %struct.socket* %139, i32 0, i32 0
  %141 = call i32 @SOCKBUF_LOCK(%struct.TYPE_5__* %140)
  %142 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %143 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %142, i32 0, i32 1
  %144 = load %struct.mbuf*, %struct.mbuf** %143, align 8
  %145 = load %struct.socket*, %struct.socket** %7, align 8
  %146 = getelementptr inbounds %struct.socket, %struct.socket* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store %struct.mbuf* %144, %struct.mbuf** %147, align 8
  %148 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %149 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %148, i32 0, i32 1
  %150 = load %struct.mbuf*, %struct.mbuf** %149, align 8
  %151 = load %struct.socket*, %struct.socket** %7, align 8
  %152 = getelementptr inbounds %struct.socket, %struct.socket* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store %struct.mbuf* %150, %struct.mbuf** %153, align 8
  %154 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %155 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %154, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %155, align 8
  %156 = load %struct.socket*, %struct.socket** %7, align 8
  %157 = getelementptr inbounds %struct.socket, %struct.socket* %156, i32 0, i32 0
  %158 = call i32 @SB_EMPTY_FIXUP(%struct.TYPE_5__* %157)
  %159 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %159, %struct.mbuf** %9, align 8
  br label %160

160:                                              ; preds = %168, %138
  %161 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %162 = icmp ne %struct.mbuf* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load %struct.socket*, %struct.socket** %7, align 8
  %165 = getelementptr inbounds %struct.socket, %struct.socket* %164, i32 0, i32 0
  %166 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %167 = call i32 @sbfree(%struct.TYPE_5__* %165, %struct.mbuf* %166)
  br label %168

168:                                              ; preds = %163
  %169 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %169, i32 0, i32 0
  %171 = load %struct.mbuf*, %struct.mbuf** %170, align 8
  store %struct.mbuf* %171, %struct.mbuf** %9, align 8
  br label %160

172:                                              ; preds = %160
  %173 = load %struct.socket*, %struct.socket** %7, align 8
  %174 = getelementptr inbounds %struct.socket, %struct.socket* %173, i32 0, i32 0
  %175 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__* %174)
  %176 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %177 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %178 = call i32 @sdp_post_send(%struct.sdp_sock* %176, %struct.mbuf* %177)
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %116

181:                                              ; preds = %136
  %182 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %183 = call i64 @credit_update_needed(%struct.sdp_sock* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %214

185:                                              ; preds = %181
  %186 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %187 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %190 = icmp sge i64 %188, %189
  br i1 %190, label %191, label %214

191:                                              ; preds = %185
  %192 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %193 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %197, label %214

197:                                              ; preds = %191
  %198 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %199 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %198, i32 0, i32 5
  %200 = load %struct.socket*, %struct.socket** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = call %struct.mbuf* @sdp_alloc_mb_data(%struct.socket* %200, i32 %201)
  store %struct.mbuf* %202, %struct.mbuf** %5, align 8
  %203 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %204 = icmp eq %struct.mbuf* %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  br label %275

206:                                              ; preds = %197
  %207 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %208 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %209 = call i32 @sdp_post_send(%struct.sdp_sock* %207, %struct.mbuf* %208)
  %210 = load i32, i32* @post_send_credits, align 4
  %211 = call i32 @SDPSTATS_COUNTER_INC(i32 %210)
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %206, %191, %185, %181
  %215 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %216 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @SDP_NEEDFIN, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %250

221:                                              ; preds = %214
  %222 = load %struct.socket*, %struct.socket** %7, align 8
  %223 = getelementptr inbounds %struct.socket, %struct.socket* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load %struct.mbuf*, %struct.mbuf** %224, align 8
  %226 = icmp ne %struct.mbuf* %225, null
  br i1 %226, label %250, label %227

227:                                              ; preds = %221
  %228 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %229 = call i32 @tx_credits(%struct.sdp_sock* %228)
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %250

231:                                              ; preds = %227
  %232 = load %struct.socket*, %struct.socket** %7, align 8
  %233 = load i32, i32* %4, align 4
  %234 = call %struct.mbuf* @sdp_alloc_mb_disconnect(%struct.socket* %232, i32 %233)
  store %struct.mbuf* %234, %struct.mbuf** %5, align 8
  %235 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %236 = icmp eq %struct.mbuf* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %275

238:                                              ; preds = %231
  %239 = load i32, i32* @SDP_NEEDFIN, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %242 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %246 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %247 = call i32 @sdp_post_send(%struct.sdp_sock* %245, %struct.mbuf* %246)
  %248 = load i32, i32* %6, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %238, %227, %221, %214
  %251 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %252 = call i32 @sdp_tx_ring_slots_left(%struct.sdp_sock* %251)
  %253 = load i32, i32* @SDP_MIN_TX_CREDITS, align 4
  %254 = icmp sle i32 %252, %253
  %255 = zext i1 %254 to i32
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %6, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %250
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %258, %250
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %266 = call i32 @sdp_arm_tx_cq(%struct.sdp_sock* %265)
  br label %267

267:                                              ; preds = %264, %261
  %268 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call i64 @sdp_xmit_poll(%struct.sdp_sock* %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  br label %37

273:                                              ; preds = %267
  br label %274

274:                                              ; preds = %273, %258
  br label %283

275:                                              ; preds = %237, %205, %80
  %276 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %277 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %276, i32 0, i32 3
  store i32 -1, i32* %277, align 4
  %278 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %279 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %278, i32 0, i32 4
  %280 = load i32, i32* @sdp_nagle_timeout, align 4
  %281 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %282 = call i32 @callout_reset(i32* %279, i32 1, i32 %280, %struct.sdp_sock* %281)
  br label %283

283:                                              ; preds = %275, %274, %35
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sdp_dbg(%struct.socket*, i8*) #1

declare dso_local i32 @sdp_notify(%struct.sdp_sock*, i32) #1

declare dso_local i32 @sdp_tx_ring_slots_left(%struct.sdp_sock*) #1

declare dso_local i64 @sdp_xmit_poll(%struct.sdp_sock*, i32) #1

declare dso_local i64 @ring_tail(i32) #1

declare dso_local i32 @tx_credits(%struct.sdp_sock*) #1

declare dso_local %struct.mbuf* @sdp_alloc_mb_chrcvbuf_ack(%struct.socket*, i64, i32) #1

declare dso_local i32 @sdp_post_send(%struct.sdp_sock*, %struct.mbuf*) #1

declare dso_local i64 @sdp_nagle_off(%struct.sdp_sock*, %struct.mbuf*) #1

declare dso_local i32 @SDPSTATS_COUNTER_INC(i32) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @SB_EMPTY_FIXUP(%struct.TYPE_5__*) #1

declare dso_local i32 @sbfree(%struct.TYPE_5__*, %struct.mbuf*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i64 @credit_update_needed(%struct.sdp_sock*) #1

declare dso_local %struct.mbuf* @sdp_alloc_mb_data(%struct.socket*, i32) #1

declare dso_local %struct.mbuf* @sdp_alloc_mb_disconnect(%struct.socket*, i32) #1

declare dso_local i32 @sdp_arm_tx_cq(%struct.sdp_sock*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
