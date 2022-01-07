; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_seq_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_seq_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i32 }
%struct.mrsas_evt_log_info = type { i32 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mrsas_dcmd_frame }
%struct.mrsas_dcmd_frame = type { i32, i32, i32, %struct.TYPE_8__, i32, i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to get a free cmd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot allocate evt log info cmd\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MR_DCMD_CTRL_EVENT_GET_INFO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@MFI_DCMD_TIMEOUT_OCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*, %struct.mrsas_evt_log_info*)* @mrsas_get_seq_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_get_seq_num(%struct.mrsas_softc* %0, %struct.mrsas_evt_log_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.mrsas_evt_log_info*, align 8
  %6 = alloca %struct.mrsas_mfi_cmd*, align 8
  %7 = alloca %struct.mrsas_dcmd_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.mrsas_evt_log_info* %1, %struct.mrsas_evt_log_info** %5, align 8
  store i64 1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %11 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %10)
  store %struct.mrsas_mfi_cmd* %11, %struct.mrsas_mfi_cmd** %6, align 8
  %12 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %13 = icmp ne %struct.mrsas_mfi_cmd* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %2
  %22 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.mrsas_dcmd_frame* %25, %struct.mrsas_dcmd_frame** %7, align 8
  %26 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %27 = call i64 @mrsas_alloc_evt_log_info_cmd(%struct.mrsas_softc* %26)
  %28 = load i64, i64* @SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %36 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %108

39:                                               ; preds = %21
  %40 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %41 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %45 = call i32 @memset(i32 %43, i32 0, i32 %44)
  %46 = load i32, i32* @MFI_CMD_DCMD, align 4
  %47 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %48 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %50 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %52 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %54 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %55 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %57 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %59 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %61 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %60, i32 0, i32 2
  store i32 4, i32* %61, align 8
  %62 = load i32, i32* @MR_DCMD_CTRL_EVENT_GET_INFO, align 4
  %63 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %64 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %66 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %69 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 %67, i32* %73, align 4
  %74 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %75 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 4, i32* %79, align 4
  %80 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %81 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %82 = call i64 @mrsas_issue_blocked_cmd(%struct.mrsas_softc* %80, %struct.mrsas_mfi_cmd* %81)
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @ETIMEDOUT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %39
  br label %95

87:                                               ; preds = %39
  store i64 0, i64* %8, align 8
  %88 = load %struct.mrsas_evt_log_info*, %struct.mrsas_evt_log_info** %5, align 8
  %89 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %90 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(%struct.mrsas_evt_log_info* %88, i32 %91, i32 4)
  %93 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %94 = call i32 @mrsas_free_evt_log_info_cmd(%struct.mrsas_softc* %93)
  br label %95

95:                                               ; preds = %87, %86
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @MFI_DCMD_TIMEOUT_OCR, align 4
  %100 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %101 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %105

102:                                              ; preds = %95
  %103 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %104 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %103)
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i64, i64* %9, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %30, %14
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @mrsas_alloc_evt_log_info_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @mrsas_issue_blocked_cmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @memcpy(%struct.mrsas_evt_log_info*, i32, i32) #1

declare dso_local i32 @mrsas_free_evt_log_info_cmd(%struct.mrsas_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
