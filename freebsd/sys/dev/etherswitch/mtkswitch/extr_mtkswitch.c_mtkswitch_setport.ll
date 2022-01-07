; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.mtkswitch_softc = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.mtkswitch_softc.0*, %struct.TYPE_8__*)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.ifmedia = type { i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifnet = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*)* @mtkswitch_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_setport(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtkswitch_softc*, align 8
  %8 = alloca %struct.ifmedia*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.mtkswitch_softc* @device_get_softc(i32 %11)
  store %struct.mtkswitch_softc* %12, %struct.mtkswitch_softc** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %22 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17, %2
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %3, align 4
  br label %80

28:                                               ; preds = %17
  %29 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %30 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %36 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32 (%struct.mtkswitch_softc.0*, %struct.TYPE_8__*)*, i32 (%struct.mtkswitch_softc.0*, %struct.TYPE_8__*)** %37, align 8
  %39 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %40 = bitcast %struct.mtkswitch_softc* %39 to %struct.mtkswitch_softc.0*
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = call i32 %38(%struct.mtkswitch_softc.0* %40, %struct.TYPE_8__* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @mtkswitch_is_cpuport(%struct.mtkswitch_softc* %49, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %80

56:                                               ; preds = %48
  %57 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.mii_data* @mtkswitch_miiforport(%struct.mtkswitch_softc* %57, i64 %60)
  store %struct.mii_data* %61, %struct.mii_data** %9, align 8
  %62 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %63 = icmp eq %struct.mii_data* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %3, align 4
  br label %80

66:                                               ; preds = %56
  %67 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call %struct.ifnet* @mtkswitch_ifpforport(%struct.mtkswitch_softc* %67, i64 %70)
  store %struct.ifnet* %71, %struct.ifnet** %10, align 8
  %72 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %73 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %72, i32 0, i32 0
  store %struct.ifmedia* %73, %struct.ifmedia** %8, align 8
  %74 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %78 = load i32, i32* @SIOCSIFMEDIA, align 4
  %79 = call i32 @ifmedia_ioctl(%struct.ifnet* %74, i32* %76, %struct.ifmedia* %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %66, %64, %55, %45, %26
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.mtkswitch_softc* @device_get_softc(i32) #1

declare dso_local i64 @mtkswitch_is_cpuport(%struct.mtkswitch_softc*, i64) #1

declare dso_local %struct.mii_data* @mtkswitch_miiforport(%struct.mtkswitch_softc*, i64) #1

declare dso_local %struct.ifnet* @mtkswitch_ifpforport(%struct.mtkswitch_softc*, i64) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, i32*, %struct.ifmedia*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
