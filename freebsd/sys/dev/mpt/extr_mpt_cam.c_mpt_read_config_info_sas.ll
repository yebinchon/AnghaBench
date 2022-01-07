; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_read_config_info_sas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_read_config_info_sas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.mptsas_portinfo* }
%struct.mptsas_portinfo = type { i32, %struct.mptsas_phyinfo* }
%struct.mptsas_phyinfo = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER = common dso_local global i32 0, align 4
@MPI_SAS_PHY_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_read_config_info_sas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_read_config_info_sas(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.mptsas_portinfo*, align 8
  %5 = alloca %struct.mptsas_phyinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %8 = load i32, i32* @M_DEVBUF, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.mptsas_portinfo* @malloc(i32 16, i32 %8, i32 %11)
  store %struct.mptsas_portinfo* %12, %struct.mptsas_portinfo** %4, align 8
  %13 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %14 = icmp eq %struct.mptsas_portinfo* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %19 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %20 = call i32 @mptsas_sas_io_unit_pg0(%struct.mpt_softc* %18, %struct.mptsas_portinfo* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = call i32 @free(%struct.mptsas_portinfo* %24, i32 %25)
  store i32 0, i32* %2, align 4
  br label %101

27:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %94, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %31 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %28
  %35 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %36 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %35, i32 0, i32 1
  %37 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %37, i64 %39
  store %struct.mptsas_phyinfo* %40, %struct.mptsas_phyinfo** %5, align 8
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %42 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %43 = load i32, i32* @MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER, align 4
  %44 = load i32, i32* @MPI_SAS_PHY_PGAD_FORM_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mptsas_sas_phy_pg0(%struct.mpt_softc* %41, %struct.mptsas_phyinfo* %42, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %97

51:                                               ; preds = %34
  %52 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %53 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %54 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %53, i32 0, i32 2
  %55 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_HANDLE, align 4
  %56 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %59 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @mptsas_sas_device_pg0(%struct.mpt_softc* %52, %struct.TYPE_2__* %54, i32 %57, i64 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %97

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %68 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %70 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  %72 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %73 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %65
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %79 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %80 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %79, i32 0, i32 1
  %81 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_HANDLE, align 4
  %82 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %85 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @mptsas_sas_device_pg0(%struct.mpt_softc* %78, %struct.TYPE_2__* %80, i32 %83, i64 %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %77, %65
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %97

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %28

97:                                               ; preds = %92, %64, %50, %28
  %98 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %99 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %99, i32 0, i32 0
  store %struct.mptsas_portinfo* %98, %struct.mptsas_portinfo** %100, align 8
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %23, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.mptsas_portinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @mptsas_sas_io_unit_pg0(%struct.mpt_softc*, %struct.mptsas_portinfo*) #1

declare dso_local i32 @free(%struct.mptsas_portinfo*, i32) #1

declare dso_local i32 @mptsas_sas_phy_pg0(%struct.mpt_softc*, %struct.mptsas_phyinfo*, i32, i32) #1

declare dso_local i32 @mptsas_sas_device_pg0(%struct.mpt_softc*, %struct.TYPE_2__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
