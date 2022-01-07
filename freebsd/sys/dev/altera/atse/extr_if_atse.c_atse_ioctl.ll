; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.atse_softc* }
%struct.atse_softc = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @atse_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.atse_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mii_data*, align 8
  %12 = alloca %struct.ifreq*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 3
  %15 = load %struct.atse_softc*, %struct.atse_softc** %14, align 8
  store %struct.atse_softc* %15, %struct.atse_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %106 [
    i32 129, label %19
    i32 130, label %74
    i32 133, label %86
    i32 132, label %86
    i32 131, label %93
    i32 128, label %93
  ]

19:                                               ; preds = %3
  %20 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %21 = call i32 @ATSE_LOCK(%struct.atse_softc* %20)
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %19
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %40 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %38, %41
  %43 = load i32, i32* @IFF_PROMISC, align 4
  %44 = load i32, i32* @IFF_ALLMULTI, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %50 = call i32 @atse_rxfilter_locked(%struct.atse_softc* %49)
  br label %54

51:                                               ; preds = %35, %28
  %52 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %53 = call i32 @atse_init_locked(%struct.atse_softc* %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %66

55:                                               ; preds = %19
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %64 = call i32 @atse_stop_locked(%struct.atse_softc* %63)
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %71 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %73 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %72)
  br label %111

74:                                               ; preds = %3
  %75 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %76 = call i32 @ATSE_LOCK(%struct.atse_softc* %75)
  %77 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %78 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = xor i32 %79, %82
  store i32 %83, i32* %10, align 4
  %84 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %85 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %84)
  br label %111

86:                                               ; preds = %3, %3
  %87 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %88 = call i32 @ATSE_LOCK(%struct.atse_softc* %87)
  %89 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %90 = call i32 @atse_rxfilter_locked(%struct.atse_softc* %89)
  %91 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %92 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %91)
  br label %111

93:                                               ; preds = %3, %3
  %94 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %95 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.mii_data* @device_get_softc(i32 %96)
  store %struct.mii_data* %97, %struct.mii_data** %11, align 8
  %98 = load i64, i64* %6, align 8
  %99 = inttoptr i64 %98 to %struct.ifreq*
  store %struct.ifreq* %99, %struct.ifreq** %12, align 8
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %102 = load %struct.mii_data*, %struct.mii_data** %11, align 8
  %103 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %102, i32 0, i32 0
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @ifmedia_ioctl(%struct.ifnet* %100, %struct.ifreq* %101, i32* %103, i32 %104)
  store i32 %105, i32* %9, align 4
  br label %111

106:                                              ; preds = %3
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @ether_ioctl(%struct.ifnet* %107, i32 %108, i64 %109)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %106, %93, %86, %74, %66
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @ATSE_LOCK(%struct.atse_softc*) #1

declare dso_local i32 @atse_rxfilter_locked(%struct.atse_softc*) #1

declare dso_local i32 @atse_init_locked(%struct.atse_softc*) #1

declare dso_local i32 @atse_stop_locked(%struct.atse_softc*) #1

declare dso_local i32 @ATSE_UNLOCK(%struct.atse_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
