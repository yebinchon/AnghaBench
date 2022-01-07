; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.sockaddr_dl = type { i32, i32, i8* }
%struct.epoch_tracker = type { i32 }
%struct.ifmultiaddr = type { i32 }
%struct.sockaddr = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i8* null, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_ether_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ether_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_dl, align 8
  %13 = alloca %struct.epoch_tracker, align 4
  %14 = alloca %struct.ifmultiaddr*, align 8
  %15 = alloca %struct.sockaddr_dl, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_12__* @NG_NODE_PRIVATE(i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %20 = call i32 @NGI_GET_MSG(i32 %18, %struct.ng_mesg* %19)
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %283 [
    i32 138, label %25
  ]

25:                                               ; preds = %3
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %280 [
    i32 132, label %30
    i32 133, label %51
    i32 134, label %70
    i32 129, label %90
    i32 131, label %109
    i32 128, label %126
    i32 135, label %164
    i32 130, label %181
    i32 139, label %202
    i32 137, label %247
    i32 136, label %275
  ]

30:                                               ; preds = %25
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %33 = load i32, i32* @IFNAMSIZ, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %31, %struct.ng_mesg* %32, i32 %33, i32 %34)
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %37 = icmp eq %struct.ng_mesg* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %9, align 4
  br label %282

40:                                               ; preds = %30
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %42 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = call i32 @strlcpy(i64 %43, i32 %48, i32 %49)
  br label %282

51:                                               ; preds = %25
  %52 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %53 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %54 = load i32, i32* @M_NOWAIT, align 4
  %55 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %52, %struct.ng_mesg* %53, i32 4, i32 %54)
  %56 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %57 = icmp eq %struct.ng_mesg* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %9, align 4
  br label %282

60:                                               ; preds = %51
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %67 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  store i32 %65, i32* %69, align 4
  br label %282

70:                                               ; preds = %25
  %71 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %72 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %73 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %74 = load i32, i32* @M_NOWAIT, align 4
  %75 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %71, %struct.ng_mesg* %72, i32 %73, i32 %74)
  %76 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %77 = icmp eq %struct.ng_mesg* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %9, align 4
  br label %282

80:                                               ; preds = %70
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = call i8* @IF_LLADDR(%struct.TYPE_13__* %83)
  %85 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %86 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %89 = call i32 @bcopy(i8* %84, i64 %87, i32 %88)
  br label %282

90:                                               ; preds = %25
  %91 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %92 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %9, align 4
  br label %282

99:                                               ; preds = %90
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %104 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %108 = call i32 @if_setlladdr(%struct.TYPE_13__* %102, i32* %106, i32 %107)
  store i32 %108, i32* %9, align 4
  br label %282

109:                                              ; preds = %25
  %110 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %111 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %112 = load i32, i32* @M_NOWAIT, align 4
  %113 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %110, %struct.ng_mesg* %111, i32 4, i32 %112)
  %114 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %115 = icmp eq %struct.ng_mesg* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @ENOMEM, align 4
  store i32 %117, i32* %9, align 4
  br label %282

118:                                              ; preds = %109
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %123 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  store i32 %121, i32* %125, align 4
  br label %282

126:                                              ; preds = %25
  %127 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %128 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp ne i64 %131, 4
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %9, align 4
  br label %282

135:                                              ; preds = %126
  %136 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %137 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = xor i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %135
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @ifpromisc(%struct.TYPE_13__* %154, i32 %155)
  store i32 %156, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %282

159:                                              ; preds = %151
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %135
  br label %282

164:                                              ; preds = %25
  %165 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %166 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %167 = load i32, i32* @M_NOWAIT, align 4
  %168 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %165, %struct.ng_mesg* %166, i32 4, i32 %167)
  %169 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %170 = icmp eq %struct.ng_mesg* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @ENOMEM, align 4
  store i32 %172, i32* %9, align 4
  br label %282

173:                                              ; preds = %164
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %178 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i32*
  store i32 %176, i32* %180, align 4
  br label %282

181:                                              ; preds = %25
  %182 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %183 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = icmp ne i64 %186, 4
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @EINVAL, align 4
  store i32 %189, i32* %9, align 4
  br label %282

190:                                              ; preds = %181
  %191 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %192 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  br label %282

202:                                              ; preds = %25
  %203 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %204 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load i32, i32* @EINVAL, align 4
  store i32 %210, i32* %9, align 4
  br label %282

211:                                              ; preds = %202
  %212 = call i32 @bzero(%struct.sockaddr_dl* %12, i32 16)
  %213 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %12, i32 0, i32 0
  store i32 16, i32* %213, align 8
  %214 = load i8*, i8** @AF_LINK, align 8
  %215 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %12, i32 0, i32 2
  store i8* %214, i8** %215, align 8
  %216 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %217 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %12, i32 0, i32 1
  store i32 %216, i32* %217, align 4
  %218 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %219 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = inttoptr i64 %220 to i8*
  %222 = call i64 @LLADDR(%struct.sockaddr_dl* %12)
  %223 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %224 = call i32 @bcopy(i8* %221, i64 %222, i32 %223)
  %225 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %13, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @NET_EPOCH_ENTER(i32 %226)
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = bitcast %struct.sockaddr_dl* %12 to %struct.sockaddr*
  %232 = call %struct.ifmultiaddr* @if_findmulti(%struct.TYPE_13__* %230, %struct.sockaddr* %231)
  store %struct.ifmultiaddr* %232, %struct.ifmultiaddr** %14, align 8
  %233 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %13, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @NET_EPOCH_EXIT(i32 %234)
  %236 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %14, align 8
  %237 = icmp ne %struct.ifmultiaddr* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %211
  %239 = load i32, i32* @EADDRINUSE, align 4
  store i32 %239, i32* %9, align 4
  br label %246

240:                                              ; preds = %211
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = bitcast %struct.sockaddr_dl* %12 to %struct.sockaddr*
  %245 = call i32 @if_addmulti(%struct.TYPE_13__* %243, %struct.sockaddr* %244, %struct.ifmultiaddr** %14)
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %240, %238
  br label %282

247:                                              ; preds = %25
  %248 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %249 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %247
  %255 = load i32, i32* @EINVAL, align 4
  store i32 %255, i32* %9, align 4
  br label %282

256:                                              ; preds = %247
  %257 = call i32 @bzero(%struct.sockaddr_dl* %15, i32 16)
  %258 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %15, i32 0, i32 0
  store i32 16, i32* %258, align 8
  %259 = load i8*, i8** @AF_LINK, align 8
  %260 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %15, i32 0, i32 2
  store i8* %259, i8** %260, align 8
  %261 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %262 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %15, i32 0, i32 1
  store i32 %261, i32* %262, align 4
  %263 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %264 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = inttoptr i64 %265 to i8*
  %267 = call i64 @LLADDR(%struct.sockaddr_dl* %15)
  %268 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %269 = call i32 @bcopy(i8* %266, i64 %267, i32 %268)
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  %273 = bitcast %struct.sockaddr_dl* %15 to %struct.sockaddr*
  %274 = call i32 @if_delmulti(%struct.TYPE_13__* %272, %struct.sockaddr* %273)
  store i32 %274, i32* %9, align 4
  br label %282

275:                                              ; preds = %25
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %277, align 8
  %279 = call i32 @ng_ether_detach(%struct.TYPE_13__* %278)
  br label %282

280:                                              ; preds = %25
  %281 = load i32, i32* @EINVAL, align 4
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %280, %275, %256, %254, %246, %209, %190, %188, %173, %171, %163, %158, %133, %118, %116, %99, %97, %80, %78, %60, %58, %40, %38
  br label %285

283:                                              ; preds = %3
  %284 = load i32, i32* @EINVAL, align 4
  store i32 %284, i32* %9, align 4
  br label %285

285:                                              ; preds = %283, %282
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %290 = call i32 @NG_RESPOND_MSG(i32 %286, i32 %287, i32 %288, %struct.ng_mesg* %289)
  %291 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %292 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %291)
  %293 = load i32, i32* %9, align 4
  ret i32 %293
}

declare dso_local %struct.TYPE_12__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @strlcpy(i64, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i64, i32) #1

declare dso_local i8* @IF_LLADDR(%struct.TYPE_13__*) #1

declare dso_local i32 @if_setlladdr(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @ifpromisc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_dl*, i32) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.ifmultiaddr* @if_findmulti(%struct.TYPE_13__*, %struct.sockaddr*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @if_addmulti(%struct.TYPE_13__*, %struct.sockaddr*, %struct.ifmultiaddr**) #1

declare dso_local i32 @if_delmulti(%struct.TYPE_13__*, %struct.sockaddr*) #1

declare dso_local i32 @ng_ether_detach(%struct.TYPE_13__*) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
