; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_tx_done_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_tx_done_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32, i64, i32, i32, i32, i64, i32*, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@RT_DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Tx done task\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_COUNT = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@RT_CHIPID_RT5350 = common dso_local global i64 0, align 8
@RT_CHIPID_MT7620 = common dso_local global i64 0, align 8
@RT_CHIPID_MT7621 = common dso_local global i64 0, align 8
@RT5350_INT_TXQ3_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ2_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ1_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ0_DONE = common dso_local global i32 0, align 4
@INT_TXQ3_DONE = common dso_local global i32 0, align 4
@INT_TXQ2_DONE = common dso_local global i32 0, align 4
@INT_TXQ1_DONE = common dso_local global i32 0, align 4
@INT_TXQ0_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Tx done task: scheduling again\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @rt_tx_done_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_tx_done_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.rt_softc*
  store %struct.rt_softc* %10, %struct.rt_softc** %5, align 8
  %11 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %12 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %11, i32 0, i32 8
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %15 = load i32, i32* @RT_DEBUG_TX, align 4
  %16 = call i32 @RT_DPRINTF(%struct.rt_softc* %14, i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %147

24:                                               ; preds = %2
  %25 = load i32, i32* @RT_SOFTC_TX_RING_COUNT, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %61, %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  %31 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %32 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %35 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %36, %37
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %30
  %42 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %43 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %49 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %53 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %54 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @rt_tx_eof(%struct.rt_softc* %52, i32* %58)
  br label %60

60:                                               ; preds = %41, %30
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %27

64:                                               ; preds = %27
  %65 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %66 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %74 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RT_CHIPID_RT5350, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %64
  %79 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %80 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RT_CHIPID_MT7620, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %86 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RT_CHIPID_MT7621, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84, %78, %64
  %91 = load i32, i32* @RT5350_INT_TXQ3_DONE, align 4
  %92 = load i32, i32* @RT5350_INT_TXQ2_DONE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RT5350_INT_TXQ1_DONE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @RT5350_INT_TXQ0_DONE, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %7, align 4
  br label %106

98:                                               ; preds = %84
  %99 = load i32, i32* @INT_TXQ3_DONE, align 4
  %100 = load i32, i32* @INT_TXQ2_DONE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @INT_TXQ1_DONE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @INT_TXQ0_DONE, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %98, %90
  %107 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %108 = call i32 @RT_SOFTC_LOCK(%struct.rt_softc* %107)
  %109 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %110 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %111 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = xor i32 %112, -1
  %114 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %115 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %116, %117
  %119 = and i32 %113, %118
  %120 = call i32 @rt_intr_enable(%struct.rt_softc* %109, i32 %119)
  %121 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %122 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %106
  %128 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %129 = load i32, i32* @RT_DEBUG_TX, align 4
  %130 = call i32 @RT_DPRINTF(%struct.rt_softc* %128, i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %131 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %132 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %135 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %134, i32 0, i32 4
  %136 = call i32 @taskqueue_enqueue(i32 %133, i32* %135)
  br label %137

137:                                              ; preds = %127, %106
  %138 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %139 = call i32 @RT_SOFTC_UNLOCK(%struct.rt_softc* %138)
  %140 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 1
  %142 = call i32 @IFQ_IS_EMPTY(i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %137
  %145 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %146 = call i32 @rt_start(%struct.ifnet* %145)
  br label %147

147:                                              ; preds = %23, %144, %137
  ret void
}

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

declare dso_local i32 @rt_tx_eof(%struct.rt_softc*, i32*) #1

declare dso_local i32 @RT_SOFTC_LOCK(%struct.rt_softc*) #1

declare dso_local i32 @rt_intr_enable(%struct.rt_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @RT_SOFTC_UNLOCK(%struct.rt_softc*) #1

declare dso_local i32 @IFQ_IS_EMPTY(i32*) #1

declare dso_local i32 @rt_start(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
