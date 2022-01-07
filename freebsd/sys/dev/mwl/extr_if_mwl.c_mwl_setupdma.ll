; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setupdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setupdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.mwl_txq*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.mwl_txq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MWL_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@MWL_NUM_ACK_QUEUES = common dso_local global i32 0, align 4
@mwl_txbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unable to setup tx/rx dma; hal status %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*)* @mwl_setupdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_setupdma(%struct.mwl_softc* %0) #0 {
  %2 = alloca %struct.mwl_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl_txq*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %2, align 8
  %6 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 8
  %13 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %14 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WR4(%struct.mwl_softc* %13, i32 %17, i32 %21)
  %23 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %24 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %29 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @WR4(%struct.mwl_softc* %23, i32 %27, i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %75, %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MWL_NUM_TX_QUEUES, align 4
  %36 = load i32, i32* @MWL_NUM_ACK_QUEUES, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %33
  %40 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %41 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %40, i32 0, i32 4
  %42 = load %struct.mwl_txq*, %struct.mwl_txq** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %42, i64 %44
  store %struct.mwl_txq* %45, %struct.mwl_txq** %5, align 8
  %46 = load %struct.mwl_txq*, %struct.mwl_txq** %5, align 8
  %47 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %51 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %49, i32* %56, align 4
  %57 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %58 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @WR4(%struct.mwl_softc* %57, i32 %65, i32 %73)
  br label %75

75:                                               ; preds = %39
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %33

78:                                               ; preds = %33
  %79 = load i32, i32* @mwl_txbuf, align 4
  %80 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %81 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @MWL_NUM_TX_QUEUES, align 4
  %84 = load i32, i32* @MWL_NUM_ACK_QUEUES, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %90 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %93 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %92, i32 0, i32 1
  %94 = call i32 @mwl_hal_sethwdma(i32 %91, %struct.TYPE_8__* %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %78
  %98 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %99 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %78
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @WR4(%struct.mwl_softc*, i32, i32) #1

declare dso_local i32 @mwl_hal_sethwdma(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
