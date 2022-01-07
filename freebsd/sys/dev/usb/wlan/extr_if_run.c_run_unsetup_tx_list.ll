; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_unsetup_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_unsetup_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }
%struct.run_endpoint_queue = type { %struct.run_tx_data*, i32, i32, i64 }
%struct.run_tx_data = type { i32*, i32* }

@RUN_TX_RING_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, %struct.run_endpoint_queue*)* @run_unsetup_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_unsetup_tx_list(%struct.run_softc* %0, %struct.run_endpoint_queue* %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca %struct.run_endpoint_queue*, align 8
  %5 = alloca %struct.run_tx_data*, align 8
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store %struct.run_endpoint_queue* %1, %struct.run_endpoint_queue** %4, align 8
  %6 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %7 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %9 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %8, i32 0, i32 2
  %10 = call i32 @STAILQ_INIT(i32* %9)
  %11 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %12 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %11, i32 0, i32 1
  %13 = call i32 @STAILQ_INIT(i32* %12)
  %14 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %15 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %14, i32 0, i32 0
  %16 = load %struct.run_tx_data*, %struct.run_tx_data** %15, align 8
  %17 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %16, i64 0
  store %struct.run_tx_data* %17, %struct.run_tx_data** %5, align 8
  br label %18

18:                                               ; preds = %51, %2
  %19 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %20 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %21 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %20, i32 0, i32 0
  %22 = load %struct.run_tx_data*, %struct.run_tx_data** %21, align 8
  %23 = load i64, i64* @RUN_TX_RING_COUNT, align 8
  %24 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %22, i64 %23
  %25 = icmp ult %struct.run_tx_data* %19, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %18
  %27 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %28 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %33 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @m_freem(i32* %34)
  %36 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %37 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %40 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %45 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ieee80211_free_node(i32* %46)
  %48 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %49 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %53 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %52, i32 1
  store %struct.run_tx_data* %53, %struct.run_tx_data** %5, align 8
  br label %18

54:                                               ; preds = %18
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
