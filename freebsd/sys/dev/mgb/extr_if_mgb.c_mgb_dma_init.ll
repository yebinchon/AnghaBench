; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_dma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgb_softc*)* @mgb_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_dma_init(%struct.mgb_softc* %0) #0 {
  %2 = alloca %struct.mgb_softc*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mgb_softc* %0, %struct.mgb_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mgb_softc*, %struct.mgb_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_3__* @iflib_get_softc_ctx(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.mgb_softc*, %struct.mgb_softc** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mgb_dma_rx_ring_init(%struct.mgb_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %44

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %10

26:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.mgb_softc*, %struct.mgb_softc** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @mgb_dma_tx_ring_init(%struct.mgb_softc* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %44

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %27

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %38, %21
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_3__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @mgb_dma_rx_ring_init(%struct.mgb_softc*, i32) #1

declare dso_local i32 @mgb_dma_tx_ring_init(%struct.mgb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
