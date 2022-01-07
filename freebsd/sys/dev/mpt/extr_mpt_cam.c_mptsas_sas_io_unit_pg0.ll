; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mptsas_sas_io_unit_pg0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mptsas_sas_io_unit_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mptsas_portinfo = type { i32, %struct.mptsas_phyinfo* }
%struct.mptsas_phyinfo = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@MPI_SASIOUNITPAGE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mptsas_portinfo*)* @mptsas_sas_io_unit_pg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_io_unit_pg0(%struct.mpt_softc* %0, %struct.mptsas_portinfo* %1) #0 {
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.mptsas_portinfo*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.mptsas_phyinfo*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store %struct.mptsas_portinfo* %1, %struct.mptsas_portinfo** %4, align 8
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %12 = load i32, i32* @MPI_SASIOUNITPAGE0_PAGEVERSION, align 4
  %13 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT, align 4
  %14 = call i32 @mpt_read_extcfg_header(%struct.mpt_softc* %11, i32 %12, i32 0, i32 0, i32 %13, %struct.TYPE_10__* %5, i32 0, i32 10000)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %135

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %8, align 4
  br label %135

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @malloc(i32 %28, i32 %29, i32 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %7, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = icmp eq %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %8, align 4
  br label %135

39:                                               ; preds = %24
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %41 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mpt_read_extcfg_page(%struct.mpt_softc* %40, i32 %41, i32 0, %struct.TYPE_10__* %5, %struct.TYPE_9__* %42, i32 %43, i32 0, i32 10000)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = load i32, i32* @M_DEVBUF, align 4
  %50 = call i32 @free(%struct.TYPE_9__* %48, i32 %49)
  br label %135

51:                                               ; preds = %39
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %56 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %58 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul i64 16, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = load i32, i32* @M_NOWAIT, align 4
  %65 = load i32, i32* @M_ZERO, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @malloc(i32 %62, i32 %63, i32 %66)
  %68 = bitcast i8* %67 to %struct.mptsas_phyinfo*
  %69 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %70 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %69, i32 0, i32 1
  store %struct.mptsas_phyinfo* %68, %struct.mptsas_phyinfo** %70, align 8
  %71 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %72 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %71, i32 0, i32 1
  %73 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %72, align 8
  %74 = icmp eq %struct.mptsas_phyinfo* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %51
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = load i32, i32* @M_DEVBUF, align 4
  %78 = call i32 @free(%struct.TYPE_9__* %76, i32 %77)
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %8, align 4
  br label %135

80:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %128, %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %84 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %81
  %88 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %89 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %88, i32 0, i32 1
  %90 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %90, i64 %92
  store %struct.mptsas_phyinfo* %93, %struct.mptsas_phyinfo** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %96 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %106 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %116 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le16toh(i32 %124)
  %126 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %127 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %87
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %81

131:                                              ; preds = %81
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = load i32, i32* @M_DEVBUF, align 4
  %134 = call i32 @free(%struct.TYPE_9__* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %75, %47, %37, %22, %17
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i32 @mpt_read_extcfg_header(%struct.mpt_softc*, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @mpt_read_extcfg_page(%struct.mpt_softc*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
