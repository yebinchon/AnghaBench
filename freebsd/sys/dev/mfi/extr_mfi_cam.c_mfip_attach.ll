; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfip_softc = type { i32*, i32*, %struct.mfi_softc*, i32, i32 }
%struct.mfi_softc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MFIP_STATE_NONE = common dso_local global i32 0, align 4
@mfip_start = common dso_local global i32 0, align 4
@MFI_SCSI_MAX_CMDS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mfip_cam_action = common dso_local global i32 0, align 4
@mfip_cam_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mfi\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"CAM SIM attach failed\0A\00", align 1
@mfip_cam_rescan = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"XPT bus registration failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mfip_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfip_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfip_softc*, align 8
  %5 = alloca %struct.mfi_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.mfip_softc*
  store %struct.mfip_softc* %8, %struct.mfip_softc** %4, align 8
  %9 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %10 = icmp eq %struct.mfip_softc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %103

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.mfi_softc*
  store %struct.mfi_softc* %17, %struct.mfi_softc** %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MFIP_STATE_NONE, align 4
  %22 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %23 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %25 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %25, i32 0, i32 2
  store %struct.mfi_softc* %24, %struct.mfi_softc** %26, align 8
  %27 = load i32, i32* @mfip_start, align 4
  %28 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %29 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @MFI_SCSI_MAX_CMDS, align 4
  %31 = call i32* @cam_simq_alloc(i32 %30)
  %32 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = icmp eq i32* %31, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %13
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %103

37:                                               ; preds = %13
  %38 = load i32, i32* @mfip_cam_action, align 4
  %39 = load i32, i32* @mfip_cam_poll, align 4
  %40 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_get_unit(i32 %41)
  %43 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %44 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %43, i32 0, i32 0
  %45 = load i32, i32* @MFI_SCSI_MAX_CMDS, align 4
  %46 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %47 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @cam_sim_alloc(i32 %38, i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.mfip_softc* %40, i32 %42, i32* %44, i32 1, i32 %45, i32* %48)
  %50 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %37
  %57 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @cam_simq_free(i32* %59)
  %61 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %2, align 4
  br label %103

66:                                               ; preds = %37
  %67 = load i32, i32* @mfip_cam_rescan, align 4
  %68 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %69 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %71 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_lock(i32* %71)
  %73 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %74 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i64 @xpt_bus_register(i32* %75, i32 %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %66
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %83 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = call i32 @cam_sim_free(i32* %84, i32 %85)
  %87 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %88 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %90 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @cam_simq_free(i32* %91)
  %93 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %94 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %96 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %95, i32 0, i32 0
  %97 = call i32 @mtx_unlock(i32* %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %2, align 4
  br label %103

99:                                               ; preds = %66
  %100 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %101 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %100, i32 0, i32 0
  %102 = call i32 @mtx_unlock(i32* %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %79, %56, %35, %11
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.mfip_softc*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
