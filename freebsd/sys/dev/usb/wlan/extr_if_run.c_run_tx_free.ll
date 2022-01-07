; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_tx_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_tx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_endpoint_queue = type { i32, i32 }
%struct.run_tx_data = type { i32*, i32* }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_endpoint_queue*, %struct.run_tx_data*, i32)* @run_tx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tx_free(%struct.run_endpoint_queue* %0, %struct.run_tx_data* %1, i32 %2) #0 {
  %4 = alloca %struct.run_endpoint_queue*, align 8
  %5 = alloca %struct.run_tx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.run_endpoint_queue* %0, %struct.run_endpoint_queue** %4, align 8
  store %struct.run_tx_data* %1, %struct.run_tx_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %8 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %11 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ieee80211_tx_complete(i32* %9, i32* %12, i32 %13)
  %15 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %16 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %18 = getelementptr inbounds %struct.run_tx_data, %struct.run_tx_data* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %20 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %19, i32 0, i32 1
  %21 = load %struct.run_tx_data*, %struct.run_tx_data** %5, align 8
  %22 = load i32, i32* @next, align 4
  %23 = call i32 @STAILQ_INSERT_TAIL(i32* %20, %struct.run_tx_data* %21, i32 %22)
  %24 = load %struct.run_endpoint_queue*, %struct.run_endpoint_queue** %4, align 8
  %25 = getelementptr inbounds %struct.run_endpoint_queue, %struct.run_endpoint_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  ret void
}

declare dso_local i32 @ieee80211_tx_complete(i32*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.run_tx_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
