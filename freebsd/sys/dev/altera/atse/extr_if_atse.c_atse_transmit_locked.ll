; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_transmit_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_transmit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.atse_softc* }
%struct.atse_softc = type { i32, i32, %struct.buf_ring* }
%struct.buf_ring = type { i32 }
%struct.mbuf = type { i32 }

@XDMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @atse_transmit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_transmit_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.atse_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.buf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.atse_softc*, %struct.atse_softc** %9, align 8
  store %struct.atse_softc* %10, %struct.atse_softc** %3, align 8
  %11 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %12 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %11, i32 0, i32 2
  %13 = load %struct.buf_ring*, %struct.buf_ring** %12, align 8
  store %struct.buf_ring* %13, %struct.buf_ring** %5, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %32, %1
  %15 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %16 = load %struct.buf_ring*, %struct.buf_ring** %5, align 8
  %17 = call %struct.mbuf* @drbr_peek(%struct.ifnet* %15, %struct.buf_ring* %16)
  store %struct.mbuf* %17, %struct.mbuf** %4, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %21 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @XDMA_MEM_TO_DEV, align 4
  %24 = call i32 @xdma_enqueue_mbuf(i32 %22, %struct.mbuf** %4, i32 0, i32 4, i32 4, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %29 = load %struct.buf_ring*, %struct.buf_ring** %5, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %31 = call i32 @drbr_putback(%struct.ifnet* %28, %struct.buf_ring* %29, %struct.mbuf* %30)
  br label %45

32:                                               ; preds = %19
  %33 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %34 = load %struct.buf_ring*, %struct.buf_ring** %5, align 8
  %35 = call i32 @drbr_advance(%struct.ifnet* %33, %struct.buf_ring* %34)
  %36 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %37 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %44 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %42, %struct.mbuf* %43)
  br label %14

45:                                               ; preds = %27, %14
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %50 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @xdma_queue_submit(i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  ret i32 0
}

declare dso_local %struct.mbuf* @drbr_peek(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i32 @xdma_enqueue_mbuf(i32, %struct.mbuf**, i32, i32, i32, i32) #1

declare dso_local i32 @drbr_putback(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local i32 @drbr_advance(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @xdma_queue_submit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
