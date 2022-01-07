; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_pd_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_pd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_14__*, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.mrsas_dcmd_frame }
%struct.mrsas_dcmd_frame = type { i32, i32, i32, %struct.TYPE_13__, i32, i64, i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64*, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [34 x i8] c"Cannot alloc for get PD info cmd\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MR_DCMD_PD_GET_INFO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MFI_DCMD_TIMEOUT_OCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrsas_softc*, i64)* @mrsas_get_pd_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_get_pd_info(%struct.mrsas_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mrsas_mfi_cmd*, align 8
  %8 = alloca %struct.mrsas_dcmd_frame*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %10 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %9)
  store %struct.mrsas_mfi_cmd* %10, %struct.mrsas_mfi_cmd** %7, align 8
  %11 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %7, align 8
  %12 = icmp ne %struct.mrsas_mfi_cmd* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %120

18:                                               ; preds = %2
  %19 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store %struct.mrsas_dcmd_frame* %22, %struct.mrsas_dcmd_frame** %8, align 8
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = call i32 @memset(%struct.TYPE_18__* %25, i32 0, i32 4)
  %27 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %28 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %32 = call i32 @memset(%struct.TYPE_18__* %30, i32 0, i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %35 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %33, i64* %38, align 8
  %39 = load i32, i32* @MFI_CMD_DCMD, align 4
  %40 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %41 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %43 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %42, i32 0, i32 0
  store i32 255, i32* %43, align 8
  %44 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %45 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %47 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %48 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %50 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %52 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %54 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %53, i32 0, i32 2
  store i32 4, i32* %54, align 8
  %55 = load i32, i32* @MR_DCMD_PD_GET_INFO, align 4
  %56 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %57 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %62 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store i64 %60, i64* %66, align 8
  %67 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %8, align 8
  %68 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 4, i32* %72, align 8
  %73 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %74 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %18
  %78 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %79 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %7, align 8
  %80 = call i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc* %78, %struct.mrsas_mfi_cmd* %79)
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %18
  %82 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %83 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %7, align 8
  %84 = call i32 @mrsas_issue_polled(%struct.mrsas_softc* %82, %struct.mrsas_mfi_cmd* %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %105

90:                                               ; preds = %85
  %91 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %92 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %91, i32 0, i32 2
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %99, i32 0, i32 3
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  store i32 %98, i32* %104, align 4
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %90, %89
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* @MFI_DCMD_TIMEOUT_OCR, align 4
  %110 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %111 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %105
  %113 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %114 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %7, align 8
  %119 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %118)
  br label %120

120:                                              ; preds = %13, %117, %112
  ret void
}

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_issue_polled(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
