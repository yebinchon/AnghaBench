; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.dme_softc* }
%struct.dme_softc = type { i32 }
%struct.mii_data = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @dme_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dme_softc*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 2
  %13 = load %struct.dme_softc*, %struct.dme_softc** %12, align 8
  store %struct.dme_softc* %13, %struct.dme_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %9, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %64 [
    i32 129, label %17
    i32 130, label %53
    i32 128, label %53
  ]

17:                                               ; preds = %3
  %18 = load %struct.dme_softc*, %struct.dme_softc** %7, align 8
  %19 = call i32 @DME_LOCK(%struct.dme_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.dme_softc*, %struct.dme_softc** %7, align 8
  %35 = call i32 @dme_init_locked(%struct.dme_softc* %34)
  br label %36

36:                                               ; preds = %33, %26
  br label %48

37:                                               ; preds = %17
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.dme_softc*, %struct.dme_softc** %7, align 8
  %46 = call i32 @dme_stop(%struct.dme_softc* %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.dme_softc*, %struct.dme_softc** %7, align 8
  %50 = call i32 @dme_setmode(%struct.dme_softc* %49)
  %51 = load %struct.dme_softc*, %struct.dme_softc** %7, align 8
  %52 = call i32 @DME_UNLOCK(%struct.dme_softc* %51)
  br label %69

53:                                               ; preds = %3, %3
  %54 = load %struct.dme_softc*, %struct.dme_softc** %7, align 8
  %55 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.mii_data* @device_get_softc(i32 %56)
  store %struct.mii_data* %57, %struct.mii_data** %8, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %60 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %61 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %60, i32 0, i32 0
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ifmedia_ioctl(%struct.ifnet* %58, %struct.ifreq* %59, i32* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %69

64:                                               ; preds = %3
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @ether_ioctl(%struct.ifnet* %65, i32 %66, i64 %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %64, %53, %48
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @DME_LOCK(%struct.dme_softc*) #1

declare dso_local i32 @dme_init_locked(%struct.dme_softc*) #1

declare dso_local i32 @dme_stop(%struct.dme_softc*) #1

declare dso_local i32 @dme_setmode(%struct.dme_softc*) #1

declare dso_local i32 @DME_UNLOCK(%struct.dme_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
