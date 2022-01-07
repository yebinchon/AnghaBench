; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.e6060sw_softc = type { i64, i64, i64*, i64, i64 }
%struct.ifmedia = type { i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifnet = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@CORE_REGISTER = common dso_local global i64 0, align 8
@PORT_DEFVLAN = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @e6060sw_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6060sw_setport(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.e6060sw_softc*, align 8
  %7 = alloca %struct.ifmedia*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.e6060sw_softc* @device_get_softc(i32 %12)
  store %struct.e6060sw_softc* %13, %struct.e6060sw_softc** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %23 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18, %2
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %3, align 4
  br label %110

28:                                               ; preds = %18
  %29 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %30 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @device_get_parent(i32 %35)
  %37 = load i64, i64* @CORE_REGISTER, align 8
  %38 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %39 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = load i32, i32* @PORT_DEFVLAN, align 4
  %47 = call i32 @MDIO_READREG(i32 %36, i64 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, -4096
  store i32 %49, i32* %11, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, 4096
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @device_get_parent(i32 %57)
  %59 = load i64, i64* @CORE_REGISTER, align 8
  %60 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %61 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = load i32, i32* @PORT_DEFVLAN, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @MDIO_WRITEREG(i32 %58, i64 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %34, %28
  %72 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %73 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %81 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %110

85:                                               ; preds = %71
  %86 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call %struct.mii_data* @e6060sw_miiforport(%struct.e6060sw_softc* %86, i64 %89)
  store %struct.mii_data* %90, %struct.mii_data** %8, align 8
  %91 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %92 = icmp eq %struct.mii_data* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %3, align 4
  br label %110

95:                                               ; preds = %85
  %96 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call %struct.ifnet* @e6060sw_ifpforport(%struct.e6060sw_softc* %96, i64 %99)
  store %struct.ifnet* %100, %struct.ifnet** %9, align 8
  %101 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %102 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %101, i32 0, i32 0
  store %struct.ifmedia* %102, %struct.ifmedia** %7, align 8
  %103 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load %struct.ifmedia*, %struct.ifmedia** %7, align 8
  %107 = load i32, i32* @SIOCSIFMEDIA, align 4
  %108 = call i32 @ifmedia_ioctl(%struct.ifnet* %103, i32* %105, %struct.ifmedia* %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %95, %93, %84, %26
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.e6060sw_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_READREG(i32, i64, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @MDIO_WRITEREG(i32, i64, i32, i32) #1

declare dso_local %struct.mii_data* @e6060sw_miiforport(%struct.e6060sw_softc*, i64) #1

declare dso_local %struct.ifnet* @e6060sw_ifpforport(%struct.e6060sw_softc*, i64) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, i32*, %struct.ifmedia*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
