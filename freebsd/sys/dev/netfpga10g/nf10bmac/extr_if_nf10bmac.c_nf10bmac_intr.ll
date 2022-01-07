; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf10bmac_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@NF10BMAC_MAX_PKTS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nf10bmac_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf10bmac_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nf10bmac_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.nf10bmac_softc*
  store %struct.nf10bmac_softc* %8, %struct.nf10bmac_softc** %3, align 8
  %9 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %10 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %13 = call i32 @NF10BMAC_LOCK(%struct.nf10bmac_softc* %12)
  %14 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %15 = call i32 @NF10BMAC_RX_INTR_CLEAR_DIS(%struct.nf10bmac_softc* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %29, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NF10BMAC_MAX_PKTS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %22 = call i32 @nf10bmac_rx_locked(%struct.nf10bmac_softc* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %30

29:                                               ; preds = %20
  br label %16

30:                                               ; preds = %28, %16
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %39 = call i32 @NF10BMAC_RX_INTR_ENABLE(%struct.nf10bmac_softc* %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 2
  %42 = call i32 @IFQ_DRV_IS_EMPTY(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = call i32 @nf10bmac_start_locked(%struct.ifnet* %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %50 = call i32 @NF10BMAC_UNLOCK(%struct.nf10bmac_softc* %49)
  ret void
}

declare dso_local i32 @NF10BMAC_LOCK(%struct.nf10bmac_softc*) #1

declare dso_local i32 @NF10BMAC_RX_INTR_CLEAR_DIS(%struct.nf10bmac_softc*) #1

declare dso_local i32 @nf10bmac_rx_locked(%struct.nf10bmac_softc*) #1

declare dso_local i32 @NF10BMAC_RX_INTR_ENABLE(%struct.nf10bmac_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @nf10bmac_start_locked(%struct.ifnet*) #1

declare dso_local i32 @NF10BMAC_UNLOCK(%struct.nf10bmac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
