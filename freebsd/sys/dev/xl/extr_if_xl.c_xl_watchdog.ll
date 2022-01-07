; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i64, i64, i32, %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.ifnet = type { i32, i32 }

@XL_TYPE_905B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"watchdog timeout (missed Tx interrupts) -- recovering\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@XL_W4_MEDIA_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@XL_MEDIASTAT_CARRIER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"no carrier - transceiver cable problem?\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xl_softc*)* @xl_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_watchdog(%struct.xl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %3, align 8
  %7 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %8 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %7, i32 0, i32 4
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %11 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %10)
  %12 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %13 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %114

23:                                               ; preds = %16
  %24 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %25 = call i32 @xl_rxeof(%struct.xl_softc* %24)
  %26 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %27 = call i32 @xl_txeoc(%struct.xl_softc* %26)
  store i32 0, i32* %6, align 4
  %28 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XL_TYPE_905B, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %35 = call i32 @xl_txeof_90xB(%struct.xl_softc* %34)
  %36 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %37 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %33
  br label %57

45:                                               ; preds = %23
  %46 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %47 = call i32 @xl_txeof(%struct.xl_softc* %46)
  %48 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %49 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %62 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

65:                                               ; preds = %57
  %66 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %67 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %68 = call i32 @if_inc_counter(%struct.ifnet* %66, i32 %67, i32 1)
  %69 = call i32 @XL_SEL_WIN(i32 4)
  %70 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %71 = load i32, i32* @XL_W4_MEDIA_STATUS, align 4
  %72 = call i32 @CSR_READ_2(%struct.xl_softc* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %74 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @XL_MEDIASTAT_CARRIER, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %83 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %81, %65
  %87 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %94 = call i32 @xl_init_locked(%struct.xl_softc* %93)
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 0
  %97 = call i32 @IFQ_DRV_IS_EMPTY(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %86
  %100 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %101 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @XL_TYPE_905B, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %107 = call i32 @xl_start_90xB_locked(%struct.ifnet* %106)
  br label %111

108:                                              ; preds = %99
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = call i32 @xl_start_locked(%struct.ifnet* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %60, %22
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @xl_rxeof(%struct.xl_softc*) #1

declare dso_local i32 @xl_txeoc(%struct.xl_softc*) #1

declare dso_local i32 @xl_txeof_90xB(%struct.xl_softc*) #1

declare dso_local i32 @xl_txeof(%struct.xl_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.xl_softc*, i32) #1

declare dso_local i32 @xl_init_locked(%struct.xl_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @xl_start_90xB_locked(%struct.ifnet*) #1

declare dso_local i32 @xl_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
