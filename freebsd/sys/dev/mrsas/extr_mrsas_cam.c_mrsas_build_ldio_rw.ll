; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_build_ldio_rw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_build_ldio_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i64, i64 }
%struct.mrsas_mpt_cmd = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32 }
%struct.ccb_hdr = type { i32 }

@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Build ldio or fpio error\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Error: sge_count (0x%x) exceedsmax (0x%x) allowed\0A\00", align 1
@FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Data map/load failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_build_ldio_rw(%struct.mrsas_softc* %0, %struct.mrsas_mpt_cmd* %1, %union.ccb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrsas_softc*, align 8
  %6 = alloca %struct.mrsas_mpt_cmd*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca %struct.ccb_hdr*, align 8
  %9 = alloca %struct.ccb_scsiio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %5, align 8
  store %struct.mrsas_mpt_cmd* %1, %struct.mrsas_mpt_cmd** %6, align 8
  store %union.ccb* %2, %union.ccb** %7, align 8
  %12 = load %union.ccb*, %union.ccb** %7, align 8
  %13 = bitcast %union.ccb* %12 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %13, %struct.ccb_hdr** %8, align 8
  %14 = load %union.ccb*, %union.ccb** %7, align 8
  %15 = bitcast %union.ccb* %14 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %15, %struct.ccb_scsiio** %9, align 8
  %16 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  store i32 %22, i32* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %36 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %41 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %42 = load %union.ccb*, %union.ccb** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = call i64 @mrsas_setup_io(%struct.mrsas_softc* %40, %struct.mrsas_mpt_cmd* %41, %union.ccb* %42, i32 %43, %struct.TYPE_9__* %44)
  %46 = load i64, i64* @SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %50 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %3
  %54 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %60 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %61 = load %union.ccb*, %union.ccb** %7, align 8
  %62 = call i64 @mrsas_map_request(%struct.mrsas_softc* %59, %struct.mrsas_mpt_cmd* %60, %union.ccb* %61)
  %63 = load i64, i64* @SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %121

65:                                               ; preds = %53
  %66 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %70 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %75 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %78 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %81 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i32, i32* @FAIL, align 4
  store i32 %84, i32* %4, align 4
  br label %128

85:                                               ; preds = %65
  %86 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %87 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %92 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90, %85
  %96 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %97 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  br label %120

103:                                              ; preds = %90
  %104 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %105 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
  %111 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %112 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %113, 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i64 %115, i64* %119, align 8
  br label %120

120:                                              ; preds = %103, %95
  br label %127

121:                                              ; preds = %53
  %122 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %123 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @FAIL, align 4
  store i32 %126, i32* %4, align 4
  br label %128

127:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %121, %73
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @mrsas_setup_io(%struct.mrsas_softc*, %struct.mrsas_mpt_cmd*, %union.ccb*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @mrsas_map_request(%struct.mrsas_softc*, %struct.mrsas_mpt_cmd*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
