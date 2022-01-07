; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i64**, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RT2860_TX_STAT_FIFO = common dso_local global i32 0, align 4
@RUN_DEBUG_XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tx stat 0x%08x\0A\00", align 1
@RT2860_TXQ_VLD = common dso_local global i32 0, align 4
@RT2860_TXQ_WCID_SHIFT = common dso_local global i32 0, align 4
@RT2860_TXQ_ACKREQ = common dso_local global i32 0, align 4
@RT2870_WCID_MAX = common dso_local global i64 0, align 8
@RUN_TXCNT = common dso_local global i64 0, align 8
@RT2860_TXQ_OK = common dso_local global i32 0, align 4
@RUN_SUCCESS = common dso_local global i64 0, align 8
@RT2860_TXQ_MCS_SHIFT = common dso_local global i32 0, align 4
@RT2860_TXQ_PID_SHIFT = common dso_local global i32 0, align 4
@RUN_RETRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"count=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_drain_fifo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i64]*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.run_softc*
  store %struct.run_softc* %11, %struct.run_softc** %3, align 8
  %12 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @RUN_LOCK_ASSERT(%struct.run_softc* %12, i32 %13)
  br label %15

15:                                               ; preds = %103, %45, %1
  %16 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %17 = load i32, i32* @RT2860_TX_STAT_FIFO, align 4
  %18 = call i32 @run_read(%struct.run_softc* %16, i32 %17, i32* %4)
  %19 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %20 = load i32, i32* @RUN_DEBUG_XMIT, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @RUN_DPRINTF(%struct.run_softc* %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RT2860_TXQ_VLD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %104

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @RT2860_TXQ_WCID_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 255
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RT2860_TXQ_ACKREQ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @RT2870_WCID_MAX, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %38, %28
  br label %15

46:                                               ; preds = %42
  %47 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %48 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %47, i32 0, i32 0
  %49 = load i64**, i64*** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64*, i64** %49, i64 %50
  %52 = bitcast i64** %51 to [3 x i64]*
  store [3 x i64]* %52, [3 x i64]** %5, align 8
  %53 = load [3 x i64]*, [3 x i64]** %5, align 8
  %54 = load i64, i64* @RUN_TXCNT, align 8
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %53, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RT2860_TXQ_OK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %46
  %63 = load [3 x i64]*, [3 x i64]** %5, align 8
  %64 = load i64, i64* @RUN_SUCCESS, align 8
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %63, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %74

68:                                               ; preds = %46
  %69 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %70 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @counter_u64_add(i32 %72, i32 1)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @RT2860_TXQ_MCS_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = and i32 %77, 127
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %7, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @RT2860_TXQ_PID_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = and i32 %82, 15
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = sub i64 %85, 1
  %87 = load i64, i64* %7, align 8
  %88 = sub i64 %86, %87
  store i64 %88, i64* %9, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %74
  %91 = load i64, i64* %9, align 8
  %92 = load [3 x i64]*, [3 x i64]** %5, align 8
  %93 = load i64, i64* @RUN_TXCNT, align 8
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %92, i64 0, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load [3 x i64]*, [3 x i64]** %5, align 8
  %99 = load i64, i64* @RUN_RETRY, align 8
  %100 = getelementptr inbounds [3 x i64], [3 x i64]* %98, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %97
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %90, %74
  br label %15

104:                                              ; preds = %27
  %105 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %106 = load i32, i32* @RUN_DEBUG_XMIT, align 4
  %107 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %108 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @RUN_DPRINTF(%struct.run_softc* %105, i32 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %112 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %111, i32 0, i32 1
  store i32 0, i32* %112, align 8
  ret void
}

declare dso_local i32 @RUN_LOCK_ASSERT(%struct.run_softc*, i32) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
