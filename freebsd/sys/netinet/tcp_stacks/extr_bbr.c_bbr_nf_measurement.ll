; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_nf_measurement.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_nf_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, i64, %struct.TYPE_2__, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bbr_sendmap = type { i32, i32, i32, i32, i32*, i32, i64, i64, i64, i64 }

@USECS_IN_SECOND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.bbr_sendmap*, i32, i32)* @bbr_nf_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_nf_measurement(%struct.tcp_bbr* %0, %struct.bbr_sendmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca %struct.bbr_sendmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store %struct.bbr_sendmap* %1, %struct.bbr_sendmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %19 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %286

22:                                               ; preds = %4
  %23 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %24 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %28 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @TSTMP_GT(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %34 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %38 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %9, align 4
  br label %42

41:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %48 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i64, i64* @USECS_IN_SECOND, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  br label %286

62:                                               ; preds = %42
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %63, 32
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %14, align 4
  %66 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %67 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %179

70:                                               ; preds = %62
  %71 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %72 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %179

75:                                               ; preds = %70
  %76 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %77 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %179

80:                                               ; preds = %75
  %81 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %82 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %179

85:                                               ; preds = %80
  %86 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %87 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %179

90:                                               ; preds = %85
  %91 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %92 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %96 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %94, %97
  %99 = call i32 @max(i32 %98, i32 1)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %101 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %90
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 1000
  br i1 %110, label %111, label %124

111:                                              ; preds = %108, %90
  %112 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %116 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %120 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %112, i32 61, i32 %113, i32 %114, i32 %118, i32 %121, i32 0, i32 0, i32 0, i32 0, i32 %122)
  br label %178

124:                                              ; preds = %108
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %12, align 4
  %126 = load i64, i64* @USECS_IN_SECOND, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* %12, align 4
  %129 = mul nsw i32 %128, %127
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sdiv i32 %131, %130
  store i32 %132, i32* %12, align 4
  %133 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %12, align 4
  %136 = ashr i32 %135, 32
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %133, i32 62, i32 %134, i32 %136, i32 %137, i32 0, i32 0, i32 0, i32 0, i32 %138, i32 %139)
  %141 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %142 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %124
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  %155 = ashr i32 %154, 32
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %150, i32 8, i32 %151, i32 %152, i32 %153, i32 %155, i32 %156, i32 0, i32 0, i32 0, i32 0)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %10, align 4
  br label %177

159:                                              ; preds = %145, %124
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %159
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %10, align 4
  %172 = ashr i32 %171, 32
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %167, i32 7, i32 %168, i32 %169, i32 %170, i32 %172, i32 %173, i32 0, i32 0, i32 0, i32 0)
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %166, %162, %159
  br label %177

177:                                              ; preds = %176, %149
  br label %178

178:                                              ; preds = %177, %111
  br label %179

179:                                              ; preds = %178, %85, %80, %75, %70, %62
  %180 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %181 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %253

184:                                              ; preds = %179
  %185 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %186 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %189 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %187, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %196 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @TSTMP_GT(i32 %194, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %253

200:                                              ; preds = %184
  %201 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %202 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %201, i32 0, i32 8
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %16, align 4
  %205 = load i64, i64* @USECS_IN_SECOND, align 8
  %206 = trunc i64 %205 to i32
  %207 = load i32, i32* %16, align 4
  %208 = mul nsw i32 %207, %206
  store i32 %208, i32* %16, align 4
  %209 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %210 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %213 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %211, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %220 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %218, %221
  store i32 %222, i32* %17, align 4
  %223 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %224 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %223, i32 0, i32 7
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %17, align 4
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* %16, align 4
  %232 = sdiv i32 %231, %230
  store i32 %232, i32* %16, align 4
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %252

236:                                              ; preds = %200
  %237 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %10, align 4
  %242 = ashr i32 %241, 32
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %245 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %16, align 4
  %248 = ashr i32 %247, 32
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %237, i32 6, i32 %238, i32 %239, i32 %240, i32 %242, i32 %243, i32 %246, i32 0, i32 %248, i32 %249)
  %251 = load i32, i32* %16, align 4
  store i32 %251, i32* %10, align 4
  br label %252

252:                                              ; preds = %236, %200
  br label %253

253:                                              ; preds = %252, %184, %179
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %256 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 4
  store i32 %254, i32* %257, align 8
  %258 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %259 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %258, i32 0, i32 6
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %253
  %263 = load i32, i32* %10, align 4
  %264 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %265 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 5
  %267 = call i32 @get_filter_value(i32* %266)
  %268 = icmp sgt i32 %263, %267
  br i1 %268, label %269, label %285

269:                                              ; preds = %262, %253
  %270 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @tcp_bbr_commit_bw(%struct.tcp_bbr* %270, i32 %271)
  %273 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %15, align 4
  %277 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %278 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %282 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %273, i32 10, i32 %274, i32 %275, i32 %276, i32 0, i32 0, i32 0, i32 0, i32 %280, i32 %283)
  br label %285

285:                                              ; preds = %269, %262
  br label %286

286:                                              ; preds = %61, %285, %4
  ret void
}

declare dso_local i64 @TSTMP_GT(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @bbr_log_type_bbrupd(%struct.tcp_bbr*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_filter_value(i32*) #1

declare dso_local i32 @tcp_bbr_commit_bw(%struct.tcp_bbr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
