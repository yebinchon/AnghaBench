; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i64 }
%struct.fwe_softc = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.firewire_comm* }
%struct.firewire_comm = type { i32 (%struct.firewire_comm*, i32)* }
%struct.ifstat = type { i32 }
%struct.fwe_eth_softc = type { %struct.fwe_softc* }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\09ch %d dma %d\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@fwe_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @fwe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwe_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fwe_softc*, align 8
  %9 = alloca %struct.ifstat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fwe_eth_softc*
  %16 = getelementptr inbounds %struct.fwe_eth_softc, %struct.fwe_eth_softc* %15, i32 0, i32 0
  %17 = load %struct.fwe_softc*, %struct.fwe_softc** %16, align 8
  store %struct.fwe_softc* %17, %struct.fwe_softc** %8, align 8
  store %struct.ifstat* null, %struct.ifstat** %9, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %76 [
    i32 128, label %19
    i32 132, label %58
    i32 131, label %58
    i32 130, label %59
    i32 129, label %75
  ]

19:                                               ; preds = %3
  %20 = call i32 (...) @splimp()
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.fwe_softc*, %struct.fwe_softc** %8, align 8
  %36 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %35, i32 0, i32 3
  %37 = call i32 @fwe_init(i32* %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %50

39:                                               ; preds = %19
  %40 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.fwe_softc*, %struct.fwe_softc** %8, align 8
  %48 = call i32 @fwe_stop(%struct.fwe_softc* %47)
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* @IFF_PROMISC, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @splx(i32 %56)
  br label %85

58:                                               ; preds = %3, %3
  br label %85

59:                                               ; preds = %3
  %60 = call i32 (...) @splimp()
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %7, align 8
  %62 = inttoptr i64 %61 to %struct.ifstat*
  store %struct.ifstat* %62, %struct.ifstat** %9, align 8
  %63 = load %struct.ifstat*, %struct.ifstat** %9, align 8
  %64 = getelementptr inbounds %struct.ifstat, %struct.ifstat* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fwe_softc*, %struct.fwe_softc** %8, align 8
  %67 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fwe_softc*, %struct.fwe_softc** %8, align 8
  %70 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snprintf(i32 %65, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @splx(i32 %73)
  br label %85

75:                                               ; preds = %3
  br label %85

76:                                               ; preds = %3
  %77 = call i32 (...) @splimp()
  store i32 %77, i32* %10, align 4
  %78 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @ether_ioctl(%struct.ifnet* %78, i32 %79, i64 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @splx(i32 %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %75, %59, %58, %50
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %76
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @fwe_init(i32*) #1

declare dso_local i32 @fwe_stop(%struct.fwe_softc*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
