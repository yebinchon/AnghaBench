; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_object_attach_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_object_attach_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_object = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32* }
%struct.drm_property = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DRM_OBJECT_MAX_PROPERTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [153 x i8] c"Failed to attach object property (type: 0x%x). Please increase DRM_OBJECT_MAX_PROPERTY by 1 for each time you see this message on the same object type.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_object_attach_property(%struct.drm_mode_object* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_mode_object*, align 8
  %5 = alloca %struct.drm_property*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_mode_object* %0, %struct.drm_mode_object** %4, align 8
  store %struct.drm_property* %1, %struct.drm_property** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %9 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @DRM_OBJECT_MAX_PROPERTY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %18 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DRM_WARNING(i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %49

21:                                               ; preds = %3
  %22 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %23 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %27 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %25, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %36 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %34, i32* %42, align 4
  %43 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %44 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @DRM_WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
