; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_suspend_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_suspend_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.hn_tx_ring*, i32, i32 }
%struct.hn_tx_ring = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hnwtx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_suspend_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_suspend_data(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca %struct.hn_tx_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %5)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 1
  %16 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %16, i64 %18
  store %struct.hn_tx_ring* %19, %struct.hn_tx_ring** %3, align 8
  %20 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %21 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %20, i32 0, i32 4
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %24 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %26 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %25, i32 0, i32 4
  %27 = call i32 @mtx_unlock(i32* %26)
  br label %28

28:                                               ; preds = %41, %13
  %29 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %30 = call i64 @hn_tx_ring_pending(%struct.hn_tx_ring* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %34 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vmbus_chan_is_revoked(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %32, %28
  %40 = phi i1 [ false, %28 ], [ %38, %32 ]
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %28

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %7

47:                                               ; preds = %7
  %48 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %49 = call i32 @hn_disable_rx(%struct.hn_softc* %48)
  %50 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %51 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %52 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hn_drain_rxtx(%struct.hn_softc* %50, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %80, %47
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %58 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %63 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %62, i32 0, i32 1
  %64 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %64, i64 %66
  store %struct.hn_tx_ring* %67, %struct.hn_tx_ring** %3, align 8
  %68 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %69 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %72 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %71, i32 0, i32 3
  %73 = call i32 @taskqueue_drain(i32 %70, i32* %72)
  %74 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %75 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %78 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %77, i32 0, i32 1
  %79 = call i32 @taskqueue_drain(i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %55

83:                                               ; preds = %55
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @hn_tx_ring_pending(%struct.hn_tx_ring*) #1

declare dso_local i32 @vmbus_chan_is_revoked(i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @hn_disable_rx(%struct.hn_softc*) #1

declare dso_local i32 @hn_drain_rxtx(%struct.hn_softc*, i32) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
