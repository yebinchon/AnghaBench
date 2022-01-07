; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcsd_softc = type { %struct.mmcsd_part** }
%struct.mmcsd_part = type { i64, i64, i32, i32, i32, i64, i32* }

@MMC_PART_MAX = common dso_local global i32 0, align 4
@mmcsd_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s%d: mmc/sd card\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mmcsd_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmcsd_softc*, align 8
  %4 = alloca %struct.mmcsd_part*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mmcsd_softc* @device_get_softc(i32 %6)
  store %struct.mmcsd_softc* %7, %struct.mmcsd_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %63, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MMC_PART_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %13, i32 0, i32 0
  %15 = load %struct.mmcsd_part**, %struct.mmcsd_part*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mmcsd_part*, %struct.mmcsd_part** %15, i64 %17
  %19 = load %struct.mmcsd_part*, %struct.mmcsd_part** %18, align 8
  store %struct.mmcsd_part* %19, %struct.mmcsd_part** %4, align 8
  %20 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %21 = icmp ne %struct.mmcsd_part* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %12
  %23 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %24 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %29 = call i32 @MMCSD_DISK_LOCK(%struct.mmcsd_part* %28)
  %30 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %31 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %33 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %38 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %37, i32 0, i32 0
  store i64 1, i64* %38, align 8
  %39 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %40 = call i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part* %39)
  %41 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %42 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %43 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %42, i32 0, i32 4
  %44 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %45 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %48 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @kproc_create(i32* @mmcsd_task, %struct.mmcsd_part* %41, i32* %43, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  br label %54

51:                                               ; preds = %27
  %52 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %53 = call i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part* %52)
  br label %54

54:                                               ; preds = %51, %36
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %57 = call i32 @MMCSD_IOCTL_LOCK(%struct.mmcsd_part* %56)
  %58 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %59 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %61 = call i32 @MMCSD_IOCTL_UNLOCK(%struct.mmcsd_part* %60)
  br label %62

62:                                               ; preds = %55, %12
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %8

66:                                               ; preds = %8
  ret i32 0
}

declare dso_local %struct.mmcsd_softc* @device_get_softc(i32) #1

declare dso_local i32 @MMCSD_DISK_LOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @kproc_create(i32*, %struct.mmcsd_part*, i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @MMCSD_IOCTL_LOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @MMCSD_IOCTL_UNLOCK(%struct.mmcsd_part*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
