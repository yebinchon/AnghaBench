; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_property_change_is_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_property_change_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32, i64*, i32 }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@DRM_MODE_PROP_RANGE = common dso_local global i32 0, align 4
@DRM_MODE_PROP_BITMASK = common dso_local global i32 0, align 4
@DRM_MODE_PROP_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_property*, i64)* @drm_property_change_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_property_change_is_valid(%struct.drm_property* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_property*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_property* %0, %struct.drm_property** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %10 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %108

16:                                               ; preds = %2
  %17 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %18 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DRM_MODE_PROP_RANGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %26 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %34 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %23
  store i32 0, i32* %3, align 4
  br label %108

40:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %108

41:                                               ; preds = %16
  %42 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %43 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DRM_MODE_PROP_BITMASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %52 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %57 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = shl i64 1, %62
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %49

69:                                               ; preds = %49
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = xor i64 %71, -1
  %73 = and i64 %70, %72
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %108

77:                                               ; preds = %41
  %78 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %79 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %108

85:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %104, %85
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %89 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %94 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  store i32 1, i32* %3, align 4
  br label %108

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %86

107:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %102, %84, %69, %40, %39, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
