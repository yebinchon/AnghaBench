; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.tuntap_softc* }
%struct.tuntap_softc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"starting\0A\00", align 1
@TUN_RWAIT = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@TUN_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @tunstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunstart(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.tuntap_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 1
  %7 = load %struct.tuntap_softc*, %struct.tuntap_softc** %6, align 8
  store %struct.tuntap_softc* %7, %struct.tuntap_softc** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call i32 @TUNDEBUG(%struct.ifnet* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = call i64 @ALTQ_IS_ENABLED(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = call i32 @IFQ_LOCK(i32* %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = call i32 @IFQ_POLL_NOLOCK(i32* %19, %struct.mbuf* %20)
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = call i32 @IFQ_UNLOCK(i32* %26)
  br label %81

28:                                               ; preds = %14
  %29 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = call i32 @IFQ_UNLOCK(i32* %30)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %34 = call i32 @TUN_LOCK(%struct.tuntap_softc* %33)
  %35 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %36 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TUN_RWAIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load i32, i32* @TUN_RWAIT, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %45 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %49 = call i32 @wakeup(%struct.tuntap_softc* %48)
  br label %50

50:                                               ; preds = %41, %32
  %51 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %52 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %51, i32 0, i32 2
  %53 = load i64, i64* @PZERO, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @selwakeuppri(%struct.TYPE_2__* %52, i64 %54)
  %56 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %57 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @KNOTE_LOCKED(i32* %58, i32 0)
  %60 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %61 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TUN_ASYNC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %50
  %67 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %68 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %73 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %72)
  %74 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %75 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %74, i32 0, i32 1
  %76 = load i32, i32* @SIGIO, align 4
  %77 = call i32 @pgsigio(i64* %75, i32 %76, i32 0)
  br label %81

78:                                               ; preds = %66, %50
  %79 = load %struct.tuntap_softc*, %struct.tuntap_softc** %3, align 8
  %80 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %79)
  br label %81

81:                                               ; preds = %24, %78, %71
  ret void
}

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*) #1

declare dso_local i64 @ALTQ_IS_ENABLED(i32*) #1

declare dso_local i32 @IFQ_LOCK(i32*) #1

declare dso_local i32 @IFQ_POLL_NOLOCK(i32*, %struct.mbuf*) #1

declare dso_local i32 @IFQ_UNLOCK(i32*) #1

declare dso_local i32 @TUN_LOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @wakeup(%struct.tuntap_softc*) #1

declare dso_local i32 @selwakeuppri(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @TUN_UNLOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @pgsigio(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
