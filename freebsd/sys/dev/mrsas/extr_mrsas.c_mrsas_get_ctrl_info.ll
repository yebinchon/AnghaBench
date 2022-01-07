; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_ctrl_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_ctrl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, %struct.TYPE_18__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.mrsas_dcmd_frame }
%struct.mrsas_dcmd_frame = type { i32, i32, i32, %struct.TYPE_13__, i32, i64, i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to get a free cmd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot allocate get ctlr info cmd\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MR_DCMD_CTRL_GET_INFO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MFI_DCMD_TIMEOUT_OCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*)* @mrsas_get_ctrl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_get_ctrl_info(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mrsas_mfi_cmd*, align 8
  %7 = alloca %struct.mrsas_dcmd_frame*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %9 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %8)
  store %struct.mrsas_mfi_cmd* %9, %struct.mrsas_mfi_cmd** %6, align 8
  %10 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %11 = icmp ne %struct.mrsas_mfi_cmd* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store %struct.mrsas_dcmd_frame* %23, %struct.mrsas_dcmd_frame** %7, align 8
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %25 = call i64 @mrsas_alloc_ctlr_info_cmd(%struct.mrsas_softc* %24)
  %26 = load i64, i64* @SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %34 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %150

37:                                               ; preds = %19
  %38 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %39 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %43 = call i32 @memset(i32 %41, i32 0, i32 %42)
  %44 = load i32, i32* @MFI_CMD_DCMD, align 4
  %45 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %46 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %48 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %47, i32 0, i32 0
  store i32 255, i32* %48, align 8
  %49 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %50 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %52 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %53 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %55 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %57 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %59 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %58, i32 0, i32 2
  store i32 4, i32* %59, align 8
  %60 = load i32, i32* @MR_DCMD_CTRL_GET_INFO, align 4
  %61 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %62 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %67 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i32 %65, i32* %71, align 4
  %72 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %7, align 8
  %73 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 4, i32* %77, align 4
  %78 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %37
  %83 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %84 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %85 = call i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc* %83, %struct.mrsas_mfi_cmd* %84)
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %37
  %87 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %88 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %89 = call i32 @mrsas_issue_polled(%struct.mrsas_softc* %87, %struct.mrsas_mfi_cmd* %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %131

95:                                               ; preds = %90
  %96 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %97 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %96, i32 0, i32 2
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(%struct.TYPE_18__* %98, i32 %101, i32 4)
  br label %103

103:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  %104 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %105 = call i32 @mrsas_update_ext_vd_details(%struct.mrsas_softc* %104)
  %106 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %107 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %106, i32 0, i32 2
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %113 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %115 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %114, i32 0, i32 2
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %121 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %123 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %122, i32 0, i32 2
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %130 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %103, %94
  %132 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %133 = call i32 @mrsas_free_ctlr_info_cmd(%struct.mrsas_softc* %132)
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* @MFI_DCMD_TIMEOUT_OCR, align 4
  %138 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %139 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %136, %131
  %141 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %142 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %147 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %28, %12
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @mrsas_alloc_ctlr_info_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_issue_polled(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @mrsas_update_ext_vd_details(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_free_ctlr_info_cmd(%struct.mrsas_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
