; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_displaysock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_displaysock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i64, i32, %struct.addr*, i32, %struct.sock*, %struct.addr*, i32 }
%struct.addr = type { %struct.addr*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@INP_IPV4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@INP_IPV6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@opt_w = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"laddr = %p or faddr = %p is NULL\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"(not connected)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@HASHSIZE = common dso_local global i32 0, align 4
@sockhash = common dso_local global %struct.sock** null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@opt_U = common dso_local global i64 0, align 8
@SCTP_CLOSED = common dso_local global i64 0, align 8
@SCTP_BOUND = common dso_local global i64 0, align 8
@SCTP_LISTEN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@opt_s = common dso_local global i64 0, align 8
@TCP_NSTATES = common dso_local global i64 0, align 8
@tcpstates = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@opt_S = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@TCP_FUNCTION_NAME_LEN_MAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @displaysock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @displaysock(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.addr*, align 8
  %10 = alloca %struct.addr*, align 8
  %11 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %12

12:                                               ; preds = %15, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 29
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @INP_IPV4, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %21
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @INP_IPV6, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @INP_IPV4, align 4
  %60 = load i32, i32* @INP_IPV6, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %55
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 5
  %73 = load %struct.addr*, %struct.addr** %72, align 8
  store %struct.addr* %73, %struct.addr** %9, align 8
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 8
  %76 = load %struct.addr*, %struct.addr** %75, align 8
  store %struct.addr* %76, %struct.addr** %10, align 8
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %506, %70
  %78 = load %struct.addr*, %struct.addr** %9, align 8
  %79 = icmp ne %struct.addr* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load %struct.addr*, %struct.addr** %10, align 8
  %82 = icmp ne %struct.addr* %81, null
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ true, %77 ], [ %82, %80 ]
  br i1 %84, label %85, label %507

85:                                               ; preds = %83
  store i32 36, i32* %8, align 4
  br label %86

86:                                               ; preds = %90, %85
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %86

96:                                               ; preds = %86
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %275 [
    i32 132, label %100
    i32 131, label %100
    i32 130, label %156
  ]

100:                                              ; preds = %96, %96
  %101 = load %struct.addr*, %struct.addr** %9, align 8
  %102 = icmp ne %struct.addr* %101, null
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  %104 = load %struct.addr*, %struct.addr** %9, align 8
  %105 = getelementptr inbounds %struct.addr, %struct.addr* %104, i32 0, i32 3
  %106 = call i32 @printaddr(%struct.TYPE_2__* %105)
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load %struct.sock*, %struct.sock** %3, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 131
  br i1 %112, label %113, label %122

113:                                              ; preds = %103
  %114 = load i32, i32* %4, align 4
  %115 = icmp sge i32 %114, 58
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %116, %113, %103
  br label %123

123:                                              ; preds = %122, %100
  %124 = load i32, i32* @opt_w, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 46, i32 22
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %134, %123
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %4, align 4
  br label %130

140:                                              ; preds = %130
  %141 = load %struct.addr*, %struct.addr** %10, align 8
  %142 = icmp ne %struct.addr* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.addr*, %struct.addr** %10, align 8
  %145 = getelementptr inbounds %struct.addr, %struct.addr* %144, i32 0, i32 3
  %146 = call i32 @printaddr(%struct.TYPE_2__* %145)
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %143, %140
  %150 = load i32, i32* @opt_w, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 46, i32 22
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %277

156:                                              ; preds = %96
  %157 = load %struct.addr*, %struct.addr** %9, align 8
  %158 = icmp eq %struct.addr* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load %struct.addr*, %struct.addr** %10, align 8
  %161 = icmp eq %struct.addr* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %159, %156
  %163 = load %struct.addr*, %struct.addr** %9, align 8
  %164 = bitcast %struct.addr* %163 to i8*
  %165 = load %struct.addr*, %struct.addr** %10, align 8
  %166 = bitcast %struct.addr* %165 to i8*
  %167 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %164, i8* %166)
  br label %168

168:                                              ; preds = %162, %159
  %169 = load %struct.addr*, %struct.addr** %9, align 8
  %170 = getelementptr inbounds %struct.addr, %struct.addr* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load %struct.addr*, %struct.addr** %9, align 8
  %176 = getelementptr inbounds %struct.addr, %struct.addr* %175, i32 0, i32 3
  %177 = call i32 @printaddr(%struct.TYPE_2__* %176)
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %4, align 4
  br label %277

180:                                              ; preds = %168
  %181 = load %struct.addr*, %struct.addr** %10, align 8
  %182 = getelementptr inbounds %struct.addr, %struct.addr* %181, i32 0, i32 3
  %183 = bitcast %struct.TYPE_2__* %182 to i32*
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %180
  %188 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* @opt_w, align 4
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 92, i32 44
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %8, align 4
  br label %277

199:                                              ; preds = %180
  %200 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %202, %200
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %235, %199
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @HASHSIZE, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %238

209:                                              ; preds = %205
  %210 = load %struct.sock**, %struct.sock*** @sockhash, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.sock*, %struct.sock** %210, i64 %212
  %214 = load %struct.sock*, %struct.sock** %213, align 8
  store %struct.sock* %214, %struct.sock** %11, align 8
  br label %215

215:                                              ; preds = %226, %209
  %216 = load %struct.sock*, %struct.sock** %11, align 8
  %217 = icmp ne %struct.sock* %216, null
  br i1 %217, label %218, label %230

218:                                              ; preds = %215
  %219 = load %struct.sock*, %struct.sock** %11, align 8
  %220 = getelementptr inbounds %struct.sock, %struct.sock* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %230

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225
  %227 = load %struct.sock*, %struct.sock** %11, align 8
  %228 = getelementptr inbounds %struct.sock, %struct.sock* %227, i32 0, i32 7
  %229 = load %struct.sock*, %struct.sock** %228, align 8
  store %struct.sock* %229, %struct.sock** %11, align 8
  br label %215

230:                                              ; preds = %224, %215
  %231 = load %struct.sock*, %struct.sock** %11, align 8
  %232 = icmp ne %struct.sock* %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  br label %238

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %205

238:                                              ; preds = %233, %205
  %239 = load %struct.sock*, %struct.sock** %11, align 8
  %240 = icmp eq %struct.sock* %239, null
  br i1 %240, label %254, label %241

241:                                              ; preds = %238
  %242 = load %struct.sock*, %struct.sock** %11, align 8
  %243 = getelementptr inbounds %struct.sock, %struct.sock* %242, i32 0, i32 5
  %244 = load %struct.addr*, %struct.addr** %243, align 8
  %245 = icmp eq %struct.addr* %244, null
  br i1 %245, label %254, label %246

246:                                              ; preds = %241
  %247 = load %struct.sock*, %struct.sock** %11, align 8
  %248 = getelementptr inbounds %struct.sock, %struct.sock* %247, i32 0, i32 5
  %249 = load %struct.addr*, %struct.addr** %248, align 8
  %250 = getelementptr inbounds %struct.addr, %struct.addr* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %246, %241, %238
  %255 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %255
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %4, align 4
  br label %268

260:                                              ; preds = %246
  %261 = load %struct.sock*, %struct.sock** %11, align 8
  %262 = getelementptr inbounds %struct.sock, %struct.sock* %261, i32 0, i32 5
  %263 = load %struct.addr*, %struct.addr** %262, align 8
  %264 = getelementptr inbounds %struct.addr, %struct.addr* %263, i32 0, i32 3
  %265 = call i32 @printaddr(%struct.TYPE_2__* %264)
  %266 = load i32, i32* %4, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %4, align 4
  br label %268

268:                                              ; preds = %260, %254
  %269 = load i32, i32* @opt_w, align 4
  %270 = icmp ne i32 %269, 0
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i32 92, i32 44
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %8, align 4
  br label %277

275:                                              ; preds = %96
  %276 = call i32 (...) @abort() #3
  unreachable

277:                                              ; preds = %268, %187, %174, %149
  %278 = load i64, i64* @opt_U, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %330

280:                                              ; preds = %277
  %281 = load %struct.addr*, %struct.addr** %10, align 8
  %282 = icmp ne %struct.addr* %281, null
  br i1 %282, label %283, label %327

283:                                              ; preds = %280
  %284 = load %struct.sock*, %struct.sock** %3, align 8
  %285 = getelementptr inbounds %struct.sock, %struct.sock* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = icmp eq i32 %286, 129
  br i1 %287, label %288, label %327

288:                                              ; preds = %283
  %289 = load %struct.sock*, %struct.sock** %3, align 8
  %290 = getelementptr inbounds %struct.sock, %struct.sock* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @SCTP_CLOSED, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %294, label %327

294:                                              ; preds = %288
  %295 = load %struct.sock*, %struct.sock** %3, align 8
  %296 = getelementptr inbounds %struct.sock, %struct.sock* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @SCTP_BOUND, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %327

300:                                              ; preds = %294
  %301 = load %struct.sock*, %struct.sock** %3, align 8
  %302 = getelementptr inbounds %struct.sock, %struct.sock* %301, i32 0, i32 3
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @SCTP_LISTEN, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %327

306:                                              ; preds = %300
  br label %307

307:                                              ; preds = %311, %306
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %307
  %312 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %313 = load i32, i32* %4, align 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %314, %312
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %4, align 4
  br label %307

317:                                              ; preds = %307
  %318 = load %struct.addr*, %struct.addr** %10, align 8
  %319 = getelementptr inbounds %struct.addr, %struct.addr* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @ntohs(i32 %320)
  %322 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %321)
  %323 = load i32, i32* %4, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %322
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %4, align 4
  br label %327

327:                                              ; preds = %317, %300, %294, %288, %283, %280
  %328 = load i32, i32* %8, align 4
  %329 = add nsw i32 %328, 7
  store i32 %329, i32* %8, align 4
  br label %330

330:                                              ; preds = %327, %277
  %331 = load i64, i64* @opt_s, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %383

333:                                              ; preds = %330
  %334 = load %struct.addr*, %struct.addr** %10, align 8
  %335 = icmp ne %struct.addr* %334, null
  br i1 %335, label %336, label %380

336:                                              ; preds = %333
  %337 = load %struct.sock*, %struct.sock** %3, align 8
  %338 = getelementptr inbounds %struct.sock, %struct.sock* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 129
  br i1 %340, label %341, label %380

341:                                              ; preds = %336
  %342 = load %struct.sock*, %struct.sock** %3, align 8
  %343 = getelementptr inbounds %struct.sock, %struct.sock* %342, i32 0, i32 3
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @SCTP_CLOSED, align 8
  %346 = icmp ne i64 %344, %345
  br i1 %346, label %347, label %380

347:                                              ; preds = %341
  %348 = load %struct.sock*, %struct.sock** %3, align 8
  %349 = getelementptr inbounds %struct.sock, %struct.sock* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @SCTP_BOUND, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %380

353:                                              ; preds = %347
  %354 = load %struct.sock*, %struct.sock** %3, align 8
  %355 = getelementptr inbounds %struct.sock, %struct.sock* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @SCTP_LISTEN, align 8
  %358 = icmp ne i64 %356, %357
  br i1 %358, label %359, label %380

359:                                              ; preds = %353
  br label %360

360:                                              ; preds = %364, %359
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* %8, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %370

364:                                              ; preds = %360
  %365 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %366 = load i32, i32* %4, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %367, %365
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %4, align 4
  br label %360

370:                                              ; preds = %360
  %371 = load %struct.addr*, %struct.addr** %10, align 8
  %372 = getelementptr inbounds %struct.addr, %struct.addr* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @sctp_path_state(i32 %373)
  %375 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %374)
  %376 = load i32, i32* %4, align 4
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %377, %375
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %4, align 4
  br label %380

380:                                              ; preds = %370, %353, %347, %341, %336, %333
  %381 = load i32, i32* %8, align 4
  %382 = add nsw i32 %381, 13
  store i32 %382, i32* %8, align 4
  br label %383

383:                                              ; preds = %380, %330
  %384 = load i32, i32* %7, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %484

386:                                              ; preds = %383
  %387 = load i64, i64* @opt_s, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %458

389:                                              ; preds = %386
  %390 = load %struct.sock*, %struct.sock** %3, align 8
  %391 = getelementptr inbounds %struct.sock, %struct.sock* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = icmp eq i32 %392, 129
  br i1 %393, label %399, label %394

394:                                              ; preds = %389
  %395 = load %struct.sock*, %struct.sock** %3, align 8
  %396 = getelementptr inbounds %struct.sock, %struct.sock* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = icmp eq i32 %397, 128
  br i1 %398, label %399, label %455

399:                                              ; preds = %394, %389
  br label %400

400:                                              ; preds = %404, %399
  %401 = load i32, i32* %4, align 4
  %402 = load i32, i32* %8, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %410

404:                                              ; preds = %400
  %405 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %406 = load i32, i32* %4, align 4
  %407 = sext i32 %406 to i64
  %408 = add nsw i64 %407, %405
  %409 = trunc i64 %408 to i32
  store i32 %409, i32* %4, align 4
  br label %400

410:                                              ; preds = %400
  %411 = load %struct.sock*, %struct.sock** %3, align 8
  %412 = getelementptr inbounds %struct.sock, %struct.sock* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  switch i32 %413, label %454 [
    i32 129, label %414
    i32 128, label %424
  ]

414:                                              ; preds = %410
  %415 = load %struct.sock*, %struct.sock** %3, align 8
  %416 = getelementptr inbounds %struct.sock, %struct.sock* %415, i32 0, i32 3
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @sctp_conn_state(i64 %417)
  %419 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %418)
  %420 = load i32, i32* %4, align 4
  %421 = sext i32 %420 to i64
  %422 = add nsw i64 %421, %419
  %423 = trunc i64 %422 to i32
  store i32 %423, i32* %4, align 4
  br label %454

424:                                              ; preds = %410
  %425 = load %struct.sock*, %struct.sock** %3, align 8
  %426 = getelementptr inbounds %struct.sock, %struct.sock* %425, i32 0, i32 3
  %427 = load i64, i64* %426, align 8
  %428 = icmp sge i64 %427, 0
  br i1 %428, label %429, label %447

429:                                              ; preds = %424
  %430 = load %struct.sock*, %struct.sock** %3, align 8
  %431 = getelementptr inbounds %struct.sock, %struct.sock* %430, i32 0, i32 3
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @TCP_NSTATES, align 8
  %434 = icmp slt i64 %432, %433
  br i1 %434, label %435, label %447

435:                                              ; preds = %429
  %436 = load i32*, i32** @tcpstates, align 8
  %437 = load %struct.sock*, %struct.sock** %3, align 8
  %438 = getelementptr inbounds %struct.sock, %struct.sock* %437, i32 0, i32 3
  %439 = load i64, i64* %438, align 8
  %440 = getelementptr inbounds i32, i32* %436, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %441)
  %443 = load i32, i32* %4, align 4
  %444 = sext i32 %443 to i64
  %445 = add nsw i64 %444, %442
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %4, align 4
  br label %453

447:                                              ; preds = %429, %424
  %448 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %449 = load i32, i32* %4, align 4
  %450 = sext i32 %449 to i64
  %451 = add nsw i64 %450, %448
  %452 = trunc i64 %451 to i32
  store i32 %452, i32* %4, align 4
  br label %453

453:                                              ; preds = %447, %435
  br label %454

454:                                              ; preds = %410, %453, %414
  br label %455

455:                                              ; preds = %454, %394
  %456 = load i32, i32* %8, align 4
  %457 = add nsw i32 %456, 13
  store i32 %457, i32* %8, align 4
  br label %458

458:                                              ; preds = %455, %386
  %459 = load i64, i64* @opt_S, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %483

461:                                              ; preds = %458
  %462 = load %struct.sock*, %struct.sock** %3, align 8
  %463 = getelementptr inbounds %struct.sock, %struct.sock* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = icmp eq i32 %464, 128
  br i1 %465, label %466, label %483

466:                                              ; preds = %461
  br label %467

467:                                              ; preds = %471, %466
  %468 = load i32, i32* %4, align 4
  %469 = load i32, i32* %8, align 4
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %471, label %477

471:                                              ; preds = %467
  %472 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %473 = load i32, i32* %4, align 4
  %474 = sext i32 %473 to i64
  %475 = add nsw i64 %474, %472
  %476 = trunc i64 %475 to i32
  store i32 %476, i32* %4, align 4
  br label %467

477:                                              ; preds = %467
  %478 = load i32, i32* @TCP_FUNCTION_NAME_LEN_MAX, align 4
  %479 = load %struct.sock*, %struct.sock** %3, align 8
  %480 = getelementptr inbounds %struct.sock, %struct.sock* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 8
  %482 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %478, i32 %481)
  br label %483

483:                                              ; preds = %477, %461, %458
  br label %484

484:                                              ; preds = %483, %383
  %485 = load %struct.addr*, %struct.addr** %9, align 8
  %486 = icmp ne %struct.addr* %485, null
  br i1 %486, label %487, label %491

487:                                              ; preds = %484
  %488 = load %struct.addr*, %struct.addr** %9, align 8
  %489 = getelementptr inbounds %struct.addr, %struct.addr* %488, i32 0, i32 0
  %490 = load %struct.addr*, %struct.addr** %489, align 8
  store %struct.addr* %490, %struct.addr** %9, align 8
  br label %491

491:                                              ; preds = %487, %484
  %492 = load %struct.addr*, %struct.addr** %10, align 8
  %493 = icmp ne %struct.addr* %492, null
  br i1 %493, label %494, label %498

494:                                              ; preds = %491
  %495 = load %struct.addr*, %struct.addr** %10, align 8
  %496 = getelementptr inbounds %struct.addr, %struct.addr* %495, i32 0, i32 0
  %497 = load %struct.addr*, %struct.addr** %496, align 8
  store %struct.addr* %497, %struct.addr** %10, align 8
  br label %498

498:                                              ; preds = %494, %491
  %499 = load %struct.addr*, %struct.addr** %9, align 8
  %500 = icmp ne %struct.addr* %499, null
  br i1 %500, label %504, label %501

501:                                              ; preds = %498
  %502 = load %struct.addr*, %struct.addr** %10, align 8
  %503 = icmp ne %struct.addr* %502, null
  br i1 %503, label %504, label %506

504:                                              ; preds = %501, %498
  %505 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %506

506:                                              ; preds = %504, %501
  store i32 0, i32* %7, align 4
  br label %77

507:                                              ; preds = %83
  %508 = call i64 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i64 @xprintf(i8*, ...) #1

declare dso_local i32 @printaddr(%struct.TYPE_2__*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_path_state(i32) #1

declare dso_local i32 @sctp_conn_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
