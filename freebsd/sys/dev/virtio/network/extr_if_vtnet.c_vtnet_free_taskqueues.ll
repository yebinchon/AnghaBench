; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_free_taskqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_free_taskqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, %struct.vtnet_txq*, %struct.vtnet_rxq* }
%struct.vtnet_txq = type { i32* }
%struct.vtnet_rxq = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_free_taskqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_free_taskqueues(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca %struct.vtnet_rxq*, align 8
  %4 = alloca %struct.vtnet_txq*, align 8
  %5 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %6
  %13 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %14 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %13, i32 0, i32 2
  %15 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %15, i64 %17
  store %struct.vtnet_rxq* %18, %struct.vtnet_rxq** %3, align 8
  %19 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %3, align 8
  %20 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %3, align 8
  %25 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @taskqueue_free(i32* %26)
  %28 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %3, align 8
  %29 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %12
  %31 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %31, i32 0, i32 1
  %33 = load %struct.vtnet_txq*, %struct.vtnet_txq** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %33, i64 %35
  store %struct.vtnet_txq* %36, %struct.vtnet_txq** %4, align 8
  %37 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %38 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %43 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @taskqueue_free(i32* %44)
  %46 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %47 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %6

52:                                               ; preds = %6
  ret void
}

declare dso_local i32 @taskqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
