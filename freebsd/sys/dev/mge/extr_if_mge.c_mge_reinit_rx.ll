; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_reinit_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_reinit_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32, i64, %struct.mge_desc_wrapper*, i32 }
%struct.mge_desc_wrapper = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MGE_RX_DESC_NUM = common dso_local global i32 0, align 4
@MGE_RX_DEFAULT_QUEUE = common dso_local global i32 0, align 4
@MGE_RX_QUEUE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*)* @mge_reinit_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_reinit_rx(%struct.mge_softc* %0) #0 {
  %2 = alloca %struct.mge_softc*, align 8
  %3 = alloca %struct.mge_desc_wrapper*, align 8
  %4 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %2, align 8
  %5 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %6 = call i32 @MGE_RECEIVE_LOCK_ASSERT(%struct.mge_softc* %5)
  %7 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %8 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %8, i32 0, i32 2
  %10 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %9, align 8
  %11 = load i32, i32* @MGE_RX_DESC_NUM, align 4
  %12 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mge_free_desc(%struct.mge_softc* %7, %struct.mge_desc_wrapper* %10, i32 %11, i32 %14, i32 1)
  %16 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %17 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %18 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %17, i32 0, i32 2
  %19 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %18, align 8
  %20 = load i32, i32* @MGE_RX_DESC_NUM, align 4
  %21 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %21, i32 0, i32 3
  %23 = call i32 @mge_alloc_desc_dma(%struct.mge_softc* %16, %struct.mge_desc_wrapper* %19, i32 %20, i32* %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %48, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MGE_RX_DESC_NUM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %29, i32 0, i32 2
  %31 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %31, i64 %33
  store %struct.mge_desc_wrapper* %34, %struct.mge_desc_wrapper** %3, align 8
  %35 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %3, align 8
  %39 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %3, align 8
  %42 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %41, i32 0, i32 2
  %43 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %3, align 8
  %44 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @mge_new_rxbuf(i32 %37, i32 %40, i32* %42, i32* %46)
  br label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %24

51:                                               ; preds = %24
  %52 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %52, i32 0, i32 2
  %54 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %53, align 8
  %55 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %54, i64 0
  %56 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %61 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %63 = load i32, i32* @MGE_RX_DEFAULT_QUEUE, align 4
  %64 = call i32 @MGE_RX_CUR_DESC_PTR(i32 %63)
  %65 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @MGE_WRITE(%struct.mge_softc* %62, i32 %64, i32 %67)
  %69 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %70 = load i32, i32* @MGE_RX_QUEUE_CMD, align 4
  %71 = load i32, i32* @MGE_RX_DEFAULT_QUEUE, align 4
  %72 = call i32 @MGE_ENABLE_RXQ(i32 %71)
  %73 = call i32 @MGE_WRITE(%struct.mge_softc* %69, i32 %70, i32 %72)
  ret void
}

declare dso_local i32 @MGE_RECEIVE_LOCK_ASSERT(%struct.mge_softc*) #1

declare dso_local i32 @mge_free_desc(%struct.mge_softc*, %struct.mge_desc_wrapper*, i32, i32, i32) #1

declare dso_local i32 @mge_alloc_desc_dma(%struct.mge_softc*, %struct.mge_desc_wrapper*, i32, i32*) #1

declare dso_local i32 @mge_new_rxbuf(i32, i32, i32*, i32*) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

declare dso_local i32 @MGE_RX_CUR_DESC_PTR(i32) #1

declare dso_local i32 @MGE_ENABLE_RXQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
