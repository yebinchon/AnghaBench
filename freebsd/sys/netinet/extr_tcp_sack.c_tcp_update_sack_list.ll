; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_update_sack_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_update_sack_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, %struct.sackblk*, i32 }
%struct.sackblk = type { i64, i64 }

@MAX_SACK_BLKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"rcv_start <= rcv_end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_sack_list(%struct.tcpcb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sackblk, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load i32, i32* @MAX_SACK_BLKS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca %struct.sackblk, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @INP_WLOCK_ASSERT(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @SEQ_LEQ(i64 %25, i64 %26)
  %28 = call i32 @KASSERT(i64 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %3
  %33 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 1
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 2
  %41 = load %struct.sackblk*, %struct.sackblk** %40, align 8
  %42 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %41, i64 0
  %43 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 2
  %49 = load %struct.sackblk*, %struct.sackblk** %48, align 8
  %50 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %49, i64 0
  %51 = bitcast %struct.sackblk* %7 to i8*
  %52 = bitcast %struct.sackblk* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  br label %58

53:                                               ; preds = %37, %32, %3
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %46
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %239, %58
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %242

65:                                               ; preds = %59
  %66 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 2
  %68 = load %struct.sackblk*, %struct.sackblk** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %68, i64 %70
  %72 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %13, align 8
  %74 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 2
  %76 = load %struct.sackblk*, %struct.sackblk** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %76, i64 %78
  %80 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @SEQ_GEQ(i64 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %65
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @SEQ_LEQ(i64 %87, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86, %65
  br label %238

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i64 @SEQ_LEQ(i64 %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %198

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @SEQ_GEQ(i64 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %198

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  br label %197

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i64, i64* %14, align 8
  %121 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  store i64 %120, i64* %121, align 8
  br label %196

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i64 @SEQ_LT(i64 %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load i64, i64* %13, align 8
  store i64 %129, i64* %15, align 8
  %130 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %128, %122
  %135 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %14, align 8
  %138 = call i64 @SEQ_GT(i64 %136, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i64, i64* %14, align 8
  store i64 %141, i64* %16, align 8
  %142 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %16, align 8
  %145 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %140, %134
  %147 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %13, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %14, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %195

156:                                              ; preds = %151, %146
  %157 = load i32, i32* %11, align 4
  %158 = icmp sge i32 %157, 1
  br i1 %158, label %159, label %182

159:                                              ; preds = %156
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %162
  %164 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i64 @SEQ_GEQ(i64 %165, i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %159
  %170 = load i32, i32* %11, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %172
  %174 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 16
  %176 = load i64, i64* %14, align 8
  %177 = call i64 @SEQ_LEQ(i64 %175, i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %169
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %179, %169, %159, %156
  %183 = load i64, i64* %13, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %185
  %187 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %186, i32 0, i32 1
  store i64 %183, i64* %187, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %190
  %192 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %191, i32 0, i32 0
  store i64 %188, i64* %192, align 16
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %182, %151
  br label %196

196:                                              ; preds = %195, %119
  br label %197

197:                                              ; preds = %196, %111
  br label %237

198:                                              ; preds = %100, %94
  %199 = load i32, i32* %11, align 4
  %200 = icmp sge i32 %199, 1
  br i1 %200, label %201, label %224

201:                                              ; preds = %198
  %202 = load i32, i32* %11, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %204
  %206 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %13, align 8
  %209 = call i64 @SEQ_GEQ(i64 %207, i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %201
  %212 = load i32, i32* %11, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %214
  %216 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 16
  %218 = load i64, i64* %14, align 8
  %219 = call i64 @SEQ_LEQ(i64 %217, i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %211
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %221, %211, %201, %198
  %225 = load i64, i64* %13, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %227
  %229 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %228, i32 0, i32 1
  store i64 %225, i64* %229, align 8
  %230 = load i64, i64* %14, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %232
  %234 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %233, i32 0, i32 0
  store i64 %230, i64* %234, align 16
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %224, %197
  br label %238

238:                                              ; preds = %237, %93
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %12, align 4
  br label %59

242:                                              ; preds = %59
  store i32 0, i32* %10, align 4
  %243 = load i64, i64* %5, align 8
  %244 = load i64, i64* %6, align 8
  %245 = call i64 @SEQ_LT(i64 %243, i64 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %242
  %248 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %249 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %248, i32 0, i32 2
  %250 = load %struct.sackblk*, %struct.sackblk** %249, align 8
  %251 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %250, i64 0
  %252 = bitcast %struct.sackblk* %251 to i8*
  %253 = bitcast %struct.sackblk* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* align 8 %253, i64 16, i1 false)
  store i32 1, i32* %10, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @MAX_SACK_BLKS, align 4
  %256 = icmp sge i32 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %247
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %11, align 4
  br label %260

260:                                              ; preds = %257, %247
  br label %261

261:                                              ; preds = %260, %242
  %262 = load i64, i64* %5, align 8
  %263 = load i64, i64* %6, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %261
  %266 = load i64, i64* %5, align 8
  %267 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %268 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %267, i32 0, i32 2
  %269 = load %struct.sackblk*, %struct.sackblk** %268, align 8
  %270 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %269, i64 0
  %271 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %266, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %265
  store i32 1, i32* %10, align 4
  br label %275

275:                                              ; preds = %274, %265, %261
  %276 = load i32, i32* %11, align 4
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %280 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %279, i32 0, i32 2
  %281 = load %struct.sackblk*, %struct.sackblk** %280, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %281, i64 %283
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = mul i64 16, %286
  %288 = trunc i64 %287 to i32
  %289 = call i32 @bcopy(%struct.sackblk* %20, %struct.sackblk* %284, i32 %288)
  br label %290

290:                                              ; preds = %278, %275
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %291, %292
  %294 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %295 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  %296 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %296)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #2

declare dso_local i32 @KASSERT(i64, i8*) #2

declare dso_local i64 @SEQ_LEQ(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @SEQ_GEQ(i64, i64) #2

declare dso_local i64 @SEQ_LT(i64, i64) #2

declare dso_local i64 @SEQ_GT(i64, i64) #2

declare dso_local i32 @bcopy(%struct.sackblk*, %struct.sackblk*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
