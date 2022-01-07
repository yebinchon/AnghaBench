; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_hal_set_rxtxdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_hal_set_rxtxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@MALO_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malo_softc*)* @malo_hal_set_rxtxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malo_hal_set_rxtxdma(%struct.malo_softc* %0) #0 {
  %2 = alloca %struct.malo_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.malo_softc* %0, %struct.malo_softc** %2, align 8
  %4 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %5 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %6 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %10 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @malo_bar0_write4(%struct.malo_softc* %4, i32 %8, i32 %12)
  %14 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %15 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %16 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %20 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @malo_bar0_write4(%struct.malo_softc* %14, i32 %18, i32 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %47, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MALO_NUM_TX_QUEUES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %30 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %31 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %39 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @malo_bar0_write4(%struct.malo_softc* %29, i32 %37, i32 %45)
  br label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %24

50:                                               ; preds = %24
  ret void
}

declare dso_local i32 @malo_bar0_write4(%struct.malo_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
