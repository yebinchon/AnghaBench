; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_resume_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_resume_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, %struct.hn_tx_ring* }
%struct.hn_tx_ring = type { i32, i32 }

@hn_use_if_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_resume_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_resume_data(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_tx_ring*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %5)
  %7 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %8 = call i32 @hn_rxfilter_config(%struct.hn_softc* %7)
  %9 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %10 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @hn_resume_tx(%struct.hn_softc* %9, i32 %12)
  %14 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %25 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %24, i32 0, i32 2
  %26 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %26, i64 %28
  %30 = call i32 @hn_tx_ring_qflush(%struct.hn_tx_ring* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %17

34:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %38 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %43 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %42, i32 0, i32 2
  %44 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %44, i64 %46
  store %struct.hn_tx_ring* %47, %struct.hn_tx_ring** %4, align 8
  %48 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %51, i32 0, i32 0
  %53 = call i32 @taskqueue_enqueue(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %35

57:                                               ; preds = %35
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @hn_rxfilter_config(%struct.hn_softc*) #1

declare dso_local i32 @hn_resume_tx(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_tx_ring_qflush(%struct.hn_tx_ring*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
