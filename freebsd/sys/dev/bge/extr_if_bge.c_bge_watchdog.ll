; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i32 }

@BGE_RX_MODE = common dso_local global i32 0, align 4
@BGE_RXMODE_FLOWCTL_ENABLE = common dso_local global i32 0, align 4
@BGE_RX_STS = common dso_local global i32 0, align 4
@BGE_RXSTAT_REMOTE_XOFFED = common dso_local global i32 0, align 4
@BGE_TX_TIMEOUT = common dso_local global i8* null, align 8
@BGE_RXSTAT_RCVD_XOFF = common dso_local global i32 0, align 4
@BGE_RXSTAT_RCVD_XON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"watchdog timeout -- resetting\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_watchdog(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %5 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %6 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %5)
  %7 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  br label %77

18:                                               ; preds = %11
  %19 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %20 = load i32, i32* @BGE_RX_MODE, align 4
  %21 = call i32 @CSR_READ_4(%struct.bge_softc* %19, i32 %20)
  %22 = load i32, i32* @BGE_RXMODE_FLOWCTL_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %18
  %26 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %27 = load i32, i32* @BGE_RX_STS, align 4
  %28 = call i32 @CSR_READ_4(%struct.bge_softc* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BGE_RXSTAT_REMOTE_XOFFED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %35 = load i32, i32* @BGE_RX_STS, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @CSR_WRITE_4(%struct.bge_softc* %34, i32 %35, i32 %36)
  %38 = load i8*, i8** @BGE_TX_TIMEOUT, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %77

42:                                               ; preds = %25
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @BGE_RXSTAT_RCVD_XOFF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @BGE_RXSTAT_RCVD_XON, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %54 = load i32, i32* @BGE_RX_STS, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CSR_WRITE_4(%struct.bge_softc* %53, i32 %54, i32 %55)
  %57 = load i8*, i8** @BGE_TX_TIMEOUT, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %77

61:                                               ; preds = %47, %42
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %18
  %64 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @if_printf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %71 = call i32 @if_setdrvflagbits(i32 %69, i32 0, i32 %70)
  %72 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %73 = call i32 @bge_init_locked(%struct.bge_softc* %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %76 = call i32 @if_inc_counter(i32 %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %63, %52, %33, %17
  ret void
}

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @bge_init_locked(%struct.bge_softc*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
