; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_cpmip.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_cpmip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__*, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.servtab = type { i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_6__ }
%struct.sockaddr = type { i32 }

@CHTGRAN = common dso_local global i32 0, align 4
@CHashAry = common dso_local global %struct.TYPE_8__* null, align 8
@CPMHMASK = common dso_local global i32 0, align 4
@CHTSIZE = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s from %s exceeded counts/min (limit %d/min)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.servtab*, i32)* @cpmip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmip(%struct.servtab* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.servtab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_in*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.servtab* %0, %struct.servtab** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 4, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.servtab*, %struct.servtab** %4, align 8
  %24 = getelementptr inbounds %struct.servtab, %struct.servtab* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %312

27:                                               ; preds = %2
  %28 = load %struct.servtab*, %struct.servtab** %4, align 8
  %29 = getelementptr inbounds %struct.servtab, %struct.servtab* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.servtab*, %struct.servtab** %4, align 8
  %34 = getelementptr inbounds %struct.servtab, %struct.servtab* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %312

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %5, align 4
  %39 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %40 = call i64 @getpeername(i32 %38, %struct.sockaddr* %39, i32* %7)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %312

42:                                               ; preds = %37
  %43 = call i32 @time(i32* null)
  store i32 %43, i32* %9, align 4
  store i32 -1413230065, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @CHTGRAN, align 4
  %46 = udiv i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %47, %struct.sockaddr_in** %15, align 8
  %48 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %54 [
    i32 129, label %50
  ]

50:                                               ; preds = %42
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 1
  %53 = bitcast %struct.TYPE_6__* %52 to i8*
  store i8* %53, i8** %16, align 8
  store i32 4, i32* %17, align 4
  br label %55

54:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %314

55:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 5
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %63, 23
  %65 = xor i32 %62, %64
  %66 = load i8*, i8** %16, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = xor i32 %65, %68
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = load i8*, i8** %16, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %16, align 8
  br label %56

75:                                               ; preds = %56
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 16
  %79 = xor i32 %76, %78
  store i32 %79, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %145, %75
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 5
  br i1 %82, label %83, label %148

83:                                               ; preds = %80
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CHashAry, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* @CPMHMASK, align 4
  %89 = and i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %90
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %18, align 8
  %92 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 129
  br i1 %94, label %95, label %126

95:                                               ; preds = %83
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %100, label %126

100:                                              ; preds = %95
  %101 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %104, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %100
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.servtab*, %struct.servtab** %4, align 8
  %117 = getelementptr inbounds %struct.servtab, %struct.servtab* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @strcmp(i32 %118, i32* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %125, %struct.TYPE_8__** %13, align 8
  br label %148

126:                                              ; preds = %115, %110, %100, %95, %83
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = icmp eq %struct.TYPE_8__* %127, null
  br i1 %128, label %142, label %129

129:                                              ; preds = %126
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %134, %129, %126
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %143, %struct.TYPE_8__** %13, align 8
  br label %144

144:                                              ; preds = %142, %134
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %80

148:                                              ; preds = %124, %80
  %149 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 129
  br i1 %151, label %152, label %167

152:                                              ; preds = %148
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 129
  br i1 %156, label %181, label %157

157:                                              ; preds = %152
  %158 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %159 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %161, %165
  br i1 %166, label %181, label %167

167:                                              ; preds = %157, %148
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %167
  %173 = load %struct.servtab*, %struct.servtab** %4, align 8
  %174 = getelementptr inbounds %struct.servtab, %struct.servtab* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = call i64 @strcmp(i32 %175, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %214

181:                                              ; preds = %172, %167, %157, %152
  %182 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %183 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 5
  %189 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %190 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %189, i32 0, i32 1
  %191 = bitcast %struct.TYPE_6__* %188 to i8*
  %192 = bitcast %struct.TYPE_6__* %190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 8 %192, i64 8, i1 false)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %181
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @free(i32* %200)
  br label %202

202:                                              ; preds = %197, %181
  %203 = load %struct.servtab*, %struct.servtab** %4, align 8
  %204 = getelementptr inbounds %struct.servtab, %struct.servtab* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @strdup(i32 %205)
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  store i32* %207, i32** %209, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = call i32 @bzero(%struct.TYPE_7__* %212, i32 8)
  br label %214

214:                                              ; preds = %202, %172
  %215 = load i32, i32* %9, align 4
  %216 = zext i32 %215 to i64
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* @CHTSIZE, align 4
  %224 = urem i32 %222, %223
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i64 %225
  store %struct.TYPE_7__* %226, %struct.TYPE_7__** %19, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %214
  %233 = load i32, i32* %14, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  store i64 0, i64* %237, align 8
  br label %238

238:                                              ; preds = %232, %214
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %241, 1
  store i64 %242, i64* %240, align 8
  store i32 0, i32* %11, align 4
  br label %243

243:                                              ; preds = %276, %238
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @CHTSIZE, align 4
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %247, label %279

247:                                              ; preds = %243
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i64 %252
  store %struct.TYPE_7__* %253, %struct.TYPE_7__** %20, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %14, align 4
  %258 = icmp ule i32 %256, %257
  br i1 %258, label %259, label %275

259:                                              ; preds = %247
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* @CHTSIZE, align 4
  %265 = sub i32 %263, %264
  %266 = icmp uge i32 %262, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %259
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %272, %270
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %12, align 4
  br label %275

275:                                              ; preds = %267, %259, %247
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %11, align 4
  br label %243

279:                                              ; preds = %243
  %280 = load i32, i32* %12, align 4
  %281 = mul nsw i32 %280, 60
  %282 = load i32, i32* @CHTSIZE, align 4
  %283 = load i32, i32* @CHTGRAN, align 4
  %284 = mul i32 %282, %283
  %285 = udiv i32 %281, %284
  %286 = load %struct.servtab*, %struct.servtab** %4, align 8
  %287 = getelementptr inbounds %struct.servtab, %struct.servtab* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp ugt i32 %285, %288
  br i1 %289, label %290, label %311

290:                                              ; preds = %279
  %291 = load i32, i32* @NI_MAXHOST, align 4
  %292 = zext i32 %291 to i64
  %293 = call i8* @llvm.stacksave()
  store i8* %293, i8** %21, align 8
  %294 = alloca i8, i64 %292, align 16
  store i64 %292, i64* %22, align 8
  %295 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %296 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %297 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = trunc i64 %292 to i32
  %300 = load i32, i32* @NI_NUMERICHOST, align 4
  %301 = call i32 @getnameinfo(%struct.sockaddr* %295, i32 %298, i8* %294, i32 %299, i32* null, i32 0, i32 %300)
  store i32 -1, i32* %8, align 4
  %302 = load i32, i32* @LOG_ERR, align 4
  %303 = load %struct.servtab*, %struct.servtab** %4, align 8
  %304 = getelementptr inbounds %struct.servtab, %struct.servtab* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.servtab*, %struct.servtab** %4, align 8
  %307 = getelementptr inbounds %struct.servtab, %struct.servtab* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @syslog(i32 %302, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %305, i8* %294, i32 %308)
  %310 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %310)
  br label %311

311:                                              ; preds = %290, %279
  br label %312

312:                                              ; preds = %311, %37, %32, %2
  %313 = load i32, i32* %8, align 4
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %312, %54
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @strcmp(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
