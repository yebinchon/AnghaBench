; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_cam_detach_sdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_cam_detach_sdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_dev = type { i64, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SBP_DEV_DEAD = common dso_local global i64 0, align 8
@SBP_DEV_RESET = common dso_local global i64 0, align 8
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_dev*)* @sbp_cam_detach_sdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_cam_detach_sdev(%struct.sbp_dev* %0) #0 {
  %2 = alloca %struct.sbp_dev*, align 8
  store %struct.sbp_dev* %0, %struct.sbp_dev** %2, align 8
  %3 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %4 = icmp eq %struct.sbp_dev* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %56

6:                                                ; preds = %1
  %7 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %8 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SBP_DEV_DEAD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %56

13:                                               ; preds = %6
  %14 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %15 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SBP_DEV_RESET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %56

20:                                               ; preds = %13
  %21 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %22 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SBP_LOCK_ASSERT(i32 %25)
  %27 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %28 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %29 = call i32 @sbp_abort_all_ocbs(%struct.sbp_dev* %27, i32 %28)
  %30 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %31 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %20
  %35 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %36 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %39 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @xpt_release_devq(i32* %37, i64 %40, i32 %41)
  %43 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %44 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @AC_LOST_DEVICE, align 4
  %46 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %47 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @xpt_async(i32 %45, i32* %48, i32* null)
  %50 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %51 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @xpt_free_path(i32* %52)
  %54 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %55 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %5, %12, %19, %34, %20
  ret void
}

declare dso_local i32 @SBP_LOCK_ASSERT(i32) #1

declare dso_local i32 @sbp_abort_all_ocbs(%struct.sbp_dev*, i32) #1

declare dso_local i32 @xpt_release_devq(i32*, i64, i32) #1

declare dso_local i32 @xpt_async(i32, i32*, i32*) #1

declare dso_local i32 @xpt_free_path(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
