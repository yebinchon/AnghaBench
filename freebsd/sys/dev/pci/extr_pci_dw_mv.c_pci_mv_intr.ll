; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw_mv.c_pci_mv_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw_mv.c_pci_mv_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_mv_softc = type { i32 }

@MV_INT_CAUSE1 = common dso_local global i32 0, align 4
@MV_INT_CAUSE2 = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pci_mv_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_mv_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pci_mv_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pci_mv_softc*
  store %struct.pci_mv_softc* %8, %struct.pci_mv_softc** %4, align 8
  %9 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %10 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MV_INT_CAUSE1, align 4
  %13 = call i64 @pci_dw_dbi_rd4(i32 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %15 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MV_INT_CAUSE2, align 4
  %18 = call i64 @pci_dw_dbi_rd4(i32 %16, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %21
  %27 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %28 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MV_INT_CAUSE1, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @pci_dw_dbi_wr4(i32 %29, i32 %30, i64 %31)
  %33 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %34 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MV_INT_CAUSE2, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @pci_dw_dbi_wr4(i32 %35, i32 %36, i64 %37)
  %39 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %26, %24
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @pci_dw_dbi_rd4(i32, i32) #1

declare dso_local i32 @pci_dw_dbi_wr4(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
