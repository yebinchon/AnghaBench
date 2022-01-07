; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.vte_softc* }
%struct.vte_softc = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @vte_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vte_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 2
  %13 = load %struct.vte_softc*, %struct.vte_softc** %12, align 8
  store %struct.vte_softc* %13, %struct.vte_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %98 [
    i32 129, label %17
    i32 132, label %72
    i32 131, label %72
    i32 128, label %87
    i32 130, label %87
  ]

17:                                               ; preds = %3
  %18 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %19 = call i32 @VTE_LOCK(%struct.vte_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %38 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %48 = call i32 @vte_rxfilter(%struct.vte_softc* %47)
  br label %52

49:                                               ; preds = %33, %26
  %50 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %51 = call i32 @vte_init_locked(%struct.vte_softc* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %64

53:                                               ; preds = %17
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %62 = call i32 @vte_stop(%struct.vte_softc* %61)
  br label %63

63:                                               ; preds = %60, %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %69 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %71 = call i32 @VTE_UNLOCK(%struct.vte_softc* %70)
  br label %103

72:                                               ; preds = %3, %3
  %73 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %74 = call i32 @VTE_LOCK(%struct.vte_softc* %73)
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %83 = call i32 @vte_rxfilter(%struct.vte_softc* %82)
  br label %84

84:                                               ; preds = %81, %72
  %85 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %86 = call i32 @VTE_UNLOCK(%struct.vte_softc* %85)
  br label %103

87:                                               ; preds = %3, %3
  %88 = load %struct.vte_softc*, %struct.vte_softc** %7, align 8
  %89 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.mii_data* @device_get_softc(i32 %90)
  store %struct.mii_data* %91, %struct.mii_data** %9, align 8
  %92 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %93 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %94 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %95 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %94, i32 0, i32 0
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @ifmedia_ioctl(%struct.ifnet* %92, %struct.ifreq* %93, i32* %95, i32 %96)
  store i32 %97, i32* %10, align 4
  br label %103

98:                                               ; preds = %3
  %99 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @ether_ioctl(%struct.ifnet* %99, i32 %100, i64 %101)
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %98, %87, %84, %64
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i32 @VTE_LOCK(%struct.vte_softc*) #1

declare dso_local i32 @vte_rxfilter(%struct.vte_softc*) #1

declare dso_local i32 @vte_init_locked(%struct.vte_softc*) #1

declare dso_local i32 @vte_stop(%struct.vte_softc*) #1

declare dso_local i32 @VTE_UNLOCK(%struct.vte_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
