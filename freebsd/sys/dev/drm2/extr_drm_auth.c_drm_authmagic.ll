; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_auth.c_drm_authmagic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_auth.c_drm_authmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32, i32 }
%struct.drm_auth = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_authmagic(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_auth*, align 8
  %9 = alloca %struct.drm_file*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_auth*
  store %struct.drm_auth* %11, %struct.drm_auth** %8, align 8
  %12 = load %struct.drm_auth*, %struct.drm_auth** %8, align 8
  %13 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_auth*, %struct.drm_auth** %8, align 8
  %20 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.drm_file* @drm_find_file(i32 %18, i32 %21)
  store %struct.drm_file* %22, %struct.drm_file** %9, align 8
  %23 = icmp ne %struct.drm_file* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %26 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %28 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_auth*, %struct.drm_auth** %8, align 8
  %31 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @drm_remove_magic(i32 %29, i32 %32)
  store i32 0, i32* %4, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.drm_file* @drm_find_file(i32, i32) #1

declare dso_local i32 @drm_remove_magic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
