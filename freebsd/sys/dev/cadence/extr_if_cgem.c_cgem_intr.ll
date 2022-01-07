; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32, i32, i32, i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@CGEM_INTR_STAT = common dso_local global i32 0, align 4
@CGEM_INTR_RX_COMPLETE = common dso_local global i32 0, align 4
@CGEM_INTR_HRESP_NOT_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cgem_intr: hresp not okay! rx_status=0x%x\0A\00", align 1
@CGEM_RX_STAT = common dso_local global i32 0, align 4
@CGEM_RX_STAT_HRESP_NOT_OK = common dso_local global i32 0, align 4
@CGEM_INTR_RX_OVERRUN = common dso_local global i32 0, align 4
@CGEM_RX_STAT_OVERRUN = common dso_local global i32 0, align 4
@CGEM_INTR_RX_USED_READ = common dso_local global i32 0, align 4
@CGEM_NET_CTRL = common dso_local global i32 0, align 4
@CGEM_NET_CTRL_FLUSH_DPRAM_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cgem_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cgem_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.cgem_softc*
  store %struct.cgem_softc* %7, %struct.cgem_softc** %3, align 8
  %8 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %12 = call i32 @CGEM_LOCK(%struct.cgem_softc* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @if_getdrvflags(i32 %13)
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %20 = call i32 @CGEM_UNLOCK(%struct.cgem_softc* %19)
  br label %99

21:                                               ; preds = %1
  %22 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %23 = load i32, i32* @CGEM_INTR_STAT, align 4
  %24 = call i32 @RD4(%struct.cgem_softc* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %26 = load i32, i32* @CGEM_INTR_STAT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WR4(%struct.cgem_softc* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CGEM_INTR_RX_COMPLETE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %35 = call i32 @cgem_recv(%struct.cgem_softc* %34)
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %38 = call i32 @cgem_clean_tx(%struct.cgem_softc* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CGEM_INTR_HRESP_NOT_OK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %45 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %48 = load i32, i32* @CGEM_RX_STAT, align 4
  %49 = call i32 @RD4(%struct.cgem_softc* %47, i32 %48)
  %50 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %52 = load i32, i32* @CGEM_RX_STAT, align 4
  %53 = load i32, i32* @CGEM_RX_STAT_HRESP_NOT_OK, align 4
  %54 = call i32 @WR4(%struct.cgem_softc* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %36
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @CGEM_INTR_RX_OVERRUN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %62 = load i32, i32* @CGEM_RX_STAT, align 4
  %63 = load i32, i32* @CGEM_RX_STAT_OVERRUN, align 4
  %64 = call i32 @WR4(%struct.cgem_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %66 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %60, %55
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @CGEM_INTR_RX_USED_READ, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %76 = load i32, i32* @CGEM_NET_CTRL, align 4
  %77 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %78 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CGEM_NET_CTRL_FLUSH_DPRAM_PKT, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @WR4(%struct.cgem_softc* %75, i32 %76, i32 %81)
  %83 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %84 = call i32 @cgem_fill_rqueue(%struct.cgem_softc* %83)
  %85 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %86 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %74, %69
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @if_sendq_empty(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @cgem_start_locked(i32 %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %98 = call i32 @CGEM_UNLOCK(%struct.cgem_softc* %97)
  br label %99

99:                                               ; preds = %96, %18
  ret void
}

declare dso_local i32 @CGEM_LOCK(%struct.cgem_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @CGEM_UNLOCK(%struct.cgem_softc*) #1

declare dso_local i32 @RD4(%struct.cgem_softc*, i32) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

declare dso_local i32 @cgem_recv(%struct.cgem_softc*) #1

declare dso_local i32 @cgem_clean_tx(%struct.cgem_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @cgem_fill_rqueue(%struct.cgem_softc*) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local i32 @cgem_start_locked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
