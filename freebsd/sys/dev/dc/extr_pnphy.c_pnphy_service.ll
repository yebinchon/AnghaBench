; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_pnphy.c_pnphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_pnphy.c_pnphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @pnphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %10 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %11, align 8
  store %struct.ifmedia_entry* %12, %struct.ifmedia_entry** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %85 [
    i32 129, label %14
    i32 130, label %15
    i32 128, label %75
  ]

14:                                               ; preds = %3
  br label %85

15:                                               ; preds = %3
  %16 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %17 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @if_getflags(i32 %18)
  %20 = load i32, i32* @IFF_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %85

24:                                               ; preds = %15
  %25 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %26 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IFM_SUBTYPE(i32 %27)
  switch i32 %28, label %73 [
    i32 132, label %29
    i32 131, label %51
  ]

29:                                               ; preds = %24
  %30 = load i32, i32* @IFM_ETHER, align 4
  %31 = or i32 %30, 132
  %32 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %33 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %35 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFM_FDX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i32, i32* @IFM_FDX, align 4
  %42 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %43 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %29
  %47 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %48 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MIIBUS_STATCHG(i32 %49)
  store i32 0, i32* %4, align 4
  br label %91

51:                                               ; preds = %24
  %52 = load i32, i32* @IFM_ETHER, align 4
  %53 = or i32 %52, 131
  %54 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %55 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %57 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFM_FDX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i32, i32* @IFM_FDX, align 4
  %64 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %65 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %51
  %69 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %70 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MIIBUS_STATCHG(i32 %71)
  store i32 0, i32* %4, align 4
  br label %91

73:                                               ; preds = %24
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %4, align 4
  br label %91

75:                                               ; preds = %3
  %76 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %77 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @if_getflags(i32 %78)
  %80 = load i32, i32* @IFF_UP, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %91

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %3, %84, %23, %14
  %86 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %87 = call i32 @PHY_STATUS(%struct.mii_softc* %86)
  %88 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @mii_phy_update(%struct.mii_softc* %88, i32 %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %83, %73, %68, %46
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @MIIBUS_STATCHG(i32) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
