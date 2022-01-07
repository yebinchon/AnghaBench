; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.fb_info* }
%struct.TYPE_2__ = type { i32 (%struct.vt_device*, i32)* }
%struct.fb_info = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32 }

@VT_FB_MAX_HEIGHT = common dso_local global i32 0, align 4
@VT_FB_MAX_WIDTH = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@CN_DEAD = common dso_local global i32 0, align 4
@FB_FLAG_NOMMAP = common dso_local global i32 0, align 4
@TC_BLACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"teken.bg_color\00", align 1
@TC_WHITE = common dso_local global i32 0, align 4
@TC_LIGHT = common dso_local global i32 0, align 4
@CN_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vt_fb_init(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  %9 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %10 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %9, i32 0, i32 5
  %11 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  store %struct.fb_info* %11, %struct.fb_info** %4, align 8
  %12 = load i32, i32* @VT_FB_MAX_HEIGHT, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @MIN(i32 %12, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %19 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %24 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %34 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @VT_FB_MAX_WIDTH, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @MIN(i32 %35, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %42 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %47 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NBBY, align 4
  %56 = sdiv i32 %54, %55
  %57 = mul nsw i32 %51, %56
  %58 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %59 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %66 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %1
  %72 = load i32, i32* @CN_DEAD, align 4
  store i32 %72, i32* %2, align 4
  br label %134

73:                                               ; preds = %1
  %74 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @FB_FLAG_NOMMAP, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %78, %73
  %90 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %99 = call i32 @FBTYPE_GET_BPP(%struct.fb_info* %98)
  %100 = call i32 @vt_fb_init_cmap(i32 %97, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @CN_DEAD, align 4
  store i32 %104, i32* %2, align 4
  br label %134

105:                                              ; preds = %94
  %106 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 7
  store i32 16, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %89
  %109 = load i32, i32* @TC_BLACK, align 4
  store i32 %109, i32* %8, align 4
  %110 = call i64 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @TC_WHITE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* @TC_LIGHT, align 4
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %120, %108
  %123 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %124 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32 (%struct.vt_device*, i32)*, i32 (%struct.vt_device*, i32)** %126, align 8
  %128 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 %127(%struct.vt_device* %128, i32 %129)
  %131 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %132 = call i32 @vt_fb_postswitch(%struct.vt_device* %131)
  %133 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %122, %103, %71
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @vt_fb_init_cmap(i32, i32) #1

declare dso_local i32 @FBTYPE_GET_BPP(%struct.fb_info*) #1

declare dso_local i64 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @vt_fb_postswitch(%struct.vt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
