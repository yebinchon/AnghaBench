; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_sosend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_sosend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.sockaddr = type { i32 }
%struct.uio = type { i64 }
%struct.mbuf = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.thread = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sdp_sock = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@MSG_EOR = common dso_local global i32 0, align 4
@SBS_CANTSENDMORE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@SDP_HEAD_SIZE = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@MSG_NBIO = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@M_EOR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PRUS_OOB = common dso_local global i32 0, align 4
@MSG_EOF = common dso_local global i32 0, align 4
@PRUS_EOF = common dso_local global i32 0, align 4
@PRUS_MORETOCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.uio*, %struct.mbuf*, %struct.mbuf*, i32, %struct.thread*)* @sdp_sosend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_sosend(%struct.socket* %0, %struct.sockaddr* %1, %struct.uio* %2, %struct.mbuf* %3, %struct.mbuf* %4, i32 %5, %struct.thread* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.uio*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.thread*, align 8
  %16 = alloca %struct.sdp_sock*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %9, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store %struct.uio* %2, %struct.uio** %11, align 8
  store %struct.mbuf* %3, %struct.mbuf** %12, align 8
  store %struct.mbuf* %4, %struct.mbuf** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.thread* %6, %struct.thread** %15, align 8
  %22 = load %struct.uio*, %struct.uio** %11, align 8
  %23 = icmp ne %struct.uio* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %7
  %25 = load %struct.uio*, %struct.uio** %11, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %18, align 8
  br label %33

28:                                               ; preds = %7
  %29 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %18, align 8
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %35 = icmp ne %struct.mbuf* %34, null
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %19, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %38 = icmp ne %struct.mbuf* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %46 = call i32 @m_freem(%struct.mbuf* %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %48 = icmp ne %struct.mbuf* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %51 = call i32 @m_freem(%struct.mbuf* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %8, align 4
  br label %334

54:                                               ; preds = %39
  %55 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %56 = call i32 @m_freem(%struct.mbuf* %55)
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  br label %57

57:                                               ; preds = %54, %33
  %58 = load i64, i64* %18, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = load %struct.socket*, %struct.socket** %9, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SOCK_STREAM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @MSG_EOR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %57
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %20, align 4
  br label %326

73:                                               ; preds = %66, %60
  %74 = load %struct.thread*, %struct.thread** %15, align 8
  %75 = icmp ne %struct.thread* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.thread*, %struct.thread** %15, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.socket*, %struct.socket** %9, align 8
  %84 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %83)
  store %struct.sdp_sock* %84, %struct.sdp_sock** %16, align 8
  %85 = load %struct.socket*, %struct.socket** %9, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 3
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @SBLOCKWAIT(i32 %87)
  %89 = call i32 @sblock(%struct.TYPE_11__* %86, i32 %88)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %326

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %210, %93
  br label %95

95:                                               ; preds = %318, %94
  %96 = load %struct.socket*, %struct.socket** %9, align 8
  %97 = getelementptr inbounds %struct.socket, %struct.socket* %96, i32 0, i32 3
  %98 = call i32 @SOCKBUF_LOCK(%struct.TYPE_11__* %97)
  %99 = load %struct.socket*, %struct.socket** %9, align 8
  %100 = getelementptr inbounds %struct.socket, %struct.socket* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SBS_CANTSENDMORE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = load %struct.socket*, %struct.socket** %9, align 8
  %108 = getelementptr inbounds %struct.socket, %struct.socket* %107, i32 0, i32 3
  %109 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_11__* %108)
  %110 = load i32, i32* @EPIPE, align 4
  store i32 %110, i32* %20, align 4
  br label %322

111:                                              ; preds = %95
  %112 = load %struct.socket*, %struct.socket** %9, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.socket*, %struct.socket** %9, align 8
  %118 = getelementptr inbounds %struct.socket, %struct.socket* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %20, align 4
  %120 = load %struct.socket*, %struct.socket** %9, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 1
  store i32 0, i32* %121, align 8
  %122 = load %struct.socket*, %struct.socket** %9, align 8
  %123 = getelementptr inbounds %struct.socket, %struct.socket* %122, i32 0, i32 3
  %124 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_11__* %123)
  br label %322

125:                                              ; preds = %111
  %126 = load %struct.socket*, %struct.socket** %9, align 8
  %127 = getelementptr inbounds %struct.socket, %struct.socket* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SS_ISCONNECTED, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %134 = icmp eq %struct.sockaddr* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.socket*, %struct.socket** %9, align 8
  %137 = getelementptr inbounds %struct.socket, %struct.socket* %136, i32 0, i32 3
  %138 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_11__* %137)
  %139 = load i32, i32* @ENOTCONN, align 4
  store i32 %139, i32* %20, align 4
  br label %322

140:                                              ; preds = %132, %125
  %141 = load %struct.socket*, %struct.socket** %9, align 8
  %142 = getelementptr inbounds %struct.socket, %struct.socket* %141, i32 0, i32 3
  %143 = call i64 @sbspace(%struct.TYPE_11__* %142)
  store i64 %143, i64* %17, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @MSG_OOB, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load i64, i64* %17, align 8
  %150 = add nsw i64 %149, 1024
  store i64 %150, i64* %17, align 8
  br label %151

151:                                              ; preds = %148, %140
  %152 = load i32, i32* %19, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load i64, i64* %18, align 8
  %156 = load %struct.sdp_sock*, %struct.sdp_sock** %16, align 8
  %157 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SDP_HEAD_SIZE, align 8
  %160 = sub nsw i64 %158, %159
  %161 = icmp sgt i64 %155, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = load %struct.socket*, %struct.socket** %9, align 8
  %164 = getelementptr inbounds %struct.socket, %struct.socket* %163, i32 0, i32 3
  %165 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_11__* %164)
  %166 = load i32, i32* @EMSGSIZE, align 4
  store i32 %166, i32* %20, align 4
  br label %322

167:                                              ; preds = %154, %151
  %168 = load i64, i64* %17, align 8
  %169 = load i64, i64* %18, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %211

171:                                              ; preds = %167
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %171
  %175 = load i64, i64* %17, align 8
  %176 = load %struct.socket*, %struct.socket** %9, align 8
  %177 = getelementptr inbounds %struct.socket, %struct.socket* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %175, %179
  br i1 %180, label %181, label %211

181:                                              ; preds = %174, %171
  %182 = load %struct.socket*, %struct.socket** %9, align 8
  %183 = getelementptr inbounds %struct.socket, %struct.socket* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @SS_NBIO, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* @MSG_NBIO, align 4
  %191 = load i32, i32* @MSG_DONTWAIT, align 4
  %192 = or i32 %190, %191
  %193 = and i32 %189, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %188, %181
  %196 = load %struct.socket*, %struct.socket** %9, align 8
  %197 = getelementptr inbounds %struct.socket, %struct.socket* %196, i32 0, i32 3
  %198 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_11__* %197)
  %199 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %199, i32* %20, align 4
  br label %322

200:                                              ; preds = %188
  %201 = load %struct.socket*, %struct.socket** %9, align 8
  %202 = getelementptr inbounds %struct.socket, %struct.socket* %201, i32 0, i32 3
  %203 = call i32 @sbwait(%struct.TYPE_11__* %202)
  store i32 %203, i32* %20, align 4
  %204 = load %struct.socket*, %struct.socket** %9, align 8
  %205 = getelementptr inbounds %struct.socket, %struct.socket* %204, i32 0, i32 3
  %206 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_11__* %205)
  %207 = load i32, i32* %20, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %322

210:                                              ; preds = %200
  br label %94

211:                                              ; preds = %174, %167
  %212 = load %struct.socket*, %struct.socket** %9, align 8
  %213 = getelementptr inbounds %struct.socket, %struct.socket* %212, i32 0, i32 3
  %214 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_11__* %213)
  br label %215

215:                                              ; preds = %315, %211
  %216 = load %struct.uio*, %struct.uio** %11, align 8
  %217 = icmp eq %struct.uio* %216, null
  br i1 %217, label %218, label %230

218:                                              ; preds = %215
  store i64 0, i64* %18, align 8
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* @MSG_EOR, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load i32, i32* @M_EOR, align 4
  %225 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %226 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %223, %218
  br label %268

230:                                              ; preds = %215
  %231 = load i64, i64* %17, align 8
  %232 = load %struct.sdp_sock*, %struct.sdp_sock** %16, align 8
  %233 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @SDP_HEAD_SIZE, align 8
  %236 = sub nsw i64 %234, %235
  %237 = call i32 @min(i64 %231, i64 %236)
  store i32 %237, i32* %21, align 4
  %238 = load %struct.uio*, %struct.uio** %11, align 8
  %239 = load i32, i32* @M_WAITOK, align 4
  %240 = load i32, i32* %21, align 4
  %241 = load i32, i32* @M_PKTHDR, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @MSG_EOR, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %230
  %247 = load i32, i32* @M_EOR, align 4
  br label %249

248:                                              ; preds = %230
  br label %249

249:                                              ; preds = %248, %246
  %250 = phi i32 [ %247, %246 ], [ 0, %248 ]
  %251 = or i32 %241, %250
  %252 = call %struct.mbuf* @m_uiotombuf(%struct.uio* %238, i32 %239, i32 %240, i32 0, i32 %251)
  store %struct.mbuf* %252, %struct.mbuf** %12, align 8
  %253 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %254 = icmp eq %struct.mbuf* %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load i32, i32* @EFAULT, align 4
  store i32 %256, i32* %20, align 4
  br label %322

257:                                              ; preds = %249
  %258 = load i64, i64* %18, align 8
  %259 = load %struct.uio*, %struct.uio** %11, align 8
  %260 = getelementptr inbounds %struct.uio, %struct.uio* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = sub nsw i64 %258, %261
  %263 = load i64, i64* %17, align 8
  %264 = sub nsw i64 %263, %262
  store i64 %264, i64* %17, align 8
  %265 = load %struct.uio*, %struct.uio** %11, align 8
  %266 = getelementptr inbounds %struct.uio, %struct.uio* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %18, align 8
  br label %268

268:                                              ; preds = %257, %229
  %269 = load %struct.socket*, %struct.socket** %9, align 8
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* @MSG_OOB, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i32, i32* @PRUS_OOB, align 4
  br label %299

276:                                              ; preds = %268
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* @MSG_EOF, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load i64, i64* %18, align 8
  %283 = icmp sle i64 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = load i32, i32* @PRUS_EOF, align 4
  br label %297

286:                                              ; preds = %281, %276
  %287 = load i64, i64* %18, align 8
  %288 = icmp sgt i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %286
  %290 = load i64, i64* %17, align 8
  %291 = icmp sgt i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  %293 = load i32, i32* @PRUS_MORETOCOME, align 4
  br label %295

294:                                              ; preds = %289, %286
  br label %295

295:                                              ; preds = %294, %292
  %296 = phi i32 [ %293, %292 ], [ 0, %294 ]
  br label %297

297:                                              ; preds = %295, %284
  %298 = phi i32 [ %285, %284 ], [ %296, %295 ]
  br label %299

299:                                              ; preds = %297, %274
  %300 = phi i32 [ %275, %274 ], [ %298, %297 ]
  %301 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %302 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %303 = load %struct.thread*, %struct.thread** %15, align 8
  %304 = call i32 @sdp_send(%struct.socket* %269, i32 %300, %struct.mbuf* %301, %struct.sockaddr* %302, i32* null, %struct.thread* %303)
  store i32 %304, i32* %20, align 4
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  %305 = load i32, i32* %20, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  br label %322

308:                                              ; preds = %299
  br label %309

309:                                              ; preds = %308
  %310 = load i64, i64* %18, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load i64, i64* %17, align 8
  %314 = icmp sgt i64 %313, 0
  br label %315

315:                                              ; preds = %312, %309
  %316 = phi i1 [ false, %309 ], [ %314, %312 ]
  br i1 %316, label %215, label %317

317:                                              ; preds = %315
  br label %318

318:                                              ; preds = %317
  %319 = load i64, i64* %18, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %95, label %321

321:                                              ; preds = %318
  br label %322

322:                                              ; preds = %321, %307, %255, %209, %195, %162, %135, %116, %106
  %323 = load %struct.socket*, %struct.socket** %9, align 8
  %324 = getelementptr inbounds %struct.socket, %struct.socket* %323, i32 0, i32 3
  %325 = call i32 @sbunlock(%struct.TYPE_11__* %324)
  br label %326

326:                                              ; preds = %322, %92, %71
  %327 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %328 = icmp ne %struct.mbuf* %327, null
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %331 = call i32 @m_freem(%struct.mbuf* %330)
  br label %332

332:                                              ; preds = %329, %326
  %333 = load i32, i32* %20, align 4
  store i32 %333, i32* %8, align 4
  br label %334

334:                                              ; preds = %332, %52
  %335 = load i32, i32* %8, align 4
  ret i32 %335
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @sblock(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SBLOCKWAIT(i32) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local i64 @sbspace(%struct.TYPE_11__*) #1

declare dso_local i32 @sbwait(%struct.TYPE_11__*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local %struct.mbuf* @m_uiotombuf(%struct.uio*, i32, i32, i32, i32) #1

declare dso_local i32 @sdp_send(%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, i32*, %struct.thread*) #1

declare dso_local i32 @sbunlock(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
