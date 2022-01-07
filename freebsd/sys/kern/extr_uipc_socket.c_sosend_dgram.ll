; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sosend_dgram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sosend_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)* }
%struct.TYPE_12__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.uio = type { i64 }
%struct.mbuf = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.thread = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"sosend_dgram: !SOCK_DGRAM\00", align 1
@PR_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"sosend_dgram: !PR_ATOMIC\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MSG_DONTROUTE = common dso_local global i32 0, align 4
@SO_DONTROUTE = common dso_local global i32 0, align 4
@SBS_CANTSENDMORE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@PR_CONNREQUIRED = common dso_local global i32 0, align 4
@PR_IMPLOPCL = common dso_local global i32 0, align 4
@SS_ISCONFIRMING = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@M_EOR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@max_hdr = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"sosend_dgram: resid != 0\00", align 1
@PRUS_OOB = common dso_local global i32 0, align 4
@MSG_EOF = common dso_local global i32 0, align 4
@PRUS_EOF = common dso_local global i32 0, align 4
@MSG_MORETOCOME = common dso_local global i32 0, align 4
@PRUS_MORETOCOME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sosend_dgram(%struct.socket* %0, %struct.sockaddr* %1, %struct.uio* %2, %struct.mbuf* %3, %struct.mbuf* %4, i32 %5, %struct.thread* %6) #0 {
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.thread*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.uio* %2, %struct.uio** %10, align 8
  store %struct.mbuf* %3, %struct.mbuf** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.thread* %6, %struct.thread** %14, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.socket*, %struct.socket** %8, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCK_DGRAM, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.socket*, %struct.socket** %8, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PR_ATOMIC, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.uio*, %struct.uio** %10, align 8
  %36 = icmp ne %struct.uio* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %7
  %38 = load %struct.uio*, %struct.uio** %10, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  br label %46

41:                                               ; preds = %7
  %42 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %16, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i64, i64* %16, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %18, align 4
  br label %340

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @MSG_DONTROUTE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.socket*, %struct.socket** %8, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SO_DONTROUTE, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %56, %51
  %64 = phi i1 [ false, %51 ], [ %62, %56 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load %struct.thread*, %struct.thread** %14, align 8
  %67 = icmp ne %struct.thread* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.thread*, %struct.thread** %14, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %76 = icmp ne %struct.mbuf* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.socket*, %struct.socket** %8, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 5
  %84 = call i32 @SOCKBUF_LOCK(%struct.TYPE_12__* %83)
  %85 = load %struct.socket*, %struct.socket** %8, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SBS_CANTSENDMORE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.socket*, %struct.socket** %8, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 5
  %95 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_12__* %94)
  %96 = load i32, i32* @EPIPE, align 4
  store i32 %96, i32* %18, align 4
  br label %340

97:                                               ; preds = %81
  %98 = load %struct.socket*, %struct.socket** %8, align 8
  %99 = getelementptr inbounds %struct.socket, %struct.socket* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.socket*, %struct.socket** %8, align 8
  %104 = getelementptr inbounds %struct.socket, %struct.socket* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %18, align 4
  %106 = load %struct.socket*, %struct.socket** %8, align 8
  %107 = getelementptr inbounds %struct.socket, %struct.socket* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.socket*, %struct.socket** %8, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 5
  %110 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_12__* %109)
  br label %340

111:                                              ; preds = %97
  %112 = load %struct.socket*, %struct.socket** %8, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SS_ISCONNECTED, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %177

118:                                              ; preds = %111
  %119 = load %struct.socket*, %struct.socket** %8, align 8
  %120 = getelementptr inbounds %struct.socket, %struct.socket* %119, i32 0, i32 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @PR_CONNREQUIRED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %155

127:                                              ; preds = %118
  %128 = load %struct.socket*, %struct.socket** %8, align 8
  %129 = getelementptr inbounds %struct.socket, %struct.socket* %128, i32 0, i32 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @PR_IMPLOPCL, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %127
  %137 = load %struct.socket*, %struct.socket** %8, align 8
  %138 = getelementptr inbounds %struct.socket, %struct.socket* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SS_ISCONFIRMING, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load i64, i64* %16, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.socket*, %struct.socket** %8, align 8
  %151 = getelementptr inbounds %struct.socket, %struct.socket* %150, i32 0, i32 5
  %152 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_12__* %151)
  %153 = load i32, i32* @ENOTCONN, align 4
  store i32 %153, i32* %18, align 4
  br label %340

154:                                              ; preds = %146, %136
  br label %176

155:                                              ; preds = %127, %118
  %156 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %157 = icmp eq %struct.sockaddr* %156, null
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load %struct.socket*, %struct.socket** %8, align 8
  %160 = getelementptr inbounds %struct.socket, %struct.socket* %159, i32 0, i32 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @PR_CONNREQUIRED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* @ENOTCONN, align 4
  store i32 %168, i32* %18, align 4
  br label %171

169:                                              ; preds = %158
  %170 = load i32, i32* @EDESTADDRREQ, align 4
  store i32 %170, i32* %18, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = load %struct.socket*, %struct.socket** %8, align 8
  %173 = getelementptr inbounds %struct.socket, %struct.socket* %172, i32 0, i32 5
  %174 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_12__* %173)
  br label %340

175:                                              ; preds = %155
  br label %176

176:                                              ; preds = %175, %154
  br label %177

177:                                              ; preds = %176, %111
  %178 = load %struct.socket*, %struct.socket** %8, align 8
  %179 = getelementptr inbounds %struct.socket, %struct.socket* %178, i32 0, i32 5
  %180 = call i64 @sbspace(%struct.TYPE_12__* %179)
  store i64 %180, i64* %15, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @MSG_OOB, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load i64, i64* %15, align 8
  %187 = add nsw i64 %186, 1024
  store i64 %187, i64* %15, align 8
  br label %188

188:                                              ; preds = %185, %177
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %15, align 8
  %192 = sub nsw i64 %191, %190
  store i64 %192, i64* %15, align 8
  %193 = load %struct.socket*, %struct.socket** %8, align 8
  %194 = getelementptr inbounds %struct.socket, %struct.socket* %193, i32 0, i32 5
  %195 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_12__* %194)
  %196 = load i64, i64* %16, align 8
  %197 = load i64, i64* %15, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %188
  %200 = load i32, i32* @EMSGSIZE, align 4
  store i32 %200, i32* %18, align 4
  br label %340

201:                                              ; preds = %188
  %202 = load %struct.uio*, %struct.uio** %10, align 8
  %203 = icmp eq %struct.uio* %202, null
  br i1 %203, label %204, label %216

204:                                              ; preds = %201
  store i64 0, i64* %16, align 8
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @MSG_EOR, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load i32, i32* @M_EOR, align 4
  %211 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %212 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %209, %204
  br label %248

216:                                              ; preds = %201
  %217 = load %struct.uio*, %struct.uio** %10, align 8
  %218 = load i32, i32* @M_WAITOK, align 4
  %219 = load i64, i64* %15, align 8
  %220 = load i32, i32* @max_hdr, align 4
  %221 = load i32, i32* @M_PKTHDR, align 4
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* @MSG_EOR, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %216
  %227 = load i32, i32* @M_EOR, align 4
  br label %229

228:                                              ; preds = %216
  br label %229

229:                                              ; preds = %228, %226
  %230 = phi i32 [ %227, %226 ], [ 0, %228 ]
  %231 = or i32 %221, %230
  %232 = call %struct.mbuf* @m_uiotombuf(%struct.uio* %217, i32 %218, i64 %219, i32 %220, i32 %231)
  store %struct.mbuf* %232, %struct.mbuf** %11, align 8
  %233 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %234 = icmp eq %struct.mbuf* %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %229
  %236 = load i32, i32* @EFAULT, align 4
  store i32 %236, i32* %18, align 4
  br label %340

237:                                              ; preds = %229
  %238 = load i64, i64* %16, align 8
  %239 = load %struct.uio*, %struct.uio** %10, align 8
  %240 = getelementptr inbounds %struct.uio, %struct.uio* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %238, %241
  %243 = load i64, i64* %15, align 8
  %244 = sub nsw i64 %243, %242
  store i64 %244, i64* %15, align 8
  %245 = load %struct.uio*, %struct.uio** %10, align 8
  %246 = getelementptr inbounds %struct.uio, %struct.uio* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %16, align 8
  br label %248

248:                                              ; preds = %237, %215
  %249 = load i64, i64* %16, align 8
  %250 = icmp eq i64 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i32 @KASSERT(i32 %251, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %253 = load i32, i32* %19, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %248
  %256 = load %struct.socket*, %struct.socket** %8, align 8
  %257 = call i32 @SOCK_LOCK(%struct.socket* %256)
  %258 = load i32, i32* @SO_DONTROUTE, align 4
  %259 = load %struct.socket*, %struct.socket** %8, align 8
  %260 = getelementptr inbounds %struct.socket, %struct.socket* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load %struct.socket*, %struct.socket** %8, align 8
  %264 = call i32 @SOCK_UNLOCK(%struct.socket* %263)
  br label %265

265:                                              ; preds = %255, %248
  %266 = load %struct.socket*, %struct.socket** %8, align 8
  %267 = call i32 @VNET_SO_ASSERT(%struct.socket* %266)
  %268 = load %struct.socket*, %struct.socket** %8, align 8
  %269 = getelementptr inbounds %struct.socket, %struct.socket* %268, i32 0, i32 4
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)*, i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)** %273, align 8
  %275 = load %struct.socket*, %struct.socket** %8, align 8
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* @MSG_OOB, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %265
  %281 = load i32, i32* @PRUS_OOB, align 4
  br label %319

282:                                              ; preds = %265
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* @MSG_EOF, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %282
  %288 = load %struct.socket*, %struct.socket** %8, align 8
  %289 = getelementptr inbounds %struct.socket, %struct.socket* %288, i32 0, i32 4
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @PR_IMPLOPCL, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %287
  %297 = load i64, i64* %16, align 8
  %298 = icmp sle i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = load i32, i32* @PRUS_EOF, align 4
  br label %317

301:                                              ; preds = %296, %287, %282
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* @MSG_MORETOCOME, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %301
  %307 = load i64, i64* %16, align 8
  %308 = icmp sgt i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  %310 = load i64, i64* %15, align 8
  %311 = icmp sgt i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %309, %301
  %313 = load i32, i32* @PRUS_MORETOCOME, align 4
  br label %315

314:                                              ; preds = %309, %306
  br label %315

315:                                              ; preds = %314, %312
  %316 = phi i32 [ %313, %312 ], [ 0, %314 ]
  br label %317

317:                                              ; preds = %315, %299
  %318 = phi i32 [ %300, %299 ], [ %316, %315 ]
  br label %319

319:                                              ; preds = %317, %280
  %320 = phi i32 [ %281, %280 ], [ %318, %317 ]
  %321 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %322 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %323 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %324 = load %struct.thread*, %struct.thread** %14, align 8
  %325 = call i32 %274(%struct.socket* %275, i32 %320, %struct.mbuf* %321, %struct.sockaddr* %322, %struct.mbuf* %323, %struct.thread* %324)
  store i32 %325, i32* %18, align 4
  %326 = load i32, i32* %19, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %339

328:                                              ; preds = %319
  %329 = load %struct.socket*, %struct.socket** %8, align 8
  %330 = call i32 @SOCK_LOCK(%struct.socket* %329)
  %331 = load i32, i32* @SO_DONTROUTE, align 4
  %332 = xor i32 %331, -1
  %333 = load %struct.socket*, %struct.socket** %8, align 8
  %334 = getelementptr inbounds %struct.socket, %struct.socket* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %335, %332
  store i32 %336, i32* %334, align 8
  %337 = load %struct.socket*, %struct.socket** %8, align 8
  %338 = call i32 @SOCK_UNLOCK(%struct.socket* %337)
  br label %339

339:                                              ; preds = %328, %319
  store i32 0, i32* %17, align 4
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  br label %340

340:                                              ; preds = %339, %235, %199, %171, %149, %102, %92, %49
  %341 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %342 = icmp ne %struct.mbuf* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %345 = call i32 @m_freem(%struct.mbuf* %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %348 = icmp ne %struct.mbuf* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %351 = call i32 @m_freem(%struct.mbuf* %350)
  br label %352

352:                                              ; preds = %349, %346
  %353 = load i32, i32* %18, align 4
  ret i32 %353
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_12__*) #1

declare dso_local i64 @sbspace(%struct.TYPE_12__*) #1

declare dso_local %struct.mbuf* @m_uiotombuf(%struct.uio*, i32, i64, i32, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @VNET_SO_ASSERT(%struct.socket*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
