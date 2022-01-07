; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_build_ldio_nonrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_build_ldio_nonrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i64, i64, i32** }
%struct.mrsas_mpt_cmd = type { i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_14__, i32, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i64, i8* }
%struct.TYPE_13__ = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MRSAS_MPI2_FUNCTION_LD_IO_REQUEST = common dso_local global i32 0, align 4
@MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO = common dso_local global i32 0, align 4
@MRSAS_REQ_DESCRIPT_FLAGS_TYPE_SHIFT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Error: sge_count (0x%x) exceedsmax (0x%x) allowed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Data map/load failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_build_ldio_nonrw(%struct.mrsas_softc* %0, %struct.mrsas_mpt_cmd* %1, %union.ccb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrsas_softc*, align 8
  %6 = alloca %struct.mrsas_mpt_cmd*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca %struct.ccb_hdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %5, align 8
  store %struct.mrsas_mpt_cmd* %1, %struct.mrsas_mpt_cmd** %6, align 8
  store %union.ccb* %2, %union.ccb** %7, align 8
  %15 = load %union.ccb*, %union.ccb** %7, align 8
  %16 = bitcast %union.ccb* %15 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %16, %struct.ccb_hdr** %8, align 8
  %17 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %17, i32 0, i32 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %14, align 8
  %20 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %21 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %24 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %23, i32 0, i32 5
  %25 = load i32**, i32*** %24, align 8
  %26 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %27 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %25, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i8* @MR_TargetIdToLdGet(i8* %33, i32* %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call %struct.TYPE_16__* @MR_LdRaidGet(i8* %36, i32* %37)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %12, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %13, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @MRSAS_MPI2_FUNCTION_LD_IO_REQUEST, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO, align 4
  %55 = load i32, i32* @MRSAS_REQ_DESCRIPT_FLAGS_TYPE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  store i8* %62, i8** %66, align 8
  %67 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %68 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 15
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %76 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %81 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %82 = load %union.ccb*, %union.ccb** %7, align 8
  %83 = call i64 @mrsas_map_request(%struct.mrsas_softc* %80, %struct.mrsas_mpt_cmd* %81, %union.ccb* %82)
  %84 = load i64, i64* @SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %141

86:                                               ; preds = %3
  %87 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %88 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %91 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %96 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %99 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %102 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %103)
  store i32 1, i32* %4, align 4
  br label %147

105:                                              ; preds = %86
  %106 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %107 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %112 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110, %105
  %116 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %117 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  br label %140

123:                                              ; preds = %110
  %124 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %125 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i32 %126, i32* %130, align 8
  %131 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %132 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = ashr i32 %133, 8
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  store i64 %135, i64* %139, align 8
  br label %140

140:                                              ; preds = %123, %115
  br label %146

141:                                              ; preds = %3
  %142 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %143 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, ...) @device_printf(i32 %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %147

146:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %141, %94
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i8* @MR_TargetIdToLdGet(i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @MR_LdRaidGet(i8*, i32*) #1

declare dso_local i64 @mrsas_map_request(%struct.mrsas_softc*, %struct.mrsas_mpt_cmd*, %union.ccb*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
