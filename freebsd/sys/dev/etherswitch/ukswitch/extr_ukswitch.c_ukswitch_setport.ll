; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ukswitch/extr_ukswitch.c_ukswitch_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ukswitch/extr_ukswitch.c_ukswitch_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.ukswitch_softc = type { i64, i64*, i64 }
%struct.ifmedia = type { i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifnet = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @ukswitch_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ukswitch_setport(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ukswitch_softc*, align 8
  %7 = alloca %struct.ifmedia*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.ukswitch_softc* @device_get_softc(i32 %11)
  store %struct.ukswitch_softc* %12, %struct.ukswitch_softc** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %6, align 8
  %22 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %2
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %17
  %28 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %6, align 8
  %37 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %3, align 4
  br label %67

42:                                               ; preds = %27
  %43 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %6, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.mii_data* @ukswitch_miiforport(%struct.ukswitch_softc* %43, i64 %46)
  store %struct.mii_data* %47, %struct.mii_data** %8, align 8
  %48 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %49 = icmp eq %struct.mii_data* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %3, align 4
  br label %67

52:                                               ; preds = %42
  %53 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.ifnet* @ukswitch_ifpforport(%struct.ukswitch_softc* %53, i64 %56)
  store %struct.ifnet* %57, %struct.ifnet** %9, align 8
  %58 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %59 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %58, i32 0, i32 0
  store %struct.ifmedia* %59, %struct.ifmedia** %7, align 8
  %60 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load %struct.ifmedia*, %struct.ifmedia** %7, align 8
  %64 = load i32, i32* @SIOCSIFMEDIA, align 4
  %65 = call i32 @ifmedia_ioctl(%struct.ifnet* %60, i32* %62, %struct.ifmedia* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %52, %50, %40, %25
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ukswitch_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @ukswitch_miiforport(%struct.ukswitch_softc*, i64) #1

declare dso_local %struct.ifnet* @ukswitch_ifpforport(%struct.ukswitch_softc*, i64) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, i32*, %struct.ifmedia*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
