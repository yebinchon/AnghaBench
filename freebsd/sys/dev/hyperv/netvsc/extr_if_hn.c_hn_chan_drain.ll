; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32 }
%struct.vmbus_channel = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"waitch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, %struct.vmbus_channel*)* @hn_chan_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_chan_drain(%struct.hn_softc* %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %4, align 8
  br label %5

5:                                                ; preds = %24, %2
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %7 = call i32 @vmbus_chan_rx_empty(%struct.vmbus_channel* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vmbus_chan_is_revoked(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %17 = call i32 @vmbus_chan_tx_empty(%struct.vmbus_channel* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi i1 [ false, %9 ], [ %19, %15 ]
  br label %22

22:                                               ; preds = %20, %5
  %23 = phi i1 [ true, %5 ], [ %21, %20 ]
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %5

26:                                               ; preds = %22
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %28 = call i32 @vmbus_chan_intr_drain(%struct.vmbus_channel* %27)
  ret void
}

declare dso_local i32 @vmbus_chan_rx_empty(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_is_revoked(i32) #1

declare dso_local i32 @vmbus_chan_tx_empty(%struct.vmbus_channel*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @vmbus_chan_intr_drain(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
