; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_getport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.ifmediareq, i32, i32 }
%struct.ifmediareq = type { i32, i32, i32, i64, i64 }
%struct.mtkswitch_softc = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.mtkswitch_softc.0*, %struct.TYPE_8__*)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.mii_data = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_CPU = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*)* @mtkswitch_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_getport(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.mtkswitch_softc*, align 8
  %7 = alloca %struct.mii_data*, align 8
  %8 = alloca %struct.ifmediareq*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.mtkswitch_softc* @device_get_softc(i32 %10)
  store %struct.mtkswitch_softc* %11, %struct.mtkswitch_softc** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %6, align 8
  %21 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16, %2
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %3, align 4
  br label %112

27:                                               ; preds = %16
  %28 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %6, align 8
  %29 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32 (%struct.mtkswitch_softc.0*, %struct.TYPE_8__*)*, i32 (%struct.mtkswitch_softc.0*, %struct.TYPE_8__*)** %30, align 8
  %32 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %6, align 8
  %33 = bitcast %struct.mtkswitch_softc* %32 to %struct.mtkswitch_softc.0*
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = call i32 %31(%struct.mtkswitch_softc.0* %33, %struct.TYPE_8__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %112

40:                                               ; preds = %27
  %41 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %6, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.mii_data* @mtkswitch_miiforport(%struct.mtkswitch_softc* %41, i64 %44)
  store %struct.mii_data* %45, %struct.mii_data** %7, align 8
  %46 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %6, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @mtkswitch_is_cpuport(%struct.mtkswitch_softc* %46, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %40
  %53 = load i32, i32* @ETHERSWITCH_PORT_CPU, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store %struct.ifmediareq* %59, %struct.ifmediareq** %8, align 8
  %60 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %61 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @IFM_ETHER, align 4
  %63 = load i32, i32* @IFM_1000_T, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IFM_FDX, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %68 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %70 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %72 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @IFM_ACTIVE, align 4
  %74 = load i32, i32* @IFM_AVALID, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %77 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %111

78:                                               ; preds = %40
  %79 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %80 = icmp ne %struct.mii_data* %79, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %83 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %88 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %87, i32 0, i32 0
  %89 = load i32, i32* @SIOCGIFMEDIA, align 4
  %90 = call i32 @ifmedia_ioctl(i32 %84, i32* %86, i32* %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %112

95:                                               ; preds = %81
  br label %110

96:                                               ; preds = %78
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store %struct.ifmediareq* %98, %struct.ifmediareq** %8, align 8
  %99 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %100 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* @IFM_NONE, align 4
  %102 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %103 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %105 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  %106 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %107 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %109 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %96, %95
  br label %111

111:                                              ; preds = %110, %52
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %93, %38, %25
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.mtkswitch_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @mtkswitch_miiforport(%struct.mtkswitch_softc*, i64) #1

declare dso_local i64 @mtkswitch_is_cpuport(%struct.mtkswitch_softc*, i64) #1

declare dso_local i32 @ifmedia_ioctl(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
