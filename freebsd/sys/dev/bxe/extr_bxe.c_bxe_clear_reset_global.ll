; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_clear_reset_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_clear_reset_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@HW_LOCK_RESOURCE_RECOVERY_REG = common dso_local global i32 0, align 4
@BXE_RECOVERY_GLOB_REG = common dso_local global i32 0, align 4
@BXE_GLOBAL_RESET_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_clear_reset_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_clear_reset_global(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %6 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %4, i32 %5)
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = load i32, i32* @BXE_RECOVERY_GLOB_REG, align 4
  %9 = call i32 @REG_RD(%struct.bxe_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = load i32, i32* @BXE_RECOVERY_GLOB_REG, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BXE_GLOBAL_RESET_BIT, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @REG_WR(%struct.bxe_softc* %10, i32 %11, i32 %15)
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %19 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %17, i32 %18)
  ret void
}

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
