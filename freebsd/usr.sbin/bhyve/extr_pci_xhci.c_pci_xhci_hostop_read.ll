; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_hostop_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_hostop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@XHCI_CAPLEN = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_CRR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"pci_xhci: hostop read offset 0x%lx -> 0x%lx\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, i32)* @pci_xhci_hostop_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_hostop_read(%struct.pci_xhci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @XHCI_CAPLEN, align 4
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %54 [
    i32 129, label %10
    i32 128, label %15
    i32 130, label %20
    i32 131, label %25
    i32 134, label %30
    i32 135, label %37
    i32 132, label %38
    i32 133, label %43
    i32 136, label %49
  ]

10:                                               ; preds = %2
  %11 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %17 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %27 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %63

30:                                               ; preds = %2
  %31 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XHCI_CRCR_LO_CRR, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %5, align 4
  br label %63

37:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %63

38:                                               ; preds = %2
  %39 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %40 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  br label %63

43:                                               ; preds = %2
  %44 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 32
  store i32 %48, i32* %5, align 4
  br label %63

49:                                               ; preds = %2
  %50 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %51 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %63

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 1024
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @pci_xhci_portregs_read(%struct.pci_xhci_softc* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %63

63:                                               ; preds = %62, %49, %43, %38, %37, %30, %25, %20, %15, %10
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 1024
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @DPRINTF(i8* %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @pci_xhci_portregs_read(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
