; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_update_pre_post_images.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_update_pre_post_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image = type { i32, i8*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@LINE_COMMON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"caller miscounted postlen: asked %d, orig = %d, used = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image*, %struct.image*, i8*, i64, i64)* @update_pre_post_images to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pre_post_images(%struct.image* %0, %struct.image* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.image*, align 8
  %7 = alloca %struct.image*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.image, align 8
  %18 = alloca i64, align 8
  store %struct.image* %0, %struct.image** %6, align 8
  store %struct.image* %1, %struct.image** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @prepare_image(%struct.image* %17, i8* %19, i64 %20, i32 1)
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.image, %struct.image* %17, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.image*, %struct.image** %6, align 8
  %28 = getelementptr inbounds %struct.image, %struct.image* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  %31 = zext i1 %30 to i32
  br label %40

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.image, %struct.image* %17, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.image*, %struct.image** %6, align 8
  %36 = getelementptr inbounds %struct.image, %struct.image* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %34, %37
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %32, %24
  %41 = phi i32 [ %31, %24 ], [ %39, %32 ]
  %42 = call i32 @assert(i32 %41)
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %63, %40
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds %struct.image, %struct.image* %17, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.image*, %struct.image** %6, align 8
  %50 = getelementptr inbounds %struct.image, %struct.image* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.image, %struct.image* %17, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 8
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load %struct.image*, %struct.image** %6, align 8
  %68 = getelementptr inbounds %struct.image, %struct.image* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @free(i32 %69)
  %71 = load %struct.image*, %struct.image** %6, align 8
  %72 = bitcast %struct.image* %71 to i8*
  %73 = bitcast %struct.image* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 40, i1 false)
  %74 = load %struct.image*, %struct.image** %7, align 8
  %75 = getelementptr inbounds %struct.image, %struct.image* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %15, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load i64, i64* %10, align 8
  %81 = call i8* @xmalloc(i64 %80)
  %82 = load %struct.image*, %struct.image** %7, align 8
  %83 = getelementptr inbounds %struct.image, %struct.image* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  store i8* %81, i8** %14, align 8
  br label %86

84:                                               ; preds = %66
  %85 = load i8*, i8** %15, align 8
  store i8* %85, i8** %14, align 8
  br label %86

86:                                               ; preds = %84, %79
  %87 = load %struct.image*, %struct.image** %6, align 8
  %88 = getelementptr inbounds %struct.image, %struct.image* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %16, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %203, %86
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.image*, %struct.image** %7, align 8
  %93 = getelementptr inbounds %struct.image, %struct.image* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %206

96:                                               ; preds = %90
  %97 = load %struct.image*, %struct.image** %7, align 8
  %98 = getelementptr inbounds %struct.image, %struct.image* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %18, align 8
  %105 = load %struct.image*, %struct.image** %7, align 8
  %106 = getelementptr inbounds %struct.image, %struct.image* %105, i32 0, i32 3
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LINE_COMMON, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %96
  %117 = load i8*, i8** %14, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i64, i64* %18, align 8
  %120 = call i32 @memmove(i8* %117, i8* %118, i64 %119)
  %121 = load i64, i64* %18, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 %121
  store i8* %123, i8** %15, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %126, i8** %14, align 8
  br label %203

127:                                              ; preds = %96
  %128 = load i64, i64* %18, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  store i8* %130, i8** %15, align 8
  br label %131

131:                                              ; preds = %152, %127
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.image*, %struct.image** %6, align 8
  %134 = getelementptr inbounds %struct.image, %struct.image* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %131
  %138 = load %struct.image*, %struct.image** %6, align 8
  %139 = getelementptr inbounds %struct.image, %struct.image* %138, i32 0, i32 3
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @LINE_COMMON, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  br label %150

150:                                              ; preds = %137, %131
  %151 = phi i1 [ false, %131 ], [ %149, %137 ]
  br i1 %151, label %152, label %165

152:                                              ; preds = %150
  %153 = load %struct.image*, %struct.image** %6, align 8
  %154 = getelementptr inbounds %struct.image, %struct.image* %153, i32 0, i32 3
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 %160
  store i8* %162, i8** %16, align 8
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %131

165:                                              ; preds = %150
  %166 = load %struct.image*, %struct.image** %6, align 8
  %167 = getelementptr inbounds %struct.image, %struct.image* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %203

174:                                              ; preds = %165
  %175 = load %struct.image*, %struct.image** %6, align 8
  %176 = getelementptr inbounds %struct.image, %struct.image* %175, i32 0, i32 3
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %18, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = load i8*, i8** %16, align 8
  %185 = load i64, i64* %18, align 8
  %186 = call i32 @memcpy(i8* %183, i8* %184, i64 %185)
  %187 = load i64, i64* %18, align 8
  %188 = load i8*, i8** %14, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 %187
  store i8* %189, i8** %14, align 8
  %190 = load i64, i64* %18, align 8
  %191 = load i8*, i8** %16, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8* %192, i8** %16, align 8
  %193 = load i64, i64* %18, align 8
  %194 = load %struct.image*, %struct.image** %7, align 8
  %195 = getelementptr inbounds %struct.image, %struct.image* %194, i32 0, i32 3
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  store i64 %193, i64* %200, align 8
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %203

203:                                              ; preds = %174, %171, %116
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %90

206:                                              ; preds = %90
  %207 = load i64, i64* %10, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = load i64, i64* %10, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = load %struct.image*, %struct.image** %7, align 8
  %213 = getelementptr inbounds %struct.image, %struct.image* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = ptrtoint i8* %211 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = icmp ult i64 %210, %217
  br i1 %218, label %232, label %247

219:                                              ; preds = %206
  %220 = load %struct.image*, %struct.image** %7, align 8
  %221 = getelementptr inbounds %struct.image, %struct.image* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = load i8*, i8** %14, align 8
  %225 = load %struct.image*, %struct.image** %7, align 8
  %226 = getelementptr inbounds %struct.image, %struct.image* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = ptrtoint i8* %224 to i64
  %229 = ptrtoint i8* %227 to i64
  %230 = sub i64 %228, %229
  %231 = icmp slt i64 %223, %230
  br i1 %231, label %232, label %247

232:                                              ; preds = %219, %209
  %233 = load i64, i64* %10, align 8
  %234 = trunc i64 %233 to i32
  %235 = load %struct.image*, %struct.image** %7, align 8
  %236 = getelementptr inbounds %struct.image, %struct.image* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i8*, i8** %14, align 8
  %239 = load %struct.image*, %struct.image** %7, align 8
  %240 = getelementptr inbounds %struct.image, %struct.image* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = ptrtoint i8* %238 to i64
  %243 = ptrtoint i8* %241 to i64
  %244 = sub i64 %242, %243
  %245 = trunc i64 %244 to i32
  %246 = call i32 @BUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %234, i32 %237, i32 %245)
  br label %247

247:                                              ; preds = %232, %219, %209
  %248 = load i8*, i8** %14, align 8
  %249 = load %struct.image*, %struct.image** %7, align 8
  %250 = getelementptr inbounds %struct.image, %struct.image* %249, i32 0, i32 1
  %251 = load i8*, i8** %250, align 8
  %252 = ptrtoint i8* %248 to i64
  %253 = ptrtoint i8* %251 to i64
  %254 = sub i64 %252, %253
  %255 = trunc i64 %254 to i32
  %256 = load %struct.image*, %struct.image** %7, align 8
  %257 = getelementptr inbounds %struct.image, %struct.image* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.image*, %struct.image** %7, align 8
  %260 = getelementptr inbounds %struct.image, %struct.image* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 %261, %258
  store i32 %262, i32* %260, align 8
  ret void
}

declare dso_local i32 @prepare_image(%struct.image*, i8*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @BUG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
