; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_ioctl.c_drm_getunique.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_ioctl.c_drm_getunique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_master* }
%struct.drm_master = type { i64, i32 }
%struct.drm_unique = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_getunique(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_unique*, align 8
  %9 = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_unique*
  store %struct.drm_unique* %11, %struct.drm_unique** %8, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  store %struct.drm_master* %14, %struct.drm_master** %9, align 8
  %15 = load %struct.drm_unique*, %struct.drm_unique** %8, align 8
  %16 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %19 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load %struct.drm_unique*, %struct.drm_unique** %8, align 8
  %24 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %27 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %30 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @copy_to_user(i32 %25, i32 %28, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %40 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.drm_unique*, %struct.drm_unique** %8, align 8
  %43 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @copy_to_user(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
