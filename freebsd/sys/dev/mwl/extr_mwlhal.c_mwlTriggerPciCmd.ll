; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwlTriggerPciCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwlTriggerPciCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_priv = type { i32, i32, i32 }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MACREG_REG_GEN_PTR = common dso_local global i32 0, align 4
@MACREG_REG_INT_CODE = common dso_local global i32 0, align 4
@MACREG_REG_H2A_INTERRUPT_EVENTS = common dso_local global i32 0, align 4
@MACREG_H2ARIC_BIT_DOOR_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_hal_priv*)* @mwlTriggerPciCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwlTriggerPciCmd(%struct.mwl_hal_priv* %0) #0 {
  %2 = alloca %struct.mwl_hal_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.mwl_hal_priv* %0, %struct.mwl_hal_priv** %2, align 8
  %4 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %11 = call i32 @bus_dmamap_sync(i32 %6, i32 %9, i32 %10)
  %12 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %13 = load i32, i32* @MACREG_REG_GEN_PTR, align 4
  %14 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %15 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @WR4(%struct.mwl_hal_priv* %12, i32 %13, i32 %16)
  %18 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %19 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %20 = call i32 @RD4(%struct.mwl_hal_priv* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %22 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %23 = call i32 @WR4(%struct.mwl_hal_priv* %21, i32 %22, i32 0)
  %24 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %25 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %26 = call i32 @RD4(%struct.mwl_hal_priv* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %28 = load i32, i32* @MACREG_REG_H2A_INTERRUPT_EVENTS, align 4
  %29 = load i32, i32* @MACREG_H2ARIC_BIT_DOOR_BELL, align 4
  %30 = call i32 @WR4(%struct.mwl_hal_priv* %27, i32 %28, i32 %29)
  %31 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %32 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %33 = call i32 @RD4(%struct.mwl_hal_priv* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @WR4(%struct.mwl_hal_priv*, i32, i32) #1

declare dso_local i32 @RD4(%struct.mwl_hal_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
