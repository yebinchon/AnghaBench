; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_if_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_if_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.dtsec_softc* }
%struct.dtsec_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @dtsec_if_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtsec_if_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dtsec_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 1
  %12 = load %struct.dtsec_softc*, %struct.dtsec_softc** %11, align 8
  store %struct.dtsec_softc* %12, %struct.dtsec_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %65 [
    i32 128, label %16
    i32 130, label %36
    i32 131, label %56
    i32 129, label %56
  ]

16:                                               ; preds = %3
  %17 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %18 = call i32 @DTSEC_LOCK(%struct.dtsec_softc* %17)
  %19 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %20 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dtsec_set_mtu(%struct.dtsec_softc* %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %33

31:                                               ; preds = %16
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %35 = call i32 @DTSEC_UNLOCK(%struct.dtsec_softc* %34)
  br label %70

36:                                               ; preds = %3
  %37 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %38 = call i32 @DTSEC_LOCK(%struct.dtsec_softc* %37)
  %39 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %40 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_UP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %49 = call i32 @dtsec_if_enable_locked(%struct.dtsec_softc* %48)
  store i32 %49, i32* %9, align 4
  br label %53

50:                                               ; preds = %36
  %51 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %52 = call i32 @dtsec_if_disable_locked(%struct.dtsec_softc* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %55 = call i32 @DTSEC_UNLOCK(%struct.dtsec_softc* %54)
  br label %70

56:                                               ; preds = %3, %3
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %59 = load %struct.dtsec_softc*, %struct.dtsec_softc** %7, align 8
  %60 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ifmedia_ioctl(%struct.ifnet* %57, %struct.ifreq* %58, i32* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %70

65:                                               ; preds = %3
  %66 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @ether_ioctl(%struct.ifnet* %66, i32 %67, i64 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %65, %56, %53, %33
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @DTSEC_LOCK(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_set_mtu(%struct.dtsec_softc*, i32) #1

declare dso_local i32 @DTSEC_UNLOCK(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_if_enable_locked(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_if_disable_locked(%struct.dtsec_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
