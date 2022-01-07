; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@shutdown_post_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpt_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @device_get_softc(i32 %4)
  %6 = inttoptr i64 %5 to %struct.mpt_softc*
  store %struct.mpt_softc* %6, %struct.mpt_softc** %3, align 8
  %7 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %8 = icmp ne %struct.mpt_softc* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = call i32 @mpt_disable_ints(%struct.mpt_softc* %10)
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %13 = call i32 @mpt_detach(%struct.mpt_softc* %12)
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @mpt_reset(%struct.mpt_softc* %14, i32 %15)
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %18 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %17)
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %20 = call i32 @mpt_dma_mem_free(%struct.mpt_softc* %19)
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %22 = call i32 @mpt_free_bus_resources(%struct.mpt_softc* %21)
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %9
  %28 = load i32, i32* @shutdown_post_sync, align 4
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @EVENTHANDLER_DEREGISTER(i32 %28, i32* %31)
  br label %33

33:                                               ; preds = %27, %9
  %34 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %35 = call i32 @MPT_LOCK_DESTROY(%struct.mpt_softc* %34)
  br label %36

36:                                               ; preds = %33, %1
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mpt_disable_ints(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_detach(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_reset(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_raid_free_mem(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_dma_mem_free(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_free_bus_resources(%struct.mpt_softc*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @MPT_LOCK_DESTROY(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
