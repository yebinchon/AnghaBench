; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.nf10bmac_softc* }
%struct.nf10bmac_softc = type { i32, i64 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@NF10BMAC_FLAGS_LINK = common dso_local global i32 0, align 4
@NF10BMAC_MAX_PKTS = common dso_local global i32 0, align 4
@NF10BMAC_WATCHDOG_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @nf10bmac_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf10bmac_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.nf10bmac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 2
  %9 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %8, align 8
  store %struct.nf10bmac_softc* %9, %struct.nf10bmac_softc** %3, align 8
  %10 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %11 = call i32 @NF10BMAC_LOCK_ASSERT(%struct.nf10bmac_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %23 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NF10BMAC_FLAGS_LINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %1
  br label %60

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %57, %29
  %31 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 1
  %33 = call i32 @IFQ_DRV_IS_EMPTY(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NF10BMAC_MAX_PKTS, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ false, %30 ], [ %38, %35 ]
  br i1 %40, label %41, label %60

41:                                               ; preds = %39
  %42 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 1
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = call i32 @IFQ_DRV_DEQUEUE(i32* %43, %struct.mbuf* %44)
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = icmp eq %struct.mbuf* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %60

49:                                               ; preds = %41
  %50 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %52 = call i32 @nf10bmac_tx_locked(%struct.nf10bmac_softc* %50, %struct.mbuf* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %60

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %30

60:                                               ; preds = %28, %55, %48, %39
  ret void
}

declare dso_local i32 @NF10BMAC_LOCK_ASSERT(%struct.nf10bmac_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @nf10bmac_tx_locked(%struct.nf10bmac_softc*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
