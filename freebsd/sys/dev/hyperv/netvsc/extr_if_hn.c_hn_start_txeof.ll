; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_start_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_start_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32, i32, i32, i32, i32, i64, %struct.hn_softc* }
%struct.hn_softc = type { %struct.hn_tx_ring*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"not the first TX ring\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_tx_ring*)* @hn_start_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_start_txeof(%struct.hn_tx_ring* %0) #0 {
  %2 = alloca %struct.hn_tx_ring*, align 8
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %2, align 8
  %6 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %7 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %6, i32 0, i32 6
  %8 = load %struct.hn_softc*, %struct.hn_softc** %7, align 8
  store %struct.hn_softc* %8, %struct.hn_softc** %3, align 8
  %9 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %13 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %13, i32 0, i32 0
  %15 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %14, align 8
  %16 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %15, i64 0
  %17 = icmp eq %struct.hn_tx_ring* %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %21 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %54

25:                                               ; preds = %1
  %26 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %27 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %26, i32 0, i32 3
  %28 = call i64 @mtx_trylock(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 0
  %33 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %34 = call i32 @atomic_clear_int(i32* %32, i32 %33)
  %35 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %36 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %37 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @hn_start_locked(%struct.hn_tx_ring* %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %41 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %40, i32 0, i32 3
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %47 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %50 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %49, i32 0, i32 2
  %51 = call i32 @taskqueue_enqueue(i32 %48, i32* %50)
  br label %52

52:                                               ; preds = %45, %30
  br label %65

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %58 = call i32 @atomic_clear_int(i32* %56, i32 %57)
  %59 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %60 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %63 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %62, i32 0, i32 0
  %64 = call i32 @taskqueue_enqueue(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %54, %52
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @hn_start_locked(%struct.hn_tx_ring*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
