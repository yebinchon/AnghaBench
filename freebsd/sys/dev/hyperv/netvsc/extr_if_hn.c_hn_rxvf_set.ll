; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rxvf_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rxvf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, %struct.hn_rx_ring* }
%struct.hn_rx_ring = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.hn_rxvf_setarg = type { %struct.ifnet*, %struct.hn_rx_ring* }
%struct.task = type { i32 }

@hn_rxvf_set_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, %struct.ifnet*)* @hn_rxvf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_rxvf_set(%struct.hn_softc* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.hn_rx_ring*, align 8
  %6 = alloca %struct.hn_rxvf_setarg, align 8
  %7 = alloca %struct.task, align 4
  %8 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %9 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %10 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %9)
  %11 = load i32, i32* @hn_rxvf_set_task, align 4
  %12 = call i32 @TASK_INIT(%struct.task* %7, i32 0, i32 %11, %struct.hn_rxvf_setarg* %6)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %45, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %21 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %20, i32 0, i32 2
  %22 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %22, i64 %24
  store %struct.hn_rx_ring* %25, %struct.hn_rx_ring** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %28 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %33 = getelementptr inbounds %struct.hn_rxvf_setarg, %struct.hn_rxvf_setarg* %6, i32 0, i32 1
  store %struct.hn_rx_ring* %32, %struct.hn_rx_ring** %33, align 8
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.hn_rxvf_setarg, %struct.hn_rxvf_setarg* %6, i32 0, i32 0
  store %struct.ifnet* %34, %struct.ifnet** %35, align 8
  %36 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %37 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @vmbus_chan_run_task(i32 %38, %struct.task* %7)
  br label %44

40:                                               ; preds = %19
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %43 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %42, i32 0, i32 0
  store %struct.ifnet* %41, %struct.ifnet** %43, align 8
  br label %44

44:                                               ; preds = %40, %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %13

48:                                               ; preds = %13
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @TASK_INIT(%struct.task*, i32, i32, %struct.hn_rxvf_setarg*) #1

declare dso_local i32 @vmbus_chan_run_task(i32, %struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
