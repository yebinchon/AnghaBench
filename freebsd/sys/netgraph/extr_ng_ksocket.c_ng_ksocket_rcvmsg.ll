; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.socket* }
%struct.socket = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.sockaddr = type { i32 }
%struct.ng_mesg = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.ng_ksocket_sockopt = type { i32, i32, i32 }
%struct.sockopt = type { i32, i32*, i32, i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@SADATA_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@KSF_ACCEPTING = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@KSF_CONNECTING = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISCONFIRMING = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@NG_KSOCKET_MAX_OPTLEN = common dso_local global i32 0, align 4
@SOPT_GET = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_ksocket_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ksocket_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ng_mesg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i32 (%struct.socket*, %struct.sockaddr**)*, align 8
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ng_ksocket_sockopt*, align 8
  %20 = alloca %struct.sockopt, align 8
  %21 = alloca %struct.ng_ksocket_sockopt*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sockopt, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %24 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %24, %struct.thread** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.TYPE_10__* @NG_NODE_PRIVATE(i32 %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %8, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load %struct.socket*, %struct.socket** %28, align 8
  store %struct.socket* %29, %struct.socket** %9, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %10, align 8
  store i32 0, i32* %11, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %32 = call i32 @NGI_GET_MSG(i32 %30, %struct.ng_mesg* %31)
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %34 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %450 [
    i32 133, label %37
  ]

37:                                               ; preds = %3
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %39 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %447 [
    i32 135, label %42
    i32 129, label %76
    i32 136, label %106
    i32 134, label %164
    i32 132, label %244
    i32 130, label %244
    i32 131, label %333
    i32 128, label %404
  ]

42:                                               ; preds = %37
  %43 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %44 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.sockaddr*
  store %struct.sockaddr* %46, %struct.sockaddr** %14, align 8
  %47 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %48 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SADATA_OFFSET, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %42
  %54 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %55 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %59 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %53, %42
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @ERROUT(i32 %63)
  br label %65

65:                                               ; preds = %62, %53
  %66 = load %struct.socket*, %struct.socket** %9, align 8
  %67 = icmp eq %struct.socket* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @ENXIO, align 4
  %70 = call i32 @ERROUT(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.socket*, %struct.socket** %9, align 8
  %73 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %74 = load %struct.thread*, %struct.thread** %7, align 8
  %75 = call i32 @sobind(%struct.socket* %72, %struct.sockaddr* %73, %struct.thread* %74)
  store i32 %75, i32* %11, align 4
  br label %449

76:                                               ; preds = %37
  %77 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %78 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 4
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @EINVAL, align 4
  %85 = call i32 @ERROUT(i32 %84)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.socket*, %struct.socket** %9, align 8
  %88 = icmp eq %struct.socket* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* @ENXIO, align 4
  %91 = call i32 @ERROUT(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* @SS_NBIO, align 4
  %94 = load %struct.socket*, %struct.socket** %9, align 8
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.socket*, %struct.socket** %9, align 8
  %99 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %100 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.thread*, %struct.thread** %7, align 8
  %105 = call i32 @solisten(%struct.socket* %98, i32 %103, %struct.thread* %104)
  store i32 %105, i32* %11, align 4
  br label %449

106:                                              ; preds = %37
  %107 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %108 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EINVAL, align 4
  %114 = call i32 @ERROUT(i32 %113)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.socket*, %struct.socket** %9, align 8
  %117 = icmp eq %struct.socket* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @ENXIO, align 4
  %120 = call i32 @ERROUT(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.socket*, %struct.socket** %9, align 8
  %123 = getelementptr inbounds %struct.socket, %struct.socket* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SO_ACCEPTCONN, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* @EINVAL, align 4
  %130 = call i32 @ERROUT(i32 %129)
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @KSF_ACCEPTING, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @EALREADY, align 4
  %140 = call i32 @ERROUT(i32 %139)
  br label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = call i32 @ng_ksocket_accept(%struct.TYPE_10__* %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @EWOULDBLOCK, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @ERROUT(i32 %151)
  br label %153

153:                                              ; preds = %150, %146, %141
  %154 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %155 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i8* @NGI_RETADDR(i32 %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  store i8* %161, i8** %13, align 8
  br label %449

164:                                              ; preds = %37
  %165 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %166 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to %struct.sockaddr*
  store %struct.sockaddr* %168, %struct.sockaddr** %15, align 8
  %169 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %170 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @SADATA_OFFSET, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %184, label %175

175:                                              ; preds = %164
  %176 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %177 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %181 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %175, %164
  %185 = load i32, i32* @EINVAL, align 4
  %186 = call i32 @ERROUT(i32 %185)
  br label %187

187:                                              ; preds = %184, %175
  %188 = load %struct.socket*, %struct.socket** %9, align 8
  %189 = icmp eq %struct.socket* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* @ENXIO, align 4
  %192 = call i32 @ERROUT(i32 %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.socket*, %struct.socket** %9, align 8
  %195 = getelementptr inbounds %struct.socket, %struct.socket* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @SS_ISCONNECTING, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32, i32* @EALREADY, align 4
  %202 = call i32 @ERROUT(i32 %201)
  br label %203

203:                                              ; preds = %200, %193
  %204 = load %struct.socket*, %struct.socket** %9, align 8
  %205 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %206 = load %struct.thread*, %struct.thread** %7, align 8
  %207 = call i32 @soconnect(%struct.socket* %204, %struct.sockaddr* %205, %struct.thread* %206)
  store i32 %207, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %203
  %210 = load i32, i32* @SS_ISCONNECTING, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.socket*, %struct.socket** %9, align 8
  %213 = getelementptr inbounds %struct.socket, %struct.socket* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @ERROUT(i32 %216)
  br label %218

218:                                              ; preds = %209, %203
  %219 = load %struct.socket*, %struct.socket** %9, align 8
  %220 = getelementptr inbounds %struct.socket, %struct.socket* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @SS_ISCONNECTING, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %218
  %226 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %227 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %5, align 4
  %233 = call i8* @NGI_RETADDR(i32 %232)
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 1
  store i8* %233, i8** %235, align 8
  store i8* %233, i8** %13, align 8
  %236 = load i32, i32* @KSF_CONNECTING, align 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* @EINPROGRESS, align 4
  %242 = call i32 @ERROUT(i32 %241)
  br label %243

243:                                              ; preds = %225, %218
  br label %449

244:                                              ; preds = %37, %37
  store %struct.sockaddr* null, %struct.sockaddr** %17, align 8
  %245 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %246 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = load i32, i32* @EINVAL, align 4
  %252 = call i32 @ERROUT(i32 %251)
  br label %253

253:                                              ; preds = %250, %244
  %254 = load %struct.socket*, %struct.socket** %9, align 8
  %255 = icmp eq %struct.socket* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, i32* @ENXIO, align 4
  %258 = call i32 @ERROUT(i32 %257)
  br label %259

259:                                              ; preds = %256, %253
  %260 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %261 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 130
  br i1 %264, label %265, label %285

265:                                              ; preds = %259
  %266 = load %struct.socket*, %struct.socket** %9, align 8
  %267 = getelementptr inbounds %struct.socket, %struct.socket* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @SS_ISCONNECTED, align 4
  %270 = load i32, i32* @SS_ISCONFIRMING, align 4
  %271 = or i32 %269, %270
  %272 = and i32 %268, %271
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %265
  %275 = load i32, i32* @ENOTCONN, align 4
  %276 = call i32 @ERROUT(i32 %275)
  br label %277

277:                                              ; preds = %274, %265
  %278 = load %struct.socket*, %struct.socket** %9, align 8
  %279 = getelementptr inbounds %struct.socket, %struct.socket* %278, i32 0, i32 2
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %283, align 8
  store i32 (%struct.socket*, %struct.sockaddr**)* %284, i32 (%struct.socket*, %struct.sockaddr**)** %16, align 8
  br label %293

285:                                              ; preds = %259
  %286 = load %struct.socket*, %struct.socket** %9, align 8
  %287 = getelementptr inbounds %struct.socket, %struct.socket* %286, i32 0, i32 2
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %291, align 8
  store i32 (%struct.socket*, %struct.sockaddr**)* %292, i32 (%struct.socket*, %struct.sockaddr**)** %16, align 8
  br label %293

293:                                              ; preds = %285, %277
  %294 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %16, align 8
  %295 = load %struct.socket*, %struct.socket** %9, align 8
  %296 = call i32 %294(%struct.socket* %295, %struct.sockaddr** %17)
  store i32 %296, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  br label %325

299:                                              ; preds = %293
  %300 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %301 = icmp eq %struct.sockaddr* %300, null
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  br label %307

303:                                              ; preds = %299
  %304 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %305 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  br label %307

307:                                              ; preds = %303, %302
  %308 = phi i32 [ 0, %302 ], [ %306, %303 ]
  store i32 %308, i32* %18, align 4
  %309 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %310 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %311 = load i32, i32* %18, align 4
  %312 = load i32, i32* @M_NOWAIT, align 4
  %313 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %309, %struct.ng_mesg* %310, i32 %311, i32 %312)
  %314 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %315 = icmp eq %struct.ng_mesg* %314, null
  br i1 %315, label %316, label %318

316:                                              ; preds = %307
  %317 = load i32, i32* @ENOMEM, align 4
  store i32 %317, i32* %11, align 4
  br label %325

318:                                              ; preds = %307
  %319 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %320 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %321 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* %18, align 4
  %324 = call i32 @bcopy(%struct.sockaddr* %319, i64 %322, i32 %323)
  br label %325

325:                                              ; preds = %318, %316, %298
  %326 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %327 = icmp ne %struct.sockaddr* %326, null
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %330 = load i32, i32* @M_SONAME, align 4
  %331 = call i32 @free(%struct.sockaddr* %329, i32 %330)
  br label %332

332:                                              ; preds = %328, %325
  br label %449

333:                                              ; preds = %37
  %334 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %335 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = inttoptr i64 %336 to %struct.ng_ksocket_sockopt*
  store %struct.ng_ksocket_sockopt* %337, %struct.ng_ksocket_sockopt** %19, align 8
  %338 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %339 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = sext i32 %341 to i64
  %343 = icmp ne i64 %342, 12
  br i1 %343, label %344, label %347

344:                                              ; preds = %333
  %345 = load i32, i32* @EINVAL, align 4
  %346 = call i32 @ERROUT(i32 %345)
  br label %347

347:                                              ; preds = %344, %333
  %348 = load %struct.socket*, %struct.socket** %9, align 8
  %349 = icmp eq %struct.socket* %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load i32, i32* @ENXIO, align 4
  %352 = call i32 @ERROUT(i32 %351)
  br label %353

353:                                              ; preds = %350, %347
  %354 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %355 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %356 = load i32, i32* @NG_KSOCKET_MAX_OPTLEN, align 4
  %357 = sext i32 %356 to i64
  %358 = add i64 12, %357
  %359 = trunc i64 %358 to i32
  %360 = load i32, i32* @M_NOWAIT, align 4
  %361 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %354, %struct.ng_mesg* %355, i32 %359, i32 %360)
  %362 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %363 = icmp eq %struct.ng_mesg* %362, null
  br i1 %363, label %364, label %367

364:                                              ; preds = %353
  %365 = load i32, i32* @ENOMEM, align 4
  %366 = call i32 @ERROUT(i32 %365)
  br label %367

367:                                              ; preds = %364, %353
  %368 = load i32, i32* @SOPT_GET, align 4
  %369 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %20, i32 0, i32 5
  store i32 %368, i32* %369, align 4
  %370 = load %struct.ng_ksocket_sockopt*, %struct.ng_ksocket_sockopt** %19, align 8
  %371 = getelementptr inbounds %struct.ng_ksocket_sockopt, %struct.ng_ksocket_sockopt* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %20, i32 0, i32 4
  store i32 %372, i32* %373, align 8
  %374 = load %struct.ng_ksocket_sockopt*, %struct.ng_ksocket_sockopt** %19, align 8
  %375 = getelementptr inbounds %struct.ng_ksocket_sockopt, %struct.ng_ksocket_sockopt* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %20, i32 0, i32 3
  store i32 %376, i32* %377, align 4
  %378 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %20, i32 0, i32 1
  store i32* null, i32** %378, align 8
  %379 = load i32, i32* @NG_KSOCKET_MAX_OPTLEN, align 4
  %380 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %20, i32 0, i32 0
  store i32 %379, i32* %380, align 8
  %381 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %382 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = inttoptr i64 %383 to %struct.ng_ksocket_sockopt*
  store %struct.ng_ksocket_sockopt* %384, %struct.ng_ksocket_sockopt** %19, align 8
  %385 = load %struct.ng_ksocket_sockopt*, %struct.ng_ksocket_sockopt** %19, align 8
  %386 = getelementptr inbounds %struct.ng_ksocket_sockopt, %struct.ng_ksocket_sockopt* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %20, i32 0, i32 2
  store i32 %387, i32* %388, align 8
  %389 = load %struct.socket*, %struct.socket** %9, align 8
  %390 = call i32 @sogetopt(%struct.socket* %389, %struct.sockopt* %20)
  store i32 %390, i32* %11, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %367
  %393 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %394 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %393)
  br label %449

395:                                              ; preds = %367
  %396 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %20, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = sext i32 %397 to i64
  %399 = add i64 12, %398
  %400 = trunc i64 %399 to i32
  %401 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %402 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 2
  store i32 %400, i32* %403, align 8
  br label %449

404:                                              ; preds = %37
  %405 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %406 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = inttoptr i64 %407 to %struct.ng_ksocket_sockopt*
  store %struct.ng_ksocket_sockopt* %408, %struct.ng_ksocket_sockopt** %21, align 8
  %409 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %410 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = sext i32 %412 to i64
  %414 = sub i64 %413, 12
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %22, align 4
  %416 = load i32, i32* %22, align 4
  %417 = icmp slt i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %404
  %419 = load i32, i32* @EINVAL, align 4
  %420 = call i32 @ERROUT(i32 %419)
  br label %421

421:                                              ; preds = %418, %404
  %422 = load %struct.socket*, %struct.socket** %9, align 8
  %423 = icmp eq %struct.socket* %422, null
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  %425 = load i32, i32* @ENXIO, align 4
  %426 = call i32 @ERROUT(i32 %425)
  br label %427

427:                                              ; preds = %424, %421
  %428 = load i32, i32* @SOPT_SET, align 4
  %429 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 5
  store i32 %428, i32* %429, align 4
  %430 = load %struct.ng_ksocket_sockopt*, %struct.ng_ksocket_sockopt** %21, align 8
  %431 = getelementptr inbounds %struct.ng_ksocket_sockopt, %struct.ng_ksocket_sockopt* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 4
  store i32 %432, i32* %433, align 8
  %434 = load %struct.ng_ksocket_sockopt*, %struct.ng_ksocket_sockopt** %21, align 8
  %435 = getelementptr inbounds %struct.ng_ksocket_sockopt, %struct.ng_ksocket_sockopt* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 3
  store i32 %436, i32* %437, align 4
  %438 = load %struct.ng_ksocket_sockopt*, %struct.ng_ksocket_sockopt** %21, align 8
  %439 = getelementptr inbounds %struct.ng_ksocket_sockopt, %struct.ng_ksocket_sockopt* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 2
  store i32 %440, i32* %441, align 8
  %442 = load i32, i32* %22, align 4
  %443 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 0
  store i32 %442, i32* %443, align 8
  %444 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 1
  store i32* null, i32** %444, align 8
  %445 = load %struct.socket*, %struct.socket** %9, align 8
  %446 = call i32 @sosetopt(%struct.socket* %445, %struct.sockopt* %23)
  store i32 %446, i32* %11, align 4
  br label %449

447:                                              ; preds = %37
  %448 = load i32, i32* @EINVAL, align 4
  store i32 %448, i32* %11, align 4
  br label %449

449:                                              ; preds = %447, %427, %395, %392, %332, %243, %153, %92, %71
  br label %452

450:                                              ; preds = %3
  %451 = load i32, i32* @EINVAL, align 4
  store i32 %451, i32* %11, align 4
  br label %452

452:                                              ; preds = %450, %449
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %11, align 4
  %455 = load i32, i32* %4, align 4
  %456 = load i32, i32* %5, align 4
  %457 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %458 = call i32 @NG_RESPOND_MSG(i32 %454, i32 %455, i32 %456, %struct.ng_mesg* %457)
  %459 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %460 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %459)
  %461 = load i32, i32* %11, align 4
  ret i32 %461
}

declare dso_local %struct.TYPE_10__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @sobind(%struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @solisten(%struct.socket*, i32, %struct.thread*) #1

declare dso_local i32 @ng_ksocket_accept(%struct.TYPE_10__*) #1

declare dso_local i8* @NGI_RETADDR(i32) #1

declare dso_local i32 @soconnect(%struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, i64, i32) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @sogetopt(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

declare dso_local i32 @sosetopt(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
