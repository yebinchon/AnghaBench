; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptnet_queue = type { i32, i32, i32, %struct.TYPE_2__, %struct.ptnet_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.ptnet_softc = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Tx interrupt #%d\0A\00", align 1
@NM_IRQ_PASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ptnet_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptnet_tx_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ptnet_queue*, align 8
  %4 = alloca %struct.ptnet_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ptnet_queue*
  store %struct.ptnet_queue* %6, %struct.ptnet_queue** %3, align 8
  %7 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %7, i32 0, i32 4
  %9 = load %struct.ptnet_softc*, %struct.ptnet_softc** %8, align 8
  store %struct.ptnet_softc* %9, %struct.ptnet_softc** %4, align 8
  %10 = load %struct.ptnet_softc*, %struct.ptnet_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %14 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @DBG(i32 %16)
  %18 = load %struct.ptnet_softc*, %struct.ptnet_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %22 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @netmap_tx_irq(i32 %20, i32 %23)
  %25 = load i64, i64* @NM_IRQ_PASS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %35

28:                                               ; preds = %1
  %29 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %30 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ptnet_queue*, %struct.ptnet_queue** %3, align 8
  %33 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %32, i32 0, i32 0
  %34 = call i32 @taskqueue_enqueue(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @netmap_tx_irq(i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
