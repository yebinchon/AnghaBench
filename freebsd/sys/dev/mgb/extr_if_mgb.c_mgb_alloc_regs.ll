; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_alloc_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_alloc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32*, i32 }

@MGB_BAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgb_softc*)* @mgb_alloc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_alloc_regs(%struct.mgb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mgb_softc* %0, %struct.mgb_softc** %3, align 8
  %5 = load i32, i32* @MGB_BAR, align 4
  %6 = call i32 @PCIR_BAR(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pci_enable_busmaster(i32 %9)
  %11 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i32* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %4, i32 %15)
  %17 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
