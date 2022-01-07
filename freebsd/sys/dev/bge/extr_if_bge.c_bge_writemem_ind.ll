; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_writemem_ind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_writemem_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i32 }

@BGE_ASICREV_BCM5906 = common dso_local global i64 0, align 8
@BGE_STATS_BLOCK = common dso_local global i32 0, align 4
@BGE_SEND_RING_1_TO_4 = common dso_local global i32 0, align 4
@BGE_PCI_MEMWIN_BASEADDR = common dso_local global i32 0, align 4
@BGE_PCI_MEMWIN_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i32, i32)* @bge_writemem_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_writemem_ind(%struct.bge_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %9 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BGE_STATS_BLOCK, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BGE_SEND_RING_1_TO_4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %37

22:                                               ; preds = %17, %13, %3
  %23 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BGE_PCI_MEMWIN_BASEADDR, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pci_write_config(i32 %26, i32 %27, i32 %28, i32 4)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BGE_PCI_MEMWIN_DATA, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pci_write_config(i32 %30, i32 %31, i32 %32, i32 4)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BGE_PCI_MEMWIN_BASEADDR, align 4
  %36 = call i32 @pci_write_config(i32 %34, i32 %35, i32 0, i32 4)
  br label %37

37:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
