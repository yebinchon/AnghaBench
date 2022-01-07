; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_pf_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_pf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@BXE_PATH1_LOAD_CNT_MASK = common dso_local global i32 0, align 4
@BXE_PATH0_LOAD_CNT_MASK = common dso_local global i32 0, align 4
@BXE_PATH1_LOAD_CNT_SHIFT = common dso_local global i32 0, align 4
@BXE_PATH0_LOAD_CNT_SHIFT = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_RECOVERY_REG = common dso_local global i32 0, align 4
@BXE_RECOVERY_GLOB_REG = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Old value for GLOB_REG=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_set_pf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_set_pf_load(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = call i64 @SC_PATH(%struct.bxe_softc* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @BXE_PATH1_LOAD_CNT_MASK, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @BXE_PATH0_LOAD_CNT_MASK, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = call i64 @SC_PATH(%struct.bxe_softc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @BXE_PATH1_LOAD_CNT_SHIFT, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @BXE_PATH0_LOAD_CNT_SHIFT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %26 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %27 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %25, i32 %26)
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = load i32, i32* @BXE_RECOVERY_GLOB_REG, align 4
  %30 = call i32 @REG_RD(%struct.bxe_softc* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = load i32, i32* @DBG_LOAD, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @BLOGD(%struct.bxe_softc* %31, i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = call i32 @SC_ABS_FUNC(%struct.bxe_softc* %40)
  %42 = shl i32 1, %41
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = load i32, i32* @BXE_RECOVERY_GLOB_REG, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @REG_WR(%struct.bxe_softc* %56, i32 %57, i32 %58)
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %61 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %62 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %60, i32 %61)
  ret void
}

declare dso_local i64 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @SC_ABS_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
