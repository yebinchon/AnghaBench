; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_setup_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_setup_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }
%struct.run_endpoint_queue = type { i64, i32, %struct.run_tx_data*, i32 }
%struct.run_tx_data = type { %struct.run_softc* }

@RUN_TX_RING_COUNT = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, %struct.run_endpoint_queue*)* @run_setup_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_setup_tx_list(%struct.run_softc* %0, %struct.run_endpoint_queue* %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca %struct.run_endpoint_queue*, align 8
  %5 = alloca %struct.run_tx_data*, align 8
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store %struct.run_endpoint_queue* %1, %struct.run_endpoint_queue** %4, align 8
  %6 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %7 = call i32 @memset(%struct.run_endpoint_queue* %6, i32 0, i32 32)
  %8 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %9 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %8, i32 0, i32 3
  %10 = call i32 @STAILQ_INIT(i32* %9)
  %11 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %12 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %11, i32 0, i32 1
  %13 = call i32 @STAILQ_INIT(i32* %12)
  %14 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %15 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %14, i32 0, i32 2
  %16 = load %struct.run_tx_data*, %struct.run_tx_data** %15, align 8
  %17 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %16, i64 0
  store %struct.run_tx_data* %17, %struct.run_tx_data** %5, align 8
  br label %18

18:                                               ; preds = %35, %2
  %19 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %20 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %21 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %20, i32 0, i32 2
  %22 = load %struct.run_tx_data*, %struct.run_tx_data** %21, align 8
  %23 = load i64, i64* @RUN_TX_RING_COUNT, align 8
  %24 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %22, i64 %23
  %25 = icmp ult %struct.run_tx_data* %19, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %28 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %29 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %28, i32 0, i32 0
  store %struct.run_softc* %27, %struct.run_softc** %29, align 8
  %30 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %31 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %30, i32 0, i32 1
  %32 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %33 = load i32, i32* @next, align 4
  %34 = call i32 @STAILQ_INSERT_TAIL(i32* %31, %struct.run_tx_data* %32, i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %37 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %36, i32 1
  store %struct.run_tx_data* %37, %struct.run_tx_data** %5, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load i64, i64* @RUN_TX_RING_COUNT, align 8
  %40 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %41 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  ret void
}

declare dso_local i32 @memset(%struct.run_endpoint_queue*, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.run_tx_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
