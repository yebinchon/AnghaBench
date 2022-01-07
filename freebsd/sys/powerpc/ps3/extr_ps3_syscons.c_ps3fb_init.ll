; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3_syscons.c_ps3fb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3_syscons.c_ps3fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3fb_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vt_device = type { %struct.ps3fb_softc* }

@ps3fb_softc = common dso_local global %struct.ps3fb_softc zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ps3fb:mode:%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"hw.ps3fb.height\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"hw.ps3fb.width\00", align 1
@FB_FLAG_NOWRITE = common dso_local global i32 0, align 4
@COLOR_FORMAT_RGB = common dso_local global i32 0, align 4
@L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP = common dso_local global i32 0, align 4
@CN_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @ps3fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3fb_init(%struct.vt_device* %0) #0 {
  %2 = alloca %struct.vt_device*, align 8
  %3 = alloca %struct.ps3fb_softc*, align 8
  %4 = alloca [24 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %2, align 8
  store i32 0, i32* %5, align 4
  store %struct.ps3fb_softc* @ps3fb_softc, %struct.ps3fb_softc** %3, align 8
  %6 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %7 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %6, i32 0, i32 0
  store %struct.ps3fb_softc* @ps3fb_softc, %struct.ps3fb_softc** %7, align 8
  %8 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 32, i32* %10, align 4
  %11 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 1080, i32* %13, align 4
  %14 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 1920, i32* %16, align 4
  %17 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %18 = call i32 @bzero(i8* %17, i32 24)
  %19 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %20 = call i32 @TUNABLE_STR_FETCH(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i32 24)
  %21 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %73 [
    i32 1, label %24
    i32 2, label %24
    i32 3, label %31
    i32 8, label %31
    i32 4, label %38
    i32 5, label %38
    i32 9, label %38
    i32 10, label %38
    i32 6, label %45
    i32 7, label %45
    i32 11, label %52
    i32 12, label %59
    i32 13, label %66
  ]

24:                                               ; preds = %1, %1
  %25 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 480, i32* %27, align 4
  %28 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 720, i32* %30, align 4
  br label %73

31:                                               ; preds = %1, %1
  %32 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 720, i32* %34, align 4
  %35 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 1280, i32* %37, align 4
  br label %73

38:                                               ; preds = %1, %1, %1, %1
  %39 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 1080, i32* %41, align 4
  %42 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 1920, i32* %44, align 4
  br label %73

45:                                               ; preds = %1, %1
  %46 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 576, i32* %48, align 4
  %49 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 720, i32* %51, align 4
  br label %73

52:                                               ; preds = %1
  %53 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 768, i32* %55, align 4
  %56 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 1024, i32* %58, align 4
  br label %73

59:                                               ; preds = %1
  %60 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 1024, i32* %62, align 4
  %63 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 1280, i32* %65, align 4
  br label %73

66:                                               ; preds = %1
  %67 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 1200, i32* %69, align 4
  %70 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 1920, i32* %72, align 4
  br label %73

73:                                               ; preds = %1, %66, %59, %52, %45, %38, %31, %24
  %74 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %76)
  %78 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %80)
  %82 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 4
  %87 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %95 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %93, %97
  %99 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 4
  %102 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %105, %109
  %111 = mul nsw i32 %110, 8
  %112 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 5
  store i32 %111, i32* %114, align 4
  %115 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %116 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  store i32 268435456, i32* %117, align 4
  %118 = load i32, i32* @FB_FLAG_NOWRITE, align 4
  %119 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 4
  %124 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %125 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 7
  store i32 16, i32* %126, align 4
  %127 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %128 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @COLOR_FORMAT_RGB, align 4
  %132 = call i32 @vt_generate_cons_palette(i32 %130, i32 %131, i32 255, i32 16, i32 255, i32 8, i32 255, i32 0)
  %133 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %134 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP, align 4
  %137 = call i32 @lv1_gpu_context_attribute(i32 %135, i32 %136, i32 0, i32 0, i32 0, i32 0)
  %138 = load %struct.ps3fb_softc*, %struct.ps3fb_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ps3fb_softc, %struct.ps3fb_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP, align 4
  %142 = call i32 @lv1_gpu_context_attribute(i32 %140, i32 %141, i32 1, i32 0, i32 0, i32 0)
  %143 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %144 = call i32 @vt_fb_init(%struct.vt_device* %143)
  %145 = load i32, i32* @CN_INTERNAL, align 4
  ret i32 %145
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @TUNABLE_STR_FETCH(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @vt_generate_cons_palette(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lv1_gpu_context_attribute(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vt_fb_init(%struct.vt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
