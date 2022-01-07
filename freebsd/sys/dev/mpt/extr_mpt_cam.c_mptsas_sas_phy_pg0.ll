; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mptsas_sas_phy_pg0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mptsas_sas_phy_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mptsas_phyinfo = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@MPI_SASPHY0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_PHY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mptsas_phyinfo*, i64, i64)* @mptsas_sas_phy_pg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_phy_pg0(%struct.mpt_softc* %0, %struct.mptsas_phyinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca %struct.mptsas_phyinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store %struct.mptsas_phyinfo* %1, %struct.mptsas_phyinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %13 = load i32, i32* @MPI_SASPHY0_PAGEVERSION, align 4
  %14 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_PHY, align 4
  %15 = call i32 @mpt_read_extcfg_header(%struct.mpt_softc* %12, i32 %13, i32 0, i32 0, i32 %14, %struct.TYPE_13__* %9, i32 0, i32 10000)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %77

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %11, align 4
  br label %77

25:                                               ; preds = %19
  %26 = load i32, i32* @M_DEVBUF, align 4
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.TYPE_12__* @malloc(i32 16, i32 %26, i32 %29)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %10, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %11, align 4
  br label %77

35:                                               ; preds = %25
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %37 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = call i32 @mpt_read_extcfg_page(%struct.mpt_softc* %36, i32 %37, i64 %40, %struct.TYPE_13__* %9, %struct.TYPE_12__* %41, i32 16, i32 0, i32 10000)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(%struct.TYPE_12__* %46, i32 %47)
  br label %77

49:                                               ; preds = %35
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %54 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %59 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le16toh(i32 %62)
  %64 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %65 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16toh(i32 %69)
  %71 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %72 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = load i32, i32* @M_DEVBUF, align 4
  %76 = call i32 @free(%struct.TYPE_12__* %74, i32 %75)
  br label %77

77:                                               ; preds = %49, %45, %33, %23, %18
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @mpt_read_extcfg_header(%struct.mpt_softc*, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mpt_read_extcfg_page(%struct.mpt_softc*, i32, i64, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
