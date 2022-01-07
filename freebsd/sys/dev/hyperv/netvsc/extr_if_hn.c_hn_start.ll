; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.hn_softc* }
%struct.hn_softc = type { %struct.hn_tx_ring* }
%struct.hn_tx_ring = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @hn_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_start(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.hn_tx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.hn_softc*, %struct.hn_softc** %7, align 8
  store %struct.hn_softc* %8, %struct.hn_softc** %3, align 8
  %9 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %9, i32 0, i32 0
  %11 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %10, align 8
  %12 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %11, i64 0
  store %struct.hn_tx_ring* %12, %struct.hn_tx_ring** %4, align 8
  %13 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %20 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %19, i32 0, i32 2
  %21 = call i64 @mtx_trylock(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %25 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %26 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hn_start_locked(%struct.hn_tx_ring* %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %29, i32 0, i32 2
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %44

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %18
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %41, i32 0, i32 0
  %43 = call i32 @taskqueue_enqueue(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %37, %34
  ret void
}

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @hn_start_locked(%struct.hn_tx_ring*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
