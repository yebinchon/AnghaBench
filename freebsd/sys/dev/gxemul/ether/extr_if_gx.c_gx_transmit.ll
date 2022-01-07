; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.gx_softc* }
%struct.gx_softc = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_LENGTH = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_BUFFER = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_COMMAND = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_COMMAND_TX = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @gx_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.gx_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 1
  %9 = load %struct.gx_softc*, %struct.gx_softc** %8, align 8
  store %struct.gx_softc* %9, %struct.gx_softc** %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = call i32 @m_freem(%struct.mbuf* %18)
  store i32 0, i32* %3, align 4
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.gx_softc*, %struct.gx_softc** %6, align 8
  %22 = call i32 @GXEMUL_ETHER_LOCK(%struct.gx_softc* %21)
  %23 = load i32, i32* @GXEMUL_ETHER_DEV_LENGTH, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GXEMUL_ETHER_DEV_WRITE(i32 %23, i32 %27)
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GXEMUL_ETHER_DEV_BUFFER, align 4
  %35 = call i64 @GXEMUL_ETHER_DEV_FUNCTION(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @m_copydata(%struct.mbuf* %29, i32 0, i32 %33, i8* %36)
  %38 = load i32, i32* @GXEMUL_ETHER_DEV_COMMAND, align 4
  %39 = load i32, i32* @GXEMUL_ETHER_DEV_COMMAND_TX, align 4
  %40 = call i32 @GXEMUL_ETHER_DEV_WRITE(i32 %38, i32 %39)
  %41 = load %struct.gx_softc*, %struct.gx_softc** %6, align 8
  %42 = call i32 @GXEMUL_ETHER_UNLOCK(%struct.gx_softc* %41)
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %43, %struct.mbuf* %44)
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %48 = call i32 @if_inc_counter(%struct.ifnet* %46, i32 %47, i32 1)
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %51 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @if_inc_counter(%struct.ifnet* %49, i32 %50, i32 %54)
  %56 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %57 = call i32 @m_freem(%struct.mbuf* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %20, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @GXEMUL_ETHER_LOCK(%struct.gx_softc*) #1

declare dso_local i32 @GXEMUL_ETHER_DEV_WRITE(i32, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i8*) #1

declare dso_local i64 @GXEMUL_ETHER_DEV_FUNCTION(i32) #1

declare dso_local i32 @GXEMUL_ETHER_UNLOCK(%struct.gx_softc*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
