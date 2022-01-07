; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_shutdown_ctlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_shutdown_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i64, i32, i64, i64, i64 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mrsas_dcmd_frame }
%struct.mrsas_dcmd_frame = type { i32, i32, i64, i64, i64, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MRSAS_HW_CRITICAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Cannot allocate for shutdown cmd.\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Preparing to shut down controller.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrsas_softc*, i32)* @mrsas_shutdown_ctlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_shutdown_ctlr(%struct.mrsas_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrsas_mfi_cmd*, align 8
  %6 = alloca %struct.mrsas_dcmd_frame*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MRSAS_HW_CRITICAL_ERROR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %95

13:                                               ; preds = %2
  %14 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %15 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %14)
  store %struct.mrsas_mfi_cmd* %15, %struct.mrsas_mfi_cmd** %5, align 8
  %16 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %17 = icmp ne %struct.mrsas_mfi_cmd* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %95

23:                                               ; preds = %13
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %30 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @mrsas_issue_blocked_abort_cmd(%struct.mrsas_softc* %29, i64 %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %41 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @mrsas_issue_blocked_abort_cmd(%struct.mrsas_softc* %40, i64 %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %47 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %52 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @mrsas_issue_blocked_abort_cmd(%struct.mrsas_softc* %51, i64 %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.mrsas_dcmd_frame* %60, %struct.mrsas_dcmd_frame** %6, align 8
  %61 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %62 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %66 = call i32 @memset(i32 %64, i32 0, i32 %65)
  %67 = load i32, i32* @MFI_CMD_DCMD, align 4
  %68 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %69 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %71 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %73 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @MFI_FRAME_DIR_NONE, align 4
  %75 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %76 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %78 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %80 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %82 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %6, align 8
  %85 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %87 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %91 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %92 = call i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc* %90, %struct.mrsas_mfi_cmd* %91)
  %93 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %94 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %93)
  br label %95

95:                                               ; preds = %56, %18, %12
  ret void
}

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mrsas_issue_blocked_abort_cmd(%struct.mrsas_softc*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
