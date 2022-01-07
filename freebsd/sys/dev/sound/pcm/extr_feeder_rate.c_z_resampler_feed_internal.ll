; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_feed_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_feed_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { i32, %struct.z_info* }
%struct.z_info = type { i64, i64, i64, i64, i32, i32, i64, i32, i64, i64, i32 (%struct.z_info*, i32*)*, i32* }
%struct.pcm_channel = type { i32 }

@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, %struct.pcm_channel*, i32*, i32, i8*)* @z_resampler_feed_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_resampler_feed_internal(%struct.pcm_feeder* %0, %struct.pcm_channel* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcm_feeder*, align 8
  %8 = alloca %struct.pcm_channel*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.z_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %7, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %24 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %25 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %24, i32 0, i32 1
  %26 = load %struct.z_info*, %struct.z_info** %25, align 8
  store %struct.z_info* %26, %struct.z_info** %12, align 8
  %27 = load %struct.z_info*, %struct.z_info** %12, align 8
  %28 = getelementptr inbounds %struct.z_info, %struct.z_info* %27, i32 0, i32 10
  %29 = load i32 (%struct.z_info*, i32*)*, i32 (%struct.z_info*, i32*)** %28, align 8
  %30 = icmp eq i32 (%struct.z_info*, i32*)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %5
  %32 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %33 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @z_feed(i32 %34, %struct.pcm_channel* %35, i32* %36, i64 %38, i8* %39)
  store i32 %40, i32* %6, align 4
  br label %256

41:                                               ; preds = %5
  %42 = load %struct.z_info*, %struct.z_info** %12, align 8
  %43 = getelementptr inbounds %struct.z_info, %struct.z_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.z_info*, %struct.z_info** %12, align 8
  %46 = getelementptr inbounds %struct.z_info, %struct.z_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = mul nsw i64 %44, %47
  store i64 %48, i64* %18, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i64, i64* %18, align 8
  %51 = call i64 @SND_FXDIV(i32 %49, i64 %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %256

55:                                               ; preds = %41
  %56 = load %struct.z_info*, %struct.z_info** %12, align 8
  %57 = load i64, i64* %16, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i64 @z_gy2gx(%struct.z_info* %56, i32 %58)
  %60 = load %struct.z_info*, %struct.z_info** %12, align 8
  %61 = call i64 @z_fetched(%struct.z_info* %60)
  %62 = sub nsw i64 %59, %61
  store i64 %62, i64* %17, align 8
  %63 = load %struct.z_info*, %struct.z_info** %12, align 8
  %64 = call i64 @_Z_GY2GX(%struct.z_info* %63, i32 0, i32 1)
  store i64 %64, i64* %14, align 8
  %65 = load %struct.z_info*, %struct.z_info** %12, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i64 @z_drift(%struct.z_info* %65, i64 %66, i32 1)
  store i64 %67, i64* %13, align 8
  %68 = load i32*, i32** %9, align 8
  store i32* %68, i32** %23, align 8
  br label %69

69:                                               ; preds = %246, %55
  %70 = load i64, i64* %17, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %174

72:                                               ; preds = %69
  %73 = load %struct.z_info*, %struct.z_info** %12, align 8
  %74 = call i32 @z_free(%struct.z_info* %73)
  %75 = load i64, i64* %17, align 8
  %76 = call i64 @z_min(i32 %74, i64 %75)
  store i64 %76, i64* %19, align 8
  %77 = load i64, i64* %19, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %72
  %80 = load %struct.z_info*, %struct.z_info** %12, align 8
  %81 = call i64 @z_fetched(%struct.z_info* %80)
  store i64 %81, i64* %20, align 8
  %82 = load %struct.z_info*, %struct.z_info** %12, align 8
  %83 = load %struct.z_info*, %struct.z_info** %12, align 8
  %84 = getelementptr inbounds %struct.z_info, %struct.z_info* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.z_info*, %struct.z_info** %12, align 8
  %87 = getelementptr inbounds %struct.z_info, %struct.z_info* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 1
  %90 = sub nsw i32 %89, 1
  %91 = call i8* @z_prev(%struct.z_info* %82, i32 %85, i32 %90)
  %92 = ptrtoint i8* %91 to i64
  store i64 %92, i64* %21, align 8
  %93 = load %struct.z_info*, %struct.z_info** %12, align 8
  %94 = getelementptr inbounds %struct.z_info, %struct.z_info* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %20, align 8
  %99 = add nsw i64 %97, %98
  store i64 %99, i64* %22, align 8
  %100 = load %struct.z_info*, %struct.z_info** %12, align 8
  %101 = getelementptr inbounds %struct.z_info, %struct.z_info* %100, i32 0, i32 11
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %21, align 8
  %104 = load i64, i64* %18, align 8
  %105 = mul nsw i64 %103, %104
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load %struct.z_info*, %struct.z_info** %12, align 8
  %108 = getelementptr inbounds %struct.z_info, %struct.z_info* %107, i32 0, i32 11
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %18, align 8
  %112 = mul nsw i64 %110, %111
  %113 = call i32 @z_copy(i32* %106, i32* %109, i64 %112)
  %114 = load %struct.z_info*, %struct.z_info** %12, align 8
  %115 = load %struct.z_info*, %struct.z_info** %12, align 8
  %116 = getelementptr inbounds %struct.z_info, %struct.z_info* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 1
  %119 = call i8* @z_prev(%struct.z_info* %114, i32 %118, i32 1)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.z_info*, %struct.z_info** %12, align 8
  %122 = getelementptr inbounds %struct.z_info, %struct.z_info* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.z_info*, %struct.z_info** %12, align 8
  %124 = load %struct.z_info*, %struct.z_info** %12, align 8
  %125 = getelementptr inbounds %struct.z_info, %struct.z_info* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %20, align 8
  %128 = add nsw i64 %127, 1
  %129 = call i64 @z_next(%struct.z_info* %123, i32 %126, i64 %128)
  %130 = load %struct.z_info*, %struct.z_info** %12, align 8
  %131 = getelementptr inbounds %struct.z_info, %struct.z_info* %130, i32 0, i32 6
  store i64 %129, i64* %131, align 8
  %132 = load %struct.z_info*, %struct.z_info** %12, align 8
  %133 = call i32 @z_free(%struct.z_info* %132)
  %134 = load i64, i64* %17, align 8
  %135 = call i64 @z_min(i32 %133, i64 %134)
  store i64 %135, i64* %19, align 8
  br label %136

136:                                              ; preds = %79, %72
  %137 = load i64, i64* %19, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %173

139:                                              ; preds = %136
  %140 = load %struct.pcm_feeder*, %struct.pcm_feeder** %7, align 8
  %141 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.pcm_channel*, %struct.pcm_channel** %8, align 8
  %144 = load %struct.z_info*, %struct.z_info** %12, align 8
  %145 = getelementptr inbounds %struct.z_info, %struct.z_info* %144, i32 0, i32 11
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.z_info*, %struct.z_info** %12, align 8
  %148 = getelementptr inbounds %struct.z_info, %struct.z_info* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %18, align 8
  %151 = mul nsw i64 %149, %150
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  %153 = load i64, i64* %19, align 8
  %154 = load i64, i64* %18, align 8
  %155 = mul nsw i64 %153, %154
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @z_feed(i32 %142, %struct.pcm_channel* %143, i32* %152, i64 %155, i8* %156)
  %158 = load i64, i64* %18, align 8
  %159 = call i64 @SND_FXDIV(i32 %157, i64 %158)
  store i64 %159, i64* %20, align 8
  %160 = load i64, i64* %20, align 8
  %161 = load i64, i64* %17, align 8
  %162 = sub nsw i64 %161, %160
  store i64 %162, i64* %17, align 8
  %163 = load i64, i64* %20, align 8
  %164 = load %struct.z_info*, %struct.z_info** %12, align 8
  %165 = getelementptr inbounds %struct.z_info, %struct.z_info* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  %168 = load i64, i64* %20, align 8
  %169 = load i64, i64* %19, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %139
  store i64 0, i64* %17, align 8
  br label %172

172:                                              ; preds = %171, %139
  br label %173

173:                                              ; preds = %172, %136
  br label %174

174:                                              ; preds = %173, %69
  %175 = load %struct.z_info*, %struct.z_info** %12, align 8
  %176 = load %struct.z_info*, %struct.z_info** %12, align 8
  %177 = call i64 @z_fetched(%struct.z_info* %176)
  %178 = call i32 @z_gx2gy(%struct.z_info* %175, i64 %177)
  %179 = load i64, i64* %16, align 8
  %180 = call i64 @z_min(i32 %178, i64 %179)
  store i64 %180, i64* %15, align 8
  %181 = load i64, i64* %15, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %239

183:                                              ; preds = %174
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %16, align 8
  %186 = sub nsw i64 %185, %184
  store i64 %186, i64* %16, align 8
  br label %187

187:                                              ; preds = %234, %183
  %188 = load %struct.z_info*, %struct.z_info** %12, align 8
  %189 = getelementptr inbounds %struct.z_info, %struct.z_info* %188, i32 0, i32 10
  %190 = load i32 (%struct.z_info*, i32*)*, i32 (%struct.z_info*, i32*)** %189, align 8
  %191 = load %struct.z_info*, %struct.z_info** %12, align 8
  %192 = load i32*, i32** %23, align 8
  %193 = call i32 %190(%struct.z_info* %191, i32* %192)
  %194 = load i64, i64* %13, align 8
  %195 = load %struct.z_info*, %struct.z_info** %12, align 8
  %196 = getelementptr inbounds %struct.z_info, %struct.z_info* %195, i32 0, i32 8
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, %194
  store i64 %198, i64* %196, align 8
  %199 = load %struct.z_info*, %struct.z_info** %12, align 8
  %200 = getelementptr inbounds %struct.z_info, %struct.z_info* %199, i32 0, i32 8
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.z_info*, %struct.z_info** %12, align 8
  %203 = getelementptr inbounds %struct.z_info, %struct.z_info* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %187
  %207 = load i64, i64* %14, align 8
  %208 = load %struct.z_info*, %struct.z_info** %12, align 8
  %209 = getelementptr inbounds %struct.z_info, %struct.z_info* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %207
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 8
  br label %230

214:                                              ; preds = %187
  %215 = load i64, i64* %14, align 8
  %216 = sub nsw i64 %215, 1
  %217 = load %struct.z_info*, %struct.z_info** %12, align 8
  %218 = getelementptr inbounds %struct.z_info, %struct.z_info* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %216
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 8
  %223 = load %struct.z_info*, %struct.z_info** %12, align 8
  %224 = getelementptr inbounds %struct.z_info, %struct.z_info* %223, i32 0, i32 9
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.z_info*, %struct.z_info** %12, align 8
  %227 = getelementptr inbounds %struct.z_info, %struct.z_info* %226, i32 0, i32 8
  %228 = load i64, i64* %227, align 8
  %229 = sub nsw i64 %228, %225
  store i64 %229, i64* %227, align 8
  br label %230

230:                                              ; preds = %214, %206
  %231 = load i64, i64* %18, align 8
  %232 = load i32*, i32** %23, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 %231
  store i32* %233, i32** %23, align 8
  br label %234

234:                                              ; preds = %230
  %235 = load i64, i64* %15, align 8
  %236 = add nsw i64 %235, -1
  store i64 %236, i64* %15, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %187, label %238

238:                                              ; preds = %234
  br label %239

239:                                              ; preds = %238, %174
  br label %240

240:                                              ; preds = %239
  %241 = load i64, i64* %17, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i64, i64* %16, align 8
  %245 = icmp ne i64 %244, 0
  br label %246

246:                                              ; preds = %243, %240
  %247 = phi i1 [ false, %240 ], [ %245, %243 ]
  br i1 %247, label %69, label %248

248:                                              ; preds = %246
  %249 = load i32*, i32** %23, align 8
  %250 = load i32*, i32** %9, align 8
  %251 = ptrtoint i32* %249 to i64
  %252 = ptrtoint i32* %250 to i64
  %253 = sub i64 %251, %252
  %254 = sdiv exact i64 %253, 4
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %248, %54, %31
  %257 = load i32, i32* %6, align 4
  ret i32 %257
}

declare dso_local i32 @z_feed(i32, %struct.pcm_channel*, i32*, i64, i8*) #1

declare dso_local i64 @SND_FXDIV(i32, i64) #1

declare dso_local i64 @z_gy2gx(%struct.z_info*, i32) #1

declare dso_local i64 @z_fetched(%struct.z_info*) #1

declare dso_local i64 @_Z_GY2GX(%struct.z_info*, i32, i32) #1

declare dso_local i64 @z_drift(%struct.z_info*, i64, i32) #1

declare dso_local i64 @z_min(i32, i64) #1

declare dso_local i32 @z_free(%struct.z_info*) #1

declare dso_local i8* @z_prev(%struct.z_info*, i32, i32) #1

declare dso_local i32 @z_copy(i32*, i32*, i64) #1

declare dso_local i64 @z_next(%struct.z_info*, i32, i64) #1

declare dso_local i32 @z_gx2gy(%struct.z_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
