; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.arswitch_softc = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.arswitch_softc.0*, %struct.TYPE_8__*)* }
%struct.arswitch_softc.0 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.ifmedia = type { i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifnet = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@AR8327 = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*)* @arswitch_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_setport(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arswitch_softc*, align 8
  %9 = alloca %struct.ifmedia*, align 8
  %10 = alloca %struct.mii_data*, align 8
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.arswitch_softc* @device_get_softc(i32 %13)
  store %struct.arswitch_softc* %14, %struct.arswitch_softc** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %24 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19, %2
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %115

30:                                               ; preds = %19
  %31 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %32 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %38 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32 (%struct.arswitch_softc.0*, %struct.TYPE_8__*)*, i32 (%struct.arswitch_softc.0*, %struct.TYPE_8__*)** %39, align 8
  %41 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %42 = bitcast %struct.arswitch_softc* %41 to %struct.arswitch_softc.0*
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = call i32 %40(%struct.arswitch_softc.0* %42, %struct.TYPE_8__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %115

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @arswitch_is_cpuport(%struct.arswitch_softc* %51, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %115

58:                                               ; preds = %50
  %59 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %60 = load i32, i32* @AR8327, align 4
  %61 = call i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %87, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 1
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @arswitch_setled(%struct.arswitch_softc* %68, i64 %72, i32 %73, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %67
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %3, align 4
  br label %115

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %64

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90, %58
  %92 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call %struct.mii_data* @arswitch_miiforport(%struct.arswitch_softc* %92, i64 %95)
  store %struct.mii_data* %96, %struct.mii_data** %10, align 8
  %97 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  %98 = icmp eq %struct.mii_data* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %3, align 4
  br label %115

101:                                              ; preds = %91
  %102 = load %struct.arswitch_softc*, %struct.arswitch_softc** %8, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call %struct.ifnet* @arswitch_ifpforport(%struct.arswitch_softc* %102, i64 %105)
  store %struct.ifnet* %106, %struct.ifnet** %11, align 8
  %107 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  %108 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %107, i32 0, i32 0
  store %struct.ifmedia* %108, %struct.ifmedia** %9, align 8
  %109 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load %struct.ifmedia*, %struct.ifmedia** %9, align 8
  %113 = load i32, i32* @SIOCSIFMEDIA, align 4
  %114 = call i32 @ifmedia_ioctl(%struct.ifnet* %109, i32* %111, %struct.ifmedia* %112, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %101, %99, %84, %57, %47, %28
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.arswitch_softc* @device_get_softc(i32) #1

declare dso_local i64 @arswitch_is_cpuport(%struct.arswitch_softc*, i64) #1

declare dso_local i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @arswitch_setled(%struct.arswitch_softc*, i64, i32, i32) #1

declare dso_local %struct.mii_data* @arswitch_miiforport(%struct.arswitch_softc*, i64) #1

declare dso_local %struct.ifnet* @arswitch_ifpforport(%struct.arswitch_softc*, i64) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, i32*, %struct.ifmedia*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
