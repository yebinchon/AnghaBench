; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_register_cam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_register_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32*, i32 }

@CAM_SUCCESS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot register XPT bus\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot create bus path\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot register async callback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*)* @vtscsi_register_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_register_cam(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  %7 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %11 = call i32 @VTSCSI_LOCK(%struct.vtscsi_softc* %10)
  %12 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @xpt_bus_register(i32 %14, i32 %15, i32 0)
  %17 = load i64, i64* @CAM_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %51

23:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %24 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %24, i32 0, i32 1
  %26 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cam_sim_path(i32 %28)
  %30 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %31 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %32 = call i64 @xpt_create_path(i32** %25, i32* null, i32 %29, i32 %30, i32 %31)
  %33 = load i64, i64* @CAM_REQ_CMP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %51

39:                                               ; preds = %23
  %40 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %41 = call i64 @vtscsi_register_async(%struct.vtscsi_softc* %40)
  %42 = load i64, i64* @CAM_REQ_CMP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @EIO, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %51

48:                                               ; preds = %39
  %49 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %50 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %49)
  store i32 0, i32* %2, align 4
  br label %76

51:                                               ; preds = %44, %35, %19
  %52 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %53 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %58 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @xpt_free_path(i32* %59)
  %61 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %62 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %68 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cam_sim_path(i32 %69)
  %71 = call i32 @xpt_bus_deregister(i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %74 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %48
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @VTSCSI_LOCK(%struct.vtscsi_softc*) #1

declare dso_local i64 @xpt_bus_register(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @xpt_create_path(i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i64 @vtscsi_register_async(%struct.vtscsi_softc*) #1

declare dso_local i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc*) #1

declare dso_local i32 @xpt_free_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
