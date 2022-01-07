; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@VTE_MISR = common dso_local global i32 0, align 4
@VTE_INTRS = common dso_local global i32 0, align 4
@VTE_MIER = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MISR_RX_DONE = common dso_local global i32 0, align 4
@MISR_RX_DESC_UNAVAIL = common dso_local global i32 0, align 4
@MISR_RX_FIFO_FULL = common dso_local global i32 0, align 4
@MISR_TX_DONE = common dso_local global i32 0, align 4
@MISR_EVENT_CNT_OFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vte_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vte_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.vte_softc*
  store %struct.vte_softc* %8, %struct.vte_softc** %3, align 8
  %9 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %10 = call i32 @VTE_LOCK(%struct.vte_softc* %9)
  %11 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %15 = load i32, i32* @VTE_MISR, align 4
  %16 = call i32 @CSR_READ_2(%struct.vte_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VTE_INTRS, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %23 = call i32 @VTE_UNLOCK(%struct.vte_softc* %22)
  br label %102

24:                                               ; preds = %1
  %25 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %26 = load i32, i32* @VTE_MIER, align 4
  %27 = call i32 @CSR_WRITE_2(%struct.vte_softc* %25, i32 %26, i32 0)
  store i32 8, i32* %6, align 4
  br label %28

28:                                               ; preds = %86, %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VTE_INTRS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %28
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %87

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MISR_RX_DONE, align 4
  %44 = load i32, i32* @MISR_RX_DESC_UNAVAIL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MISR_RX_FIFO_FULL, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %52 = call i32 @vte_rxeof(%struct.vte_softc* %51)
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MISR_TX_DONE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %60 = call i32 @vte_txeof(%struct.vte_softc* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @MISR_EVENT_CNT_OFLOW, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %68 = call i32 @vte_stats_update(%struct.vte_softc* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 1
  %72 = call i32 @IFQ_DRV_IS_EMPTY(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %76 = call i32 @vte_start_locked(%struct.vte_softc* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %6, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %83 = load i32, i32* @VTE_MISR, align 4
  %84 = call i32 @CSR_READ_2(%struct.vte_softc* %82, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %77
  br label %87

86:                                               ; preds = %81
  br label %28

87:                                               ; preds = %85, %40, %28
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %96 = load i32, i32* @VTE_MIER, align 4
  %97 = load i32, i32* @VTE_INTRS, align 4
  %98 = call i32 @CSR_WRITE_2(%struct.vte_softc* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %87
  %100 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %101 = call i32 @VTE_UNLOCK(%struct.vte_softc* %100)
  br label %102

102:                                              ; preds = %99, %21
  ret void
}

declare dso_local i32 @VTE_LOCK(%struct.vte_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

declare dso_local i32 @VTE_UNLOCK(%struct.vte_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i32, i32) #1

declare dso_local i32 @vte_rxeof(%struct.vte_softc*) #1

declare dso_local i32 @vte_txeof(%struct.vte_softc*) #1

declare dso_local i32 @vte_stats_update(%struct.vte_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @vte_start_locked(%struct.vte_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
