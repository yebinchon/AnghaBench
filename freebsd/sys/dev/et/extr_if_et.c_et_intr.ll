; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ET_INTR_STATUS = common dso_local global i32 0, align 4
@ET_INTRS = common dso_local global i32 0, align 4
@ET_INTR_MASK = common dso_local global i32 0, align 4
@ET_INTR_RXDMA_ERROR = common dso_local global i32 0, align 4
@ET_INTR_TXDMA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DMA error(0x%08x) -- resetting\0A\00", align 1
@ET_INTR_RXDMA = common dso_local global i32 0, align 4
@ET_INTR_TXDMA = common dso_local global i32 0, align 4
@ET_INTR_TIMER = common dso_local global i32 0, align 4
@ET_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @et_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.et_softc*
  store %struct.et_softc* %7, %struct.et_softc** %3, align 8
  %8 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %9 = call i32 @ET_LOCK(%struct.et_softc* %8)
  %10 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %11 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %107

20:                                               ; preds = %1
  %21 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %22 = load i32, i32* @ET_INTR_STATUS, align 4
  %23 = call i32 @CSR_READ_4(%struct.et_softc* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ET_INTRS, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %107

29:                                               ; preds = %20
  %30 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %31 = load i32, i32* @ET_INTR_MASK, align 4
  %32 = call i32 @CSR_WRITE_4(%struct.et_softc* %30, i32 %31, i32 -1)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ET_INTR_RXDMA_ERROR, align 4
  %35 = load i32, i32* @ET_INTR_TXDMA_ERROR, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %29
  %40 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %41 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %52 = call i32 @et_init_locked(%struct.et_softc* %51)
  %53 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %54 = call i32 @ET_UNLOCK(%struct.et_softc* %53)
  br label %110

55:                                               ; preds = %29
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ET_INTR_RXDMA, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %62 = call i32 @et_rxeof(%struct.et_softc* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @ET_INTR_TXDMA, align 4
  %66 = load i32, i32* @ET_INTR_TIMER, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %72 = call i32 @et_txeof(%struct.et_softc* %71)
  br label %73

73:                                               ; preds = %70, %63
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @ET_INTR_TIMER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %80 = load i32, i32* @ET_TIMER, align 4
  %81 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %82 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @CSR_WRITE_4(%struct.et_softc* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %94 = load i32, i32* @ET_INTR_MASK, align 4
  %95 = load i32, i32* @ET_INTRS, align 4
  %96 = xor i32 %95, -1
  %97 = call i32 @CSR_WRITE_4(%struct.et_softc* %93, i32 %94, i32 %96)
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 1
  %100 = call i32 @IFQ_DRV_IS_EMPTY(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %92
  %103 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %104 = call i32 @et_start_locked(%struct.ifnet* %103)
  br label %105

105:                                              ; preds = %102, %92
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %28, %19
  %108 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %109 = call i32 @ET_UNLOCK(%struct.et_softc* %108)
  br label %110

110:                                              ; preds = %107, %39
  ret void
}

declare dso_local i32 @ET_LOCK(%struct.et_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.et_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @et_init_locked(%struct.et_softc*) #1

declare dso_local i32 @ET_UNLOCK(%struct.et_softc*) #1

declare dso_local i32 @et_rxeof(%struct.et_softc*) #1

declare dso_local i32 @et_txeof(%struct.et_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @et_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
