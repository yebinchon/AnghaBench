; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32*, %struct.socket*, i64 }
%struct.socket = type { i32 }
%struct.rpc_msg = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.cf_conn = type { i64, %struct.mbuf*, i8*, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.uio = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.mbuf* }

@REPLY = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@XPRT_DIED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.rpc_msg*, %struct.sockaddr**, %struct.mbuf**)* @svc_vc_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_vc_recv(%struct.TYPE_10__* %0, %struct.rpc_msg* %1, %struct.sockaddr** %2, %struct.mbuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.rpc_msg*, align 8
  %8 = alloca %struct.sockaddr**, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.cf_conn*, align 8
  %11 = alloca %struct.uio, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.socket*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %7, align 8
  store %struct.sockaddr** %2, %struct.sockaddr*** %8, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.cf_conn*
  store %struct.cf_conn* %21, %struct.cf_conn** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load %struct.socket*, %struct.socket** %23, align 8
  store %struct.socket* %24, %struct.socket** %13, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = call i32 @sx_xlock(i32* %26)
  br label %28

28:                                               ; preds = %263, %114, %4
  br label %29

29:                                               ; preds = %59, %28
  %30 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %31 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %30, i32 0, i32 1
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  %33 = icmp ne %struct.mbuf* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %36 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %35, i32 0, i32 3
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %41 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %46 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %39, %34
  %51 = phi i1 [ true, %39 ], [ true, %34 ], [ %49, %44 ]
  br label %52

52:                                               ; preds = %50, %29
  %53 = phi i1 [ false, %29 ], [ %51, %50 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = call i32 @svc_vc_process_pending(%struct.TYPE_10__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %60

59:                                               ; preds = %54
  br label %29

60:                                               ; preds = %58, %52
  %61 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %62 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %61, i32 0, i32 3
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, null
  br i1 %64, label %65, label %176

65:                                               ; preds = %60
  %66 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %67 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %176

70:                                               ; preds = %65
  %71 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %72 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %176

75:                                               ; preds = %70
  %76 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %77 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %76, i32 0, i32 3
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp uge i64 %81, 8
  br i1 %82, label %90, label %83

83:                                               ; preds = %75
  %84 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %85 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %84, i32 0, i32 3
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = call i32 @m_length(%struct.TYPE_11__* %86, i32* null)
  %88 = sext i32 %87 to i64
  %89 = icmp uge i64 %88, 8
  br i1 %89, label %90, label %127

90:                                               ; preds = %83, %75
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %127

95:                                               ; preds = %90
  %96 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %97 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %96, i32 0, i32 3
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %100 = bitcast i32* %99 to i8*
  %101 = call i32 @m_copydata(%struct.TYPE_11__* %98, i32 0, i32 8, i8* %100)
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ntohl(i32 %103)
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ntohl(i32 %107)
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @REPLY, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %95
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %119 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %118, i32 0, i32 3
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @clnt_bck_svccall(i32* %117, %struct.TYPE_11__* %120, i32 %122)
  %124 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %125 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %124, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %125, align 8
  br label %28

126:                                              ; preds = %95
  br label %127

127:                                              ; preds = %126, %90, %83
  %128 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %129 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i32, i32* @XDR_DECODE, align 4
  %132 = call i32 @xdrmbuf_create(i32* %14, %struct.TYPE_11__* %130, i32 %131)
  %133 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %134 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %133, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %134, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = call i32 @svc_vc_process_pending(%struct.TYPE_10__* %135)
  %137 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %138 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %137, i32 0, i32 3
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = icmp eq %struct.TYPE_11__* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %127
  %142 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %143 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %141, %127
  %147 = load %struct.socket*, %struct.socket** %13, align 8
  %148 = getelementptr inbounds %struct.socket, %struct.socket* %147, i32 0, i32 0
  %149 = call i32 @SOCKBUF_LOCK(i32* %148)
  %150 = load %struct.socket*, %struct.socket** %13, align 8
  %151 = call i32 @soreadable(%struct.socket* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %155 = call i32 @xprt_inactive_self(%struct.TYPE_10__* %154)
  br label %156

156:                                              ; preds = %153, %146
  %157 = load %struct.socket*, %struct.socket** %13, align 8
  %158 = getelementptr inbounds %struct.socket, %struct.socket* %157, i32 0, i32 0
  %159 = call i32 @SOCKBUF_UNLOCK(i32* %158)
  br label %160

160:                                              ; preds = %156, %141
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = call i32 @sx_xunlock(i32* %162)
  %164 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %165 = call i32 @xdr_callmsg(i32* %14, %struct.rpc_msg* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = call i32 @XDR_DESTROY(i32* %14)
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %5, align 4
  br label %264

170:                                              ; preds = %160
  %171 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %171, align 8
  %172 = call %struct.mbuf* @xdrmbuf_getall(i32* %14)
  %173 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* %172, %struct.mbuf** %173, align 8
  %174 = call i32 @XDR_DESTROY(i32* %14)
  %175 = load i32, i32* @TRUE, align 4
  store i32 %175, i32* %5, align 4
  br label %264

176:                                              ; preds = %70, %65, %60
  %177 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  store i32 1000000000, i32* %177, align 4
  %178 = load i32, i32* @curthread, align 4
  %179 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  store i32 %178, i32* %179, align 4
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  %180 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %180, i32* %16, align 4
  %181 = load %struct.socket*, %struct.socket** %13, align 8
  %182 = call i32 @soreceive(%struct.socket* %181, i32* null, %struct.uio* %11, %struct.mbuf** %12, i32* null, i32* %16)
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* @EWOULDBLOCK, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %204

186:                                              ; preds = %176
  %187 = load %struct.socket*, %struct.socket** %13, align 8
  %188 = getelementptr inbounds %struct.socket, %struct.socket* %187, i32 0, i32 0
  %189 = call i32 @SOCKBUF_LOCK(i32* %188)
  %190 = load %struct.socket*, %struct.socket** %13, align 8
  %191 = call i32 @soreadable(%struct.socket* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %186
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %195 = call i32 @xprt_inactive_self(%struct.TYPE_10__* %194)
  br label %196

196:                                              ; preds = %193, %186
  %197 = load %struct.socket*, %struct.socket** %13, align 8
  %198 = getelementptr inbounds %struct.socket, %struct.socket* %197, i32 0, i32 0
  %199 = call i32 @SOCKBUF_UNLOCK(i32* %198)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = call i32 @sx_xunlock(i32* %201)
  %203 = load i32, i32* @FALSE, align 4
  store i32 %203, i32* %5, align 4
  br label %264

204:                                              ; preds = %176
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %204
  %208 = load %struct.socket*, %struct.socket** %13, align 8
  %209 = getelementptr inbounds %struct.socket, %struct.socket* %208, i32 0, i32 0
  %210 = call i32 @SOCKBUF_LOCK(i32* %209)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %207
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  %218 = load %struct.socket*, %struct.socket** %13, align 8
  %219 = load i32, i32* @SO_RCV, align 4
  %220 = call i32 @soupcall_clear(%struct.socket* %218, i32 %219)
  br label %221

221:                                              ; preds = %215, %207
  %222 = load %struct.socket*, %struct.socket** %13, align 8
  %223 = getelementptr inbounds %struct.socket, %struct.socket* %222, i32 0, i32 0
  %224 = call i32 @SOCKBUF_UNLOCK(i32* %223)
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %226 = call i32 @xprt_inactive_self(%struct.TYPE_10__* %225)
  %227 = load i8*, i8** @XPRT_DIED, align 8
  %228 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %229 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = call i32 @sx_xunlock(i32* %231)
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %5, align 4
  br label %264

234:                                              ; preds = %204
  %235 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %236 = icmp ne %struct.mbuf* %235, null
  br i1 %236, label %247, label %237

237:                                              ; preds = %234
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %239 = call i32 @xprt_inactive_self(%struct.TYPE_10__* %238)
  %240 = load i8*, i8** @XPRT_DIED, align 8
  %241 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %242 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = call i32 @sx_xunlock(i32* %244)
  %246 = load i32, i32* @FALSE, align 4
  store i32 %246, i32* %5, align 4
  br label %264

247:                                              ; preds = %234
  %248 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %249 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %248, i32 0, i32 1
  %250 = load %struct.mbuf*, %struct.mbuf** %249, align 8
  %251 = icmp ne %struct.mbuf* %250, null
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %254 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %255 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %254, i32 0, i32 1
  %256 = load %struct.mbuf*, %struct.mbuf** %255, align 8
  %257 = call %struct.TYPE_12__* @m_last(%struct.mbuf* %256)
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  store %struct.mbuf* %253, %struct.mbuf** %258, align 8
  br label %263

259:                                              ; preds = %247
  %260 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %261 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %262 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %261, i32 0, i32 1
  store %struct.mbuf* %260, %struct.mbuf** %262, align 8
  br label %263

263:                                              ; preds = %259, %252
  br label %28

264:                                              ; preds = %237, %221, %196, %170, %167
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @svc_vc_process_pending(%struct.TYPE_10__*) #1

declare dso_local i32 @m_length(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @m_copydata(%struct.TYPE_11__*, i32, i32, i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @clnt_bck_svccall(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @xdrmbuf_create(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soreadable(%struct.socket*) #1

declare dso_local i32 @xprt_inactive_self(%struct.TYPE_10__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @xdr_callmsg(i32*, %struct.rpc_msg*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local %struct.mbuf* @xdrmbuf_getall(i32*) #1

declare dso_local i32 @soreceive(%struct.socket*, i32*, %struct.uio*, %struct.mbuf**, i32*, i32*) #1

declare dso_local i32 @soupcall_clear(%struct.socket*, i32) #1

declare dso_local %struct.TYPE_12__* @m_last(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
