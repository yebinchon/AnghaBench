; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_object_property_get_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_object_property_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64*, i32* }
%struct.drm_property = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_object_property_get_value(%struct.drm_mode_object* %0, %struct.drm_property* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_mode_object*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_mode_object* %0, %struct.drm_mode_object** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %44, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %12 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %9
  %18 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %19 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %28 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %17
  %33 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %34 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %50

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %9

47:                                               ; preds = %9
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %32
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
