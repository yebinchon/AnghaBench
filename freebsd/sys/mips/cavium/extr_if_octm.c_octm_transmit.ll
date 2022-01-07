; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.octm_softc* }
%struct.octm_softc = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @octm_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octm_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.octm_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 1
  %10 = load %struct.octm_softc*, %struct.octm_softc** %9, align 8
  store %struct.octm_softc* %10, %struct.octm_softc** %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = call i32 @m_freem(%struct.mbuf* %21)
  store i32 0, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.octm_softc*, %struct.octm_softc** %6, align 8
  %25 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = call i32 @cvmx_mgmt_port_sendm(i32 %26, %struct.mbuf* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %34 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %32, %struct.mbuf* %33)
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %37 = call i32 @if_inc_counter(%struct.ifnet* %35, i32 %36, i32 1)
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @if_inc_counter(%struct.ifnet* %38, i32 %39, i32 %43)
  br label %49

45:                                               ; preds = %23
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %48 = call i32 @if_inc_counter(%struct.ifnet* %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %45, %31
  %50 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %51 = call i32 @m_freem(%struct.mbuf* %50)
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %60 [
    i32 128, label %53
    i32 129, label %54
    i32 130, label %56
    i32 131, label %58
  ]

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %62

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOBUFS, align 4
  store i32 %55, i32* %3, align 4
  br label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @EIO, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @EDOOFUS, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %56, %54, %53, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @cvmx_mgmt_port_sendm(i32, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
