; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_mvm_rxmq_get_signal_strength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_mvm_rxmq_get_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_rx_mpdu_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_rx_mpdu_desc*)* @iwm_mvm_rxmq_get_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_rxmq_get_signal_strength(%struct.iwm_softc* %0, %struct.iwm_rx_mpdu_desc* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_rx_mpdu_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_rx_mpdu_desc* %1, %struct.iwm_rx_mpdu_desc** %4, align 8
  %7 = load %struct.iwm_rx_mpdu_desc*, %struct.iwm_rx_mpdu_desc** %4, align 8
  %8 = getelementptr inbounds %struct.iwm_rx_mpdu_desc, %struct.iwm_rx_mpdu_desc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.iwm_rx_mpdu_desc*, %struct.iwm_rx_mpdu_desc** %4, align 8
  %12 = getelementptr inbounds %struct.iwm_rx_mpdu_desc, %struct.iwm_rx_mpdu_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 0, %18
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ -256, %20 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 0, %26
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ -256, %28 ]
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @MAX(i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
