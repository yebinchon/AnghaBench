; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_txeoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_txeoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@STE_TX_STATUS = common dso_local global i32 0, align 4
@STE_TXSTATUS_TXDONE = common dso_local global i32 0, align 4
@STE_TXSTATUS_UNDERRUN = common dso_local global i32 0, align 4
@STE_TXSTATUS_EXCESSCOLLS = common dso_local global i32 0, align 4
@STE_TXSTATUS_RECLAIMERR = common dso_local global i32 0, align 4
@STE_TXSTATUS_STATSOFLOW = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@STE_PACKET_SIZE = common dso_local global i64 0, align 8
@STE_MIN_FRAMELEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"TX underrun, increasing TX start threshold to %d bytes\0A\00", align 1
@STE_DMACTL = common dso_local global i32 0, align 4
@STE_DMACTL_TXDMA_STALL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@STE_ERR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_txeoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_txeoc(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %5 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %6 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %5)
  %7 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  br label %10

10:                                               ; preds = %84, %1
  %11 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %12 = load i32, i32* @STE_TX_STATUS, align 4
  %13 = call i32 @CSR_READ_2(%struct.ste_softc* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @STE_TXSTATUS_TXDONE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %89

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @STE_TXSTATUS_UNDERRUN, align 4
  %22 = load i32, i32* @STE_TXSTATUS_EXCESSCOLLS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @STE_TXSTATUS_RECLAIMERR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @STE_TXSTATUS_STATSOFLOW, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %20, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %19
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %33 = call i32 @if_inc_counter(%struct.ifnet* %31, i32 %32, i32 1)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @STE_TXSTATUS_UNDERRUN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %30
  %39 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STE_PACKET_SIZE, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %38
  %45 = load i64, i64* @STE_MIN_FRAMELEN, align 8
  %46 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @STE_PACKET_SIZE, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i64, i64* @STE_PACKET_SIZE, align 8
  %57 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %44
  %60 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %68 = load i32, i32* @STE_DMACTL, align 4
  %69 = load i32, i32* @STE_DMACTL_TXDMA_STALL, align 4
  %70 = call i32 @STE_SETBIT4(%struct.ste_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %72 = call i32 @ste_wait(%struct.ste_softc* %71)
  %73 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %80 = call i32 @ste_init_locked(%struct.ste_softc* %79)
  br label %89

81:                                               ; preds = %38, %30
  %82 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %83 = call i32 @ste_restart_tx(%struct.ste_softc* %82)
  br label %84

84:                                               ; preds = %81, %19
  %85 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %86 = load i32, i32* @STE_TX_STATUS, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @CSR_WRITE_2(%struct.ste_softc* %85, i32 %86, i32 %87)
  br label %10

89:                                               ; preds = %59, %18
  ret void
}

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.ste_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @STE_SETBIT4(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @ste_wait(%struct.ste_softc*) #1

declare dso_local i32 @ste_init_locked(%struct.ste_softc*) #1

declare dso_local i32 @ste_restart_tx(%struct.ste_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.ste_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
