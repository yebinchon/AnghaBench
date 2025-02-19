; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_rx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptnet_queue = type { i32, %struct.TYPE_2__, %struct.ptnet_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.ptnet_softc = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Rx interrupt #%d\0A\00", align 1
@NM_IRQ_PASS = common dso_local global i64 0, align 8
@PTNET_RX_BUDGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ptnet_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptnet_rx_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ptnet_queue*, align 8
  %4 = alloca %struct.ptnet_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ptnet_queue*
  store %struct.ptnet_queue* %7, %struct.ptnet_queue** %3, align 8
  %8 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %8, i32 0, i32 2
  %10 = load %struct.ptnet_softc*, %struct.ptnet_softc** %9, align 8
  store %struct.ptnet_softc* %10, %struct.ptnet_softc** %4, align 8
  %11 = load %struct.ptnet_softc*, %struct.ptnet_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %15 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @DBG(i32 %17)
  %19 = load %struct.ptnet_softc*, %struct.ptnet_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %23 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @netmap_rx_irq(i32 %21, i32 %24, i32* %5)
  %26 = load i64, i64* @NM_IRQ_PASS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %31 = load i32, i32* @PTNET_RX_BUDGET, align 4
  %32 = call i32 @ptnet_rx_eof(%struct.ptnet_queue* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @netmap_rx_irq(i32, i32, i32*) #1

declare dso_local i32 @ptnet_rx_eof(%struct.ptnet_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
