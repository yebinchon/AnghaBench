; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bt3cfw/extr_bt3cfw.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bt3cfw/extr_bt3cfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@BT3CFW_IDENT = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"f:hn:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@BT3CFW_MAX_FIRMWARE_SIZE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not allocate firmware buffer\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Could not open BT3C firmware file %s. %s (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [80 x i8] c"Could not add new firmware block. Firmware file %s is too big, firmware_size=%d\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"Could not add new firmware data. Firmware file %s is too big, firmware_size=%d\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Invalid firmware file %s. Checksum error, cs=%#x, fcs=%#x, checksum=%#x\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Could not create Netgraph socket. %s (%d)\00", align 1
@NGM_BT3C_COOKIE = common dso_local global i32 0, align 4
@NGM_BT3C_NODE_DOWNLOAD_FIRMWARE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Could not send Netgraph message. %s (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_2__*, align 8
  %22 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  %23 = load i32, i32* @NG_PATHSIZ, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %27 = trunc i64 %24 to i32
  %28 = call i32 @memset(i8* %26, i32 0, i32 %27)
  %29 = load i32, i32* @BT3CFW_IDENT, align 4
  %30 = load i32, i32* @LOG_NDELAY, align 4
  %31 = load i32, i32* @LOG_PID, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LOG_PERROR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @LOG_USER, align 4
  %36 = call i32 @openlog(i32 %29, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %53, %2
  %38 = load i32, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = call i32 @getopt(i32 %38, i8** %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %13, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %51 [
    i32 102, label %44
    i32 110, label %46
    i32 104, label %50
  ]

44:                                               ; preds = %42
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** %10, align 8
  br label %53

46:                                               ; preds = %42
  %47 = trunc i64 %24 to i32
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @snprintf(i8* %26, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %53

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %42, %50
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %46, %44
  br label %37

54:                                               ; preds = %37
  %55 = load i8*, i8** %10, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, i8* %26, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %54
  %63 = call i32 (...) @usage()
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* @BT3CFW_MAX_FIRMWARE_SIZE, align 4
  %66 = call i64 @calloc(i32 %65, i32 4)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = call i32 (i32, i8*, ...) @syslog(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @exit(i32 255) #4
  unreachable

74:                                               ; preds = %64
  %75 = load i8*, i8** %10, align 8
  %76 = call i32* @fopen(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %76, i32** %6, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* @LOG_ERR, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* @errno, align 4
  %82 = call i8* @strerror(i32 %81)
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 (i32, i8*, ...) @syslog(i32 %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %80, i8* %82, i32 %83)
  %85 = call i32 @exit(i32 255) #4
  unreachable

86:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %275, %86
  %88 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %89 = load i32*, i32** %6, align 8
  %90 = call i64 @fgets(i8* %88, i32 80, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %276

92:                                               ; preds = %87
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = call i32 @hexa2int8(i8* %94)
  store i32 %95, i32* %17, align 4
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = call i32 @hexa2int32(i8* %97)
  store i32 %98, i32* %18, align 4
  %99 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i32, i32* %17, align 4
  %102 = mul nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = call i32 @hexa2int8(i8* %104)
  store i32 %105, i32* %20, align 4
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 51
  br i1 %109, label %110, label %238

110:                                              ; preds = %92
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %21, align 8
  store i32* null, i32** %22, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = bitcast i32* %114 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %115, %struct.TYPE_2__** %21, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, 12
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @BT3CFW_MAX_FIRMWARE_SIZE, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %110
  %124 = load i32, i32* @LOG_ERR, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 (i32, i8*, ...) @syslog(i32 %124, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i8* %125, i32 %126)
  %128 = call i32 @exit(i32 255) #4
  unreachable

129:                                              ; preds = %110
  %130 = load i32, i32* %18, align 4
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %17, align 4
  %134 = sub nsw i32 %133, 4
  %135 = sdiv i32 %134, 2
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %140, 2
  %142 = srem i32 %141, 3
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %129
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 3, %152
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %149, %129
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 2
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %12, align 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @BT3CFW_MAX_FIRMWARE_SIZE, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %156
  %172 = load i32, i32* @LOG_ERR, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call i32 (i32, i8*, ...) @syslog(i32 %172, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i8* %173, i32 %174)
  %176 = call i32 @exit(i32 255) #4
  unreachable

177:                                              ; preds = %156
  store i32 0, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %178

178:                                              ; preds = %191, %177
  %179 = load i32, i32* %16, align 4
  %180 = icmp slt i32 %179, 5
  br i1 %180, label %181, label %194

181:                                              ; preds = %178
  %182 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  %184 = load i32, i32* %16, align 4
  %185 = mul nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = call i32 @hexa2int8(i8* %187)
  %189 = load i32, i32* %19, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %19, align 4
  br label %191

191:                                              ; preds = %181
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  br label %178

194:                                              ; preds = %178
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 1
  %197 = bitcast %struct.TYPE_2__* %196 to i32*
  store i32* %197, i32** %22, align 8
  store i32 0, i32* %16, align 4
  br label %198

198:                                              ; preds = %234, %194
  %199 = load i32, i32* %16, align 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %237

204:                                              ; preds = %198
  %205 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %206 = load i32, i32* %16, align 4
  %207 = mul nsw i32 %206, 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  %210 = getelementptr inbounds i8, i8* %209, i64 12
  %211 = call i32 @hexa2int16(i8* %210)
  %212 = load i32*, i32** %22, align 8
  %213 = load i32, i32* %16, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  %216 = load i32*, i32** %22, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 65280
  %222 = ashr i32 %221, 8
  %223 = and i32 %222, 255
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %19, align 4
  %226 = load i32*, i32** %22, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 255
  %232 = load i32, i32* %19, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %19, align 4
  br label %234

234:                                              ; preds = %204
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %16, align 4
  br label %198

237:                                              ; preds = %198
  br label %257

238:                                              ; preds = %92
  store i32 0, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %239

239:                                              ; preds = %253, %238
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %17, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %239
  %244 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %245 = getelementptr inbounds i8, i8* %244, i64 2
  %246 = load i32, i32* %16, align 4
  %247 = mul nsw i32 %246, 2
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  %250 = call i32 @hexa2int8(i8* %249)
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %19, align 4
  br label %253

253:                                              ; preds = %243
  %254 = load i32, i32* %16, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %16, align 4
  br label %239

256:                                              ; preds = %239
  br label %257

257:                                              ; preds = %256, %237
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 %258, %259
  %261 = and i32 %260, 255
  %262 = icmp ne i32 %261, 255
  br i1 %262, label %263, label %275

263:                                              ; preds = %257
  %264 = load i32, i32* @LOG_ERR, align 4
  %265 = load i8*, i8** %10, align 8
  %266 = load i32, i32* %19, align 4
  %267 = and i32 %266, 255
  %268 = load i32, i32* %20, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %269, %270
  %272 = and i32 %271, 255
  %273 = call i32 (i32, i8*, ...) @syslog(i32 %264, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i8* %265, i32 %267, i32 %268, i32 %272)
  %274 = call i32 @exit(i32 255) #4
  unreachable

275:                                              ; preds = %257
  br label %87

276:                                              ; preds = %87
  %277 = call i64 @NgMkSockNode(i32* null, i32* %14, i32* %15)
  %278 = icmp slt i64 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %276
  %280 = load i32, i32* @LOG_ERR, align 4
  %281 = load i32, i32* @errno, align 4
  %282 = call i8* @strerror(i32 %281)
  %283 = load i32, i32* @errno, align 4
  %284 = call i32 (i32, i8*, ...) @syslog(i32 %280, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %282, i32 %283)
  %285 = call i32 @exit(i32 255) #4
  unreachable

286:                                              ; preds = %276
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* @NGM_BT3C_COOKIE, align 4
  %289 = load i32, i32* @NGM_BT3C_NODE_DOWNLOAD_FIRMWARE, align 4
  %290 = load i32*, i32** %11, align 8
  %291 = bitcast i32* %290 to i8*
  %292 = load i32, i32* %12, align 4
  %293 = call i64 @NgSendMsg(i32 %287, i8* %26, i32 %288, i32 %289, i8* %291, i32 %292)
  %294 = icmp slt i64 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %286
  %296 = load i32, i32* @LOG_ERR, align 4
  %297 = load i32, i32* @errno, align 4
  %298 = call i8* @strerror(i32 %297)
  %299 = load i32, i32* @errno, align 4
  %300 = call i32 (i32, i8*, ...) @syslog(i32 %296, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %298, i32 %299)
  %301 = call i32 @exit(i32 255) #4
  unreachable

302:                                              ; preds = %286
  %303 = load i32*, i32** %11, align 8
  %304 = call i32 @free(i32* %303)
  store i32* null, i32** %11, align 8
  %305 = load i32*, i32** %6, align 8
  %306 = call i32 @fclose(i32* %305)
  store i32 0, i32* %3, align 4
  %307 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %307)
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @openlog(i32, i32, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @hexa2int8(i8*) #2

declare dso_local i32 @hexa2int32(i8*) #2

declare dso_local i32 @hexa2int16(i8*) #2

declare dso_local i64 @NgMkSockNode(i32*, i32*, i32*) #2

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, i8*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
