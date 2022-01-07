; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_vblank_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_vblank_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64, i32*, i32*, %struct.TYPE_2__*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"drmvbl\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"drmvtl\00", align 1
@DRM_MEM_VBLANK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DRM_VBLANKTIME_RBSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Supports vblank timestamp caching Rev 1 (10.10.2010).\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Driver supports precise vblank timestamp query.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"No driver support for vblank timestamp query.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_vblank_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 12
  %12 = call i32 @callout_init(i32* %11, i32 1)
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 11
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 10
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = call i8* @malloc(i32 %27, i32 %28, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  br label %180

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %45 = load i32, i32* @M_NOWAIT, align 4
  %46 = call i8* @malloc(i32 %43, i32 %44, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %39
  br label %180

55:                                               ; preds = %39
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = load i32, i32* @M_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @malloc(i32 %59, i32 %60, i32 %63)
  %65 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 9
  store i8* %64, i8** %66, align 8
  %67 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 9
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %55
  br label %180

72:                                               ; preds = %55
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %78 = load i32, i32* @M_NOWAIT, align 4
  %79 = load i32, i32* @M_ZERO, align 4
  %80 = or i32 %78, %79
  %81 = call i8* @malloc(i32 %76, i32 %77, i32 %80)
  %82 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %84, i32 0, i32 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %72
  br label %180

89:                                               ; preds = %72
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %95 = load i32, i32* @M_NOWAIT, align 4
  %96 = load i32, i32* @M_ZERO, align 4
  %97 = or i32 %95, %96
  %98 = call i8* @malloc(i32 %93, i32 %94, i32 %97)
  %99 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 7
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %89
  br label %180

106:                                              ; preds = %89
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %112 = load i32, i32* @M_NOWAIT, align 4
  %113 = load i32, i32* @M_ZERO, align 4
  %114 = or i32 %112, %113
  %115 = call i8* @malloc(i32 %110, i32 %111, i32 %114)
  %116 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %117 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %119 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %118, i32 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %106
  br label %180

123:                                              ; preds = %106
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @DRM_VBLANKTIME_RBSIZE, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %131 = load i32, i32* @M_NOWAIT, align 4
  %132 = load i32, i32* @M_ZERO, align 4
  %133 = or i32 %131, %132
  %134 = call i8* @malloc(i32 %129, i32 %130, i32 %133)
  %135 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %136 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %138 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %137, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %123
  br label %180

142:                                              ; preds = %123
  %143 = call i32 @DRM_INFO(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %144 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %145 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %144, i32 0, i32 4
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = call i32 @DRM_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %154

152:                                              ; preds = %142
  %153 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %150
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %174, %154
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %177

159:                                              ; preds = %155
  %160 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %161 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = call i32 @atomic_set(i32* %165, i32 0)
  %167 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %168 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = call i32 @atomic_set(i32* %172, i32 0)
  br label %174

174:                                              ; preds = %159
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %155

177:                                              ; preds = %155
  %178 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %179 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %178, i32 0, i32 1
  store i64 0, i64* %179, align 8
  store i32 0, i32* %3, align 4
  br label %184

180:                                              ; preds = %141, %122, %105, %88, %71, %54, %38
  %181 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %182 = call i32 @drm_vblank_cleanup(%struct.drm_device* %181)
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @drm_vblank_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
