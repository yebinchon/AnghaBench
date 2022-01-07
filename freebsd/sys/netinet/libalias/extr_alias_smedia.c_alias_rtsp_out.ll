; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_alias_rtsp_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_alias_rtsp_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32, i32, i32, i32 }
%struct.alias_link = type { i32 }
%struct.tcphdr = type { i32, i64, i32, i32 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"transport:\00", align 1
@RTSP_PORT_GROUP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*, %struct.alias_link*, i8*, i8*)* @alias_rtsp_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alias_rtsp_out(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libalias*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca %struct.alias_link*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca [2048 x i8], align 16
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca [80 x i8], align 16
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.alias_link*, align 8
  %39 = alloca %struct.in_addr, align 4
  store %struct.libalias* %0, %struct.libalias** %7, align 8
  store %struct.ip* %1, %struct.ip** %8, align 8
  store %struct.alias_link* %2, %struct.alias_link** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store %struct.alias_link* null, %struct.alias_link** %38, align 8
  %40 = load %struct.ip*, %struct.ip** %8, align 8
  %41 = call i64 @ip_next(%struct.ip* %40)
  %42 = inttoptr i64 %41 to %struct.tcphdr*
  store %struct.tcphdr* %42, %struct.tcphdr** %15, align 8
  %43 = load %struct.ip*, %struct.ip** %8, align 8
  %44 = getelementptr inbounds %struct.ip, %struct.ip* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %47 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = shl i32 %49, 2
  store i32 %50, i32* %12, align 4
  %51 = load %struct.ip*, %struct.ip** %8, align 8
  %52 = getelementptr inbounds %struct.ip, %struct.ip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i8*, i8** %31, align 8
  %61 = call i32 @search_string(i8* %58, i32 %59, i8* %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %396

65:                                               ; preds = %5
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %33, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %20, align 4
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %32, i64 0, i64 0
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  %77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %32, i64 0, i64 0
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8* %80, i8** %34, align 8
  br label %81

81:                                               ; preds = %317, %65
  %82 = load i32, i32* %20, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %325

86:                                               ; preds = %81
  %87 = load i8*, i8** %33, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @search_string(i8* %87, i32 %88, i8* %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %325

94:                                               ; preds = %86
  %95 = load i8*, i8** %34, align 8
  %96 = load i8*, i8** %33, align 8
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @memcpy(i8* %95, i8* %96, i32 %98)
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i8*, i8** %34, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %34, align 8
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  store i32 0, i32* %106, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %19, align 4
  %107 = load i32, i32* %18, align 4
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %314, %94
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %317

112:                                              ; preds = %108
  %113 = load i32, i32* %19, align 4
  switch i32 %113, label %309 [
    i32 0, label %114
    i32 1, label %126
    i32 2, label %169
    i32 3, label %194
  ]

114:                                              ; preds = %112
  %115 = load i8*, i8** %33, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 61
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* %19, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %19, align 4
  br label %125

125:                                              ; preds = %122, %114
  br label %309

126:                                              ; preds = %112
  %127 = load i8*, i8** %33, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = call i32 @ISDIGIT(i8 signext %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %126
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %136, 10
  %138 = load i8*, i8** %33, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = add nsw i32 %137, %143
  %145 = sub nsw i32 %144, 48
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  store i32 %145, i32* %146, align 4
  br label %168

147:                                              ; preds = %126
  %148 = load i8*, i8** %33, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 59
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  store i32 3, i32* %19, align 4
  br label %156

156:                                              ; preds = %155, %147
  %157 = load i8*, i8** %33, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 45
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i32, i32* %19, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %164, %156
  br label %168

168:                                              ; preds = %167, %134
  br label %309

169:                                              ; preds = %112
  %170 = load i8*, i8** %33, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = call i32 @ISDIGIT(i8 signext %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %169
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %179, 10
  %181 = load i8*, i8** %33, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = add nsw i32 %180, %186
  %188 = sub nsw i32 %187, 48
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 %188, i32* %189, align 4
  br label %193

190:                                              ; preds = %169
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %19, align 4
  br label %193

193:                                              ; preds = %190, %177
  br label %309

194:                                              ; preds = %112
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %27, align 4
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @htons(i32 %198)
  store i32 %199, i32* %25, align 4
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @htons(i32 %201)
  store i32 %202, i32* %26, align 4
  %203 = load i32, i32* %36, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %261, label %205

205:                                              ; preds = %194
  store i32 1, i32* %36, align 4
  %206 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %39, i32 0, i32 0
  store i32 0, i32* %206, align 4
  %207 = load %struct.libalias*, %struct.libalias** %7, align 8
  %208 = load %struct.libalias*, %struct.libalias** %7, align 8
  %209 = load %struct.ip*, %struct.ip** %8, align 8
  %210 = getelementptr inbounds %struct.ip, %struct.ip* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @FindAliasAddress(%struct.libalias* %208, i32 %211)
  %213 = load i32, i32* %25, align 4
  %214 = load i32, i32* @RTSP_PORT_GROUP, align 4
  %215 = load i32, i32* @IPPROTO_UDP, align 4
  %216 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %39, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @FindNewPortGroup(%struct.libalias* %207, i32 %217, i32 %212, i32 %213, i32 0, i32 %214, i32 %215, i32 1)
  store i32 %218, i32* %28, align 4
  %219 = icmp eq i32 0, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %205
  br label %255

221:                                              ; preds = %205
  %222 = load i32, i32* %28, align 4
  %223 = call i32 @ntohs(i32 %222)
  store i32 %223, i32* %30, align 4
  store i32 0, i32* %17, align 4
  br label %224

224:                                              ; preds = %251, %221
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* @RTSP_PORT_GROUP, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %254

228:                                              ; preds = %224
  %229 = load %struct.libalias*, %struct.libalias** %7, align 8
  %230 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %231 = call i32 @GetOriginalAddress(%struct.alias_link* %230)
  %232 = load i32, i32* %27, align 4
  %233 = load i32, i32* %17, align 4
  %234 = add nsw i32 %232, %233
  %235 = call i32 @htons(i32 %234)
  %236 = load i32, i32* %30, align 4
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %236, %237
  %239 = call i32 @htons(i32 %238)
  %240 = load i32, i32* @IPPROTO_UDP, align 4
  %241 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %39, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call %struct.alias_link* @FindRtspOut(%struct.libalias* %229, i32 %231, i32 %242, i32 %235, i32 %239, i32 %240)
  store %struct.alias_link* %243, %struct.alias_link** %38, align 8
  %244 = load %struct.alias_link*, %struct.alias_link** %38, align 8
  %245 = icmp ne %struct.alias_link* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %228
  %247 = load %struct.alias_link*, %struct.alias_link** %38, align 8
  %248 = call i32 @PunchFWHole(%struct.alias_link* %247)
  br label %250

249:                                              ; preds = %228
  br label %254

250:                                              ; preds = %246
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %17, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %17, align 4
  br label %224

254:                                              ; preds = %249, %224
  br label %255

255:                                              ; preds = %254, %220
  %256 = load i32, i32* %30, align 4
  %257 = load i32, i32* @RTSP_PORT_GROUP, align 4
  %258 = sub nsw i32 %257, 1
  %259 = add nsw i32 %256, %258
  %260 = call i32 @htons(i32 %259)
  store i32 %260, i32* %29, align 4
  br label %261

261:                                              ; preds = %255, %194
  %262 = load i32, i32* %28, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %306

264:                                              ; preds = %261
  %265 = load %struct.alias_link*, %struct.alias_link** %38, align 8
  %266 = icmp ne %struct.alias_link* %265, null
  br i1 %266, label %267, label %306

267:                                              ; preds = %264
  store i32 1, i32* %37, align 4
  %268 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %269 = load i32, i32* %28, align 4
  %270 = call i32 @ntohs(i32 %269)
  %271 = call i32 @sprintf(i8* %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %270)
  %272 = load i8*, i8** %34, align 8
  %273 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %274 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %275 = call i32 @strlen(i8* %274)
  %276 = call i32 @memcpy(i8* %272, i8* %273, i32 %275)
  %277 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %278 = call i32 @strlen(i8* %277)
  %279 = load i8*, i8** %34, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  store i8* %281, i8** %34, align 8
  %282 = load i32, i32* %26, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %302

284:                                              ; preds = %267
  %285 = load i8*, i8** %34, align 8
  store i8 45, i8* %285, align 1
  %286 = load i8*, i8** %34, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %34, align 8
  %288 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %289 = load i32, i32* %29, align 4
  %290 = call i32 @ntohs(i32 %289)
  %291 = call i32 @sprintf(i8* %288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %290)
  %292 = load i8*, i8** %34, align 8
  %293 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %294 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %295 = call i32 @strlen(i8* %294)
  %296 = call i32 @memcpy(i8* %292, i8* %293, i32 %295)
  %297 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %298 = call i32 @strlen(i8* %297)
  %299 = load i8*, i8** %34, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8* %301, i8** %34, align 8
  br label %302

302:                                              ; preds = %284, %267
  %303 = load i8*, i8** %34, align 8
  store i8 59, i8* %303, align 1
  %304 = load i8*, i8** %34, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %34, align 8
  br label %306

306:                                              ; preds = %302, %264, %261
  %307 = load i32, i32* %19, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %19, align 4
  br label %309

309:                                              ; preds = %112, %306, %193, %168, %125
  %310 = load i32, i32* %19, align 4
  %311 = icmp sgt i32 %310, 3
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  br label %317

313:                                              ; preds = %309
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %16, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %16, align 4
  br label %108

317:                                              ; preds = %312, %108
  %318 = load i32, i32* %16, align 4
  %319 = load i8*, i8** %33, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i8, i8* %319, i64 %320
  store i8* %321, i8** %33, align 8
  %322 = load i32, i32* %16, align 4
  %323 = load i32, i32* %20, align 4
  %324 = sub nsw i32 %323, %322
  store i32 %324, i32* %20, align 4
  br label %81

325:                                              ; preds = %93, %81
  %326 = load i32, i32* %37, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  store i32 -1, i32* %6, align 4
  br label %396

329:                                              ; preds = %325
  %330 = load i8*, i8** %34, align 8
  %331 = load i8*, i8** %33, align 8
  %332 = load i32, i32* %20, align 4
  %333 = call i32 @memcpy(i8* %330, i8* %331, i32 %332)
  %334 = load i32, i32* %20, align 4
  %335 = load i8*, i8** %34, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  store i8* %337, i8** %34, align 8
  %338 = load i8*, i8** %34, align 8
  store i8 0, i8* %338, align 1
  %339 = load i8*, i8** %34, align 8
  %340 = getelementptr inbounds [2048 x i8], [2048 x i8]* %32, i64 0, i64 0
  %341 = ptrtoint i8* %339 to i64
  %342 = ptrtoint i8* %340 to i64
  %343 = sub i64 %341, %342
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %21, align 4
  %345 = load i8*, i8** %10, align 8
  %346 = getelementptr inbounds [2048 x i8], [2048 x i8]* %32, i64 0, i64 0
  %347 = load i32, i32* %21, align 4
  %348 = call i32 @memcpy(i8* %345, i8* %346, i32 %347)
  %349 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %350 = call i32 @SetAckModified(%struct.alias_link* %349)
  %351 = load %struct.ip*, %struct.ip** %8, align 8
  %352 = call i64 @ip_next(%struct.ip* %351)
  %353 = inttoptr i64 %352 to %struct.tcphdr*
  store %struct.tcphdr* %353, %struct.tcphdr** %15, align 8
  %354 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %355 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %358 = call i32 @GetDeltaSeqOut(i32 %356, %struct.alias_link* %357)
  store i32 %358, i32* %22, align 4
  %359 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %360 = load i32, i32* %22, align 4
  %361 = load i32, i32* %21, align 4
  %362 = add nsw i32 %360, %361
  %363 = load i32, i32* %14, align 4
  %364 = sub nsw i32 %362, %363
  %365 = load %struct.ip*, %struct.ip** %8, align 8
  %366 = getelementptr inbounds %struct.ip, %struct.ip* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.ip*, %struct.ip** %8, align 8
  %369 = getelementptr inbounds %struct.ip, %struct.ip* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %372 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %375 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @AddSeq(%struct.alias_link* %359, i32 %364, i32 %367, i32 %370, i32 %373, i32 %376)
  %378 = load i32, i32* %12, align 4
  %379 = load i32, i32* %21, align 4
  %380 = add nsw i32 %378, %379
  %381 = call i32 @htons(i32 %380)
  store i32 %381, i32* %24, align 4
  %382 = load %struct.ip*, %struct.ip** %8, align 8
  %383 = getelementptr inbounds %struct.ip, %struct.ip* %382, i32 0, i32 1
  %384 = load %struct.ip*, %struct.ip** %8, align 8
  %385 = getelementptr inbounds %struct.ip, %struct.ip* %384, i32 0, i32 0
  %386 = call i32 @DifferentialChecksum(i32* %383, i32* %24, i32* %385, i32 1)
  %387 = load i32, i32* %24, align 4
  %388 = load %struct.ip*, %struct.ip** %8, align 8
  %389 = getelementptr inbounds %struct.ip, %struct.ip* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 4
  %390 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %391 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %390, i32 0, i32 1
  store i64 0, i64* %391, align 8
  %392 = load %struct.ip*, %struct.ip** %8, align 8
  %393 = call i64 @TcpChecksum(%struct.ip* %392)
  %394 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %395 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %394, i32 0, i32 1
  store i64 %393, i64* %395, align 8
  store i32 0, i32* %6, align 4
  br label %396

396:                                              ; preds = %329, %328, %64
  %397 = load i32, i32* %6, align 4
  ret i32 %397
}

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @search_string(i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @FindNewPortGroup(%struct.libalias*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FindAliasAddress(%struct.libalias*, i32) #1

declare dso_local %struct.alias_link* @FindRtspOut(%struct.libalias*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetOriginalAddress(%struct.alias_link*) #1

declare dso_local i32 @PunchFWHole(%struct.alias_link*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @SetAckModified(%struct.alias_link*) #1

declare dso_local i32 @GetDeltaSeqOut(i32, %struct.alias_link*) #1

declare dso_local i32 @AddSeq(%struct.alias_link*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DifferentialChecksum(i32*, i32*, i32*, i32) #1

declare dso_local i64 @TcpChecksum(%struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
