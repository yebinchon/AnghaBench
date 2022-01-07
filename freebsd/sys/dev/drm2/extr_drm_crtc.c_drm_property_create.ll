; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_property_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_property_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32, i32, i8*, %struct.drm_property*, i32, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_PROPERTY = common dso_local global i32 0, align 4
@DRM_PROP_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property* @drm_property_create(%struct.drm_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_property*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_property*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.drm_property* null, %struct.drm_property** %10, align 8
  %12 = load i32, i32* @DRM_MEM_KMS, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @malloc(i32 40, i32 %12, i32 %15)
  %17 = bitcast i8* %16 to %struct.drm_property*
  store %struct.drm_property* %17, %struct.drm_property** %10, align 8
  %18 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %19 = icmp ne %struct.drm_property* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.drm_property* null, %struct.drm_property** %5, align 8
  br label %95

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @DRM_MEM_KMS, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @malloc(i32 %28, i32 %29, i32 %32)
  %34 = bitcast i8* %33 to %struct.drm_property*
  %35 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %36 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %35, i32 0, i32 3
  store %struct.drm_property* %34, %struct.drm_property** %36, align 8
  %37 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %38 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %37, i32 0, i32 3
  %39 = load %struct.drm_property*, %struct.drm_property** %38, align 8
  %40 = icmp ne %struct.drm_property* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  br label %86

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %46 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %45, i32 0, i32 6
  %47 = load i32, i32* @DRM_MODE_OBJECT_PROPERTY, align 4
  %48 = call i32 @drm_mode_object_get(%struct.drm_device* %44, i32* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %86

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %55 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %58 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %60 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %59, i32 0, i32 5
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %52
  %65 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %66 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* @DRM_PROP_NAME_LEN, align 4
  %70 = call i32 @strncpy(i8* %67, i8* %68, i32 %69)
  %71 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %72 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @DRM_PROP_NAME_LEN, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %64, %52
  %79 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %80 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %79, i32 0, i32 4
  %81 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @list_add_tail(i32* %80, i32* %83)
  %85 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  store %struct.drm_property* %85, %struct.drm_property** %5, align 8
  br label %95

86:                                               ; preds = %51, %41
  %87 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %88 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %87, i32 0, i32 3
  %89 = load %struct.drm_property*, %struct.drm_property** %88, align 8
  %90 = load i32, i32* @DRM_MEM_KMS, align 4
  %91 = call i32 @free(%struct.drm_property* %89, i32 %90)
  %92 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %93 = load i32, i32* @DRM_MEM_KMS, align 4
  %94 = call i32 @free(%struct.drm_property* %92, i32 %93)
  store %struct.drm_property* null, %struct.drm_property** %5, align 8
  br label %95

95:                                               ; preds = %86, %78, %20
  %96 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  ret %struct.drm_property* %96
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @free(%struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
