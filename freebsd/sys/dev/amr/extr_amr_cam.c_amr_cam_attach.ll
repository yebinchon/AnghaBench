; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, i32, i32, i32**, %struct.cam_devq*, i32 }
%struct.cam_devq = type { i32 }

@AMR_MAX_SCSI_CMDS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@amr_cam_action = common dso_local global i32 0, align 4
@amr_cam_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"amr\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"CAM SIM attach failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CAM XPT bus registration failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@amr_cam_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amr_cam_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_cam_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.amr_softc*, align 8
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.amr_softc* @device_get_softc(i32 %8)
  store %struct.amr_softc* %9, %struct.amr_softc** %4, align 8
  %10 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %11 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %10, i32 0, i32 6
  %12 = call i32 @TAILQ_INIT(i32* %11)
  %13 = load i32, i32* @AMR_MAX_SCSI_CMDS, align 4
  %14 = call %struct.cam_devq* @cam_simq_alloc(i32 %13)
  store %struct.cam_devq* %14, %struct.cam_devq** %5, align 8
  %15 = icmp eq %struct.cam_devq* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %20 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %21 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %20, i32 0, i32 5
  store %struct.cam_devq* %19, %struct.cam_devq** %21, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %84, %18
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %25 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %22
  %29 = load i32, i32* @amr_cam_action, align 4
  %30 = load i32, i32* @amr_cam_poll, align 4
  %31 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %32 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %33 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_get_unit(i32 %34)
  %36 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %37 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %36, i32 0, i32 3
  %38 = load i32, i32* @AMR_MAX_SCSI_CMDS, align 4
  %39 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %40 = call i32* @cam_sim_alloc(i32 %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.amr_softc* %31, i32 %35, i32* %37, i32 1, i32 %38, %struct.cam_devq* %39)
  %41 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %42 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %41, i32 0, i32 4
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* %40, i32** %46, align 8
  %47 = icmp eq i32* %40, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %28
  %49 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %50 = call i32 @cam_simq_free(%struct.cam_devq* %49)
  %51 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %52 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %2, align 4
  br label %91

56:                                               ; preds = %28
  %57 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %58 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %57, i32 0, i32 3
  %59 = call i32 @mtx_lock(i32* %58)
  %60 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %61 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %60, i32 0, i32 4
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %68 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @xpt_bus_register(i32* %66, i32 %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %73 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %72, i32 0, i32 3
  %74 = call i32 @mtx_unlock(i32* %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %56
  %78 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %79 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %2, align 4
  br label %91

83:                                               ; preds = %56
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %22

87:                                               ; preds = %22
  %88 = load i32, i32* @amr_cam_command, align 4
  %89 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %90 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %77, %48, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.amr_softc* @device_get_softc(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.amr_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
