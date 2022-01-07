; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_data_load_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_data_load_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mpt_cmd = type { i32, i32, i64, i32, %struct.TYPE_6__*, i32, %struct.mrsas_softc*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.mrsas_softc = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"mrsas_data_load_cb_prp: error=%d\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@MRSAS_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@MRSAS_DIR_OUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SGE count is too large or 0.\0A\00", align 1
@MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH = common dso_local global i32 0, align 4
@NVME_PD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @mrsas_data_load_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_data_load_cb(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mrsas_mpt_cmd*, align 8
  %10 = alloca %struct.mrsas_softc*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mrsas_mpt_cmd*
  store %struct.mrsas_mpt_cmd* %13, %struct.mrsas_mpt_cmd** %9, align 8
  %14 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %15 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %14, i32 0, i32 6
  %16 = load %struct.mrsas_softc*, %struct.mrsas_softc** %15, align 8
  store %struct.mrsas_softc* %16, %struct.mrsas_softc** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %22 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %10, align 8
  %24 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EFBIG, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %33 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %34 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %33, i32 0, i32 7
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  br label %123

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %41 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MRSAS_DIR_IN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %48 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %47, i32 0, i32 6
  %49 = load %struct.mrsas_softc*, %struct.mrsas_softc** %48, align 8
  %50 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %53 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %56 = call i32 @bus_dmamap_sync(i32 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %39
  %58 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %59 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MRSAS_DIR_OUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %66 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %65, i32 0, i32 6
  %67 = load %struct.mrsas_softc*, %struct.mrsas_softc** %66, align 8
  %68 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %71 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %74 = call i32 @bus_dmamap_sync(i32 %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %57
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.mrsas_softc*, %struct.mrsas_softc** %10, align 8
  %78 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.mrsas_softc*, %struct.mrsas_softc** %10, align 8
  %83 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %123

86:                                               ; preds = %75
  %87 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %88 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %87, i32 0, i32 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %97 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NVME_PD, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @mrsas_is_prp_possible(%struct.mrsas_mpt_cmd* %102, i32* %103, i32 %104)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %101, %95, %86
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @mrsas_build_prp_nvme(%struct.mrsas_mpt_cmd* %110, i32* %111, i32 %112)
  br label %119

114:                                              ; preds = %106
  %115 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @mrsas_build_ieee_sgl(%struct.mrsas_mpt_cmd* %115, i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %122 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %81, %31
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @mrsas_is_prp_possible(%struct.mrsas_mpt_cmd*, i32*, i32) #1

declare dso_local i32 @mrsas_build_prp_nvme(%struct.mrsas_mpt_cmd*, i32*, i32) #1

declare dso_local i32 @mrsas_build_ieee_sgl(%struct.mrsas_mpt_cmd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
