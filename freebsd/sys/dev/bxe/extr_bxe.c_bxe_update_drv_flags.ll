; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_update_drv_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_update_drv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@HW_LOCK_RESOURCE_DRV_FLAGS = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"drv_flags 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i64, i64)* @bxe_update_drv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_update_drv_flags(%struct.bxe_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i64 @SHMEM2_HAS(%struct.bxe_softc* %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %14 = load i32, i32* @HW_LOCK_RESOURCE_DRV_FLAGS, align 4
  %15 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %13, i32 %14)
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @SHMEM2_RD(%struct.bxe_softc* %16, i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @SET_FLAGS(i64 %22, i64 %23)
  br label %29

25:                                               ; preds = %12
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @RESET_FLAGS(i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @SHMEM2_WR(%struct.bxe_softc* %30, i64 %31, i64 %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %35 = load i32, i32* @DBG_LOAD, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @BLOGD(%struct.bxe_softc* %34, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %39 = load i32, i32* @HW_LOCK_RESOURCE_DRV_FLAGS, align 4
  %40 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %38, i32 %39)
  br label %41

41:                                               ; preds = %29, %3
  ret void
}

declare dso_local i64 @SHMEM2_HAS(%struct.bxe_softc*, i64) #1

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i64 @SHMEM2_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @SET_FLAGS(i64, i64) #1

declare dso_local i32 @RESET_FLAGS(i64, i64) #1

declare dso_local i32 @SHMEM2_WR(%struct.bxe_softc*, i64, i64) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i64) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
