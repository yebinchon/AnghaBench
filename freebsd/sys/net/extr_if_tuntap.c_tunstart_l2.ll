; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunstart_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunstart_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.tuntap_softc* }
%struct.tuntap_softc = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"starting\0A\00", align 1
@TUN_VMNET = common dso_local global i32 0, align 4
@TUN_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"not ready, tun_flags = 0x%x\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@TUN_RWAIT = common dso_local global i32 0, align 4
@TUN_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @tunstart_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunstart_l2(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.tuntap_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 2
  %7 = load %struct.tuntap_softc*, %struct.tuntap_softc** %6, align 8
  store %struct.tuntap_softc* %7, %struct.tuntap_softc** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call i32 (%struct.ifnet*, i8*, ...) @TUNDEBUG(%struct.ifnet* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %11 = call i32 @TUN_LOCK(%struct.tuntap_softc* %10)
  %12 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %13 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TUN_VMNET, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %1
  %19 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %20 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TUN_READY, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @TUN_READY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %18
  %27 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %28 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %29 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct.ifnet*, i8*, ...) @TUNDEBUG(%struct.ifnet* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %46, %26
  %33 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 1
  %35 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %36 = call i32 @IF_DEQUEUE(i32* %34, %struct.mbuf* %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %38 = icmp ne %struct.mbuf* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %41 = call i32 @m_freem(%struct.mbuf* %40)
  %42 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %43 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %44 = call i32 @if_inc_counter(%struct.ifnet* %42, i32 %43, i32 1)
  br label %46

45:                                               ; preds = %32
  br label %47

46:                                               ; preds = %39
  br label %32

47:                                               ; preds = %45
  %48 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %49 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %48)
  br label %119

50:                                               ; preds = %18, %1
  %51 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = call i32 @IFQ_IS_EMPTY(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %110, label %60

60:                                               ; preds = %50
  %61 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %62 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TUN_RWAIT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i32, i32* @TUN_RWAIT, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %71 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %75 = call i32 @wakeup(%struct.tuntap_softc* %74)
  br label %76

76:                                               ; preds = %67, %60
  %77 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %78 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TUN_ASYNC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %85 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %90 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %89)
  %91 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %92 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %91, i32 0, i32 2
  %93 = load i32, i32* @SIGIO, align 4
  %94 = call i32 @pgsigio(i32** %92, i32 %93, i32 0)
  %95 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %96 = call i32 @TUN_LOCK(%struct.tuntap_softc* %95)
  br label %97

97:                                               ; preds = %88, %83, %76
  %98 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %99 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %98, i32 0, i32 1
  %100 = load i64, i64* @PZERO, align 8
  %101 = add nsw i64 %100, 1
  %102 = call i32 @selwakeuppri(%struct.TYPE_2__* %99, i64 %101)
  %103 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %104 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @KNOTE_LOCKED(i32* %105, i32 0)
  %107 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %108 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %109 = call i32 @if_inc_counter(%struct.ifnet* %107, i32 %108, i32 1)
  br label %110

110:                                              ; preds = %97, %50
  %111 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %114 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %118 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %117)
  br label %119

119:                                              ; preds = %110, %47
  ret void
}

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @TUN_LOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @TUN_UNLOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @IFQ_IS_EMPTY(i32*) #1

declare dso_local i32 @wakeup(%struct.tuntap_softc*) #1

declare dso_local i32 @pgsigio(i32**, i32, i32) #1

declare dso_local i32 @selwakeuppri(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
