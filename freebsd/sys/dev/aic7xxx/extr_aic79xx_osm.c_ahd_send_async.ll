; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_send_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_send_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i8*, %struct.cam_path* }
%struct.cam_path = type { i32 }
%struct.TYPE_3__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@AHD_QUEUE_TAGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ahd_send_async: Unexpected async event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_send_async(%struct.ahd_softc* %0, i8 signext %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.ahd_softc*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ccb_trans_settings, align 8
  %14 = alloca %struct.cam_path*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ccb_trans_settings_scsi*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %15, align 8
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %19 = load i8, i8* %8, align 1
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @ahd_create_path(%struct.ahd_softc* %18, i8 signext %19, i8* %20, i8* %21, %struct.cam_path** %14)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* @CAM_REQ_CMP, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %94

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %85 [
    i32 128, label %29
    i32 129, label %84
    i32 130, label %84
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %31 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %13, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %13, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %33, %struct.ccb_trans_settings_scsi** %17, align 8
  %34 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %35 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %13, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store %struct.cam_path* %34, %struct.cam_path** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %13, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %13, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %45 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8, i8* %8, align 1
  %48 = call i32 @ahd_get_tran_settings(%struct.ahd_softc* %43, i32 %46, i8 signext %47, %struct.ccb_trans_settings* %13)
  %49 = bitcast %struct.ccb_trans_settings* %13 to i8*
  store i8* %49, i8** %15, align 8
  %50 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %17, align 8
  %53 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %17, align 8
  %59 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %29
  br label %87

65:                                               ; preds = %29
  %66 = load i8*, i8** %12, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AHD_QUEUE_TAGGED, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %17, align 8
  %75 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %65
  %79 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %80 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %17, align 8
  %81 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %87

84:                                               ; preds = %27, %27
  br label %87

85:                                               ; preds = %27
  %86 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %84, %78, %64
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @xpt_async(i32 %88, %struct.cam_path* %89, i8* %90)
  %92 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %93 = call i32 @xpt_free_path(%struct.cam_path* %92)
  br label %94

94:                                               ; preds = %87, %26
  ret void
}

declare dso_local i32 @ahd_create_path(%struct.ahd_softc*, i8 signext, i8*, i8*, %struct.cam_path**) #1

declare dso_local i32 @ahd_get_tran_settings(%struct.ahd_softc*, i32, i8 signext, %struct.ccb_trans_settings*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i8*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
