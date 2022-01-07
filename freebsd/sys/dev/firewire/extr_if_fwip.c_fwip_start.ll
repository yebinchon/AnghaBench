; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.fwip_softc = type { i64 }
%struct.mbuf = type { i32 }
%struct.fwip_eth_softc = type { %struct.fwip_softc* }

@.str = private unnamed_addr constant [10 x i8] c"starting\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"not ready\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @fwip_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwip_start(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.fwip_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.fwip_eth_softc*
  %10 = getelementptr inbounds %struct.fwip_eth_softc, %struct.fwip_eth_softc* %9, i32 0, i32 0
  %11 = load %struct.fwip_softc*, %struct.fwip_softc** %10, align 8
  store %struct.fwip_softc* %11, %struct.fwip_softc** %3, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = call i32 @FWIPDEBUG(%struct.ifnet* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %15 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %20 = call i32 @FWIPDEBUG(%struct.ifnet* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 (...) @splimp()
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %36, %18
  %23 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 1
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = call i32 @IF_DEQUEUE(%struct.TYPE_2__* %24, %struct.mbuf* %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = icmp ne %struct.mbuf* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %31 = call i32 @m_freem(%struct.mbuf* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %34 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %35 = call i32 @if_inc_counter(%struct.ifnet* %33, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %32
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = icmp ne %struct.mbuf* %37, null
  br i1 %38, label %22, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @splx(i32 %40)
  br label %67

42:                                               ; preds = %1
  %43 = call i32 (...) @splimp()
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %56 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %57 = call i32 @fwip_async_output(%struct.fwip_softc* %55, %struct.ifnet* %56)
  br label %58

58:                                               ; preds = %54, %42
  %59 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @splx(i32 %65)
  br label %67

67:                                               ; preds = %58, %39
  ret void
}

declare dso_local i32 @FWIPDEBUG(%struct.ifnet*, i8*) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @IF_DEQUEUE(%struct.TYPE_2__*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @fwip_async_output(%struct.fwip_softc*, %struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
