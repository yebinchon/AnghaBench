; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_flush_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i64, i32 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mrsas_dcmd_frame }
%struct.mrsas_dcmd_frame = type { i32, %struct.TYPE_4__, i32, i64, i64, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32* }

@MRSAS_HW_CRITICAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Cannot allocate for flush cache cmd.\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_NONE = common dso_local global i32 0, align 4
@MR_DCMD_CTRL_CACHE_FLUSH = common dso_local global i32 0, align 4
@MR_FLUSH_CTRL_CACHE = common dso_local global i32 0, align 4
@MR_FLUSH_DISK_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrsas_softc*)* @mrsas_flush_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_flush_cache(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca %struct.mrsas_mfi_cmd*, align 8
  %4 = alloca %struct.mrsas_dcmd_frame*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  %5 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MRSAS_HW_CRITICAL_ERROR, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %13 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %12)
  store %struct.mrsas_mfi_cmd* %13, %struct.mrsas_mfi_cmd** %3, align 8
  %14 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %3, align 8
  %15 = icmp ne %struct.mrsas_mfi_cmd* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %18 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %64

21:                                               ; preds = %11
  %22 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.mrsas_dcmd_frame* %25, %struct.mrsas_dcmd_frame** %4, align 8
  %26 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %27 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %31 = call i32 @memset(i32* %29, i32 0, i32 %30)
  %32 = load i32, i32* @MFI_CMD_DCMD, align 4
  %33 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %34 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %36 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %38 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @MFI_FRAME_DIR_NONE, align 4
  %40 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %41 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %43 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %45 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %47 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @MR_DCMD_CTRL_CACHE_FLUSH, align 4
  %49 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %50 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @MR_FLUSH_CTRL_CACHE, align 4
  %52 = load i32, i32* @MR_FLUSH_DISK_CACHE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %4, align 8
  %55 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %53, i32* %58, align 4
  %59 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %60 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %3, align 8
  %61 = call i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc* %59, %struct.mrsas_mfi_cmd* %60)
  %62 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %3, align 8
  %63 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %62)
  br label %64

64:                                               ; preds = %21, %16, %10
  ret void
}

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
