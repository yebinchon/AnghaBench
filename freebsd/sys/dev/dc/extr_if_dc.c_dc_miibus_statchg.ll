; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32, %struct.ifmedia }
%struct.ifmedia = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFM_HPNA_1 = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dc_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mii_data*, align 8
  %6 = alloca %struct.ifmedia*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.dc_softc*
  store %struct.dc_softc* %9, %struct.dc_softc** %3, align 8
  %10 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.mii_data*
  store %struct.mii_data* %14, %struct.mii_data** %5, align 8
  %15 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %15, i32 0, i32 1
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %4, align 8
  %18 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %19 = icmp eq %struct.mii_data* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = icmp eq %struct.ifnet* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %20, %1
  br label %84

31:                                               ; preds = %23
  %32 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %33 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %32, i32 0, i32 2
  store %struct.ifmedia* %33, %struct.ifmedia** %6, align 8
  %34 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %35 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %39 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IFM_SUBTYPE(i32 %40)
  %42 = load i32, i32* @IFM_HPNA_1, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %46 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %47 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dc_setcfg(%struct.dc_softc* %45, i32 %48)
  br label %84

50:                                               ; preds = %37, %31
  %51 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %52 = call i32 @DC_IS_ADMTEK(%struct.dc_softc* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %56 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %57 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dc_setcfg(%struct.dc_softc* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %50
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %63 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %65 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFM_ACTIVE, align 4
  %68 = load i32, i32* @IFM_AVALID, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = load i32, i32* @IFM_ACTIVE, align 4
  %72 = load i32, i32* @IFM_AVALID, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %61
  %76 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %77 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @IFM_SUBTYPE(i32 %78)
  switch i32 %79, label %83 [
    i32 128, label %80
    i32 129, label %80
  ]

80:                                               ; preds = %75, %75
  %81 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %82 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %75, %80
  br label %84

84:                                               ; preds = %30, %44, %83, %61
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i64 @DC_IS_DAVICOM(%struct.dc_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @dc_setcfg(%struct.dc_softc*, i32) #1

declare dso_local i32 @DC_IS_ADMTEK(%struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
