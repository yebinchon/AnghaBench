; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_send_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_send_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i8*, %struct.cam_path* }
%struct.cam_path = type { i32 }
%struct.TYPE_3__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@AHC_QUEUE_TAGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ahc_send_async: Unexpected async event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_send_async(%struct.ahc_softc* %0, i8 signext %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.ahc_softc*, align 8
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
  store %struct.ahc_softc* %0, %struct.ahc_softc** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %15, align 8
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %19 = load i8, i8* %8, align 1
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @ahc_create_path(%struct.ahc_softc* %18, i8 signext %19, i8* %20, i8* %21, %struct.cam_path** %14)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* @CAM_REQ_CMP, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %104

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %95 [
    i32 128, label %29
    i32 129, label %94
    i32 130, label %94
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
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %44 = load i8, i8* %8, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 65
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %49 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  br label %55

51:                                               ; preds = %29
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %53 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i32 [ %50, %47 ], [ %54, %51 ]
  %57 = load i8, i8* %8, align 1
  %58 = call i32 @ahc_get_tran_settings(%struct.ahc_softc* %43, i32 %56, i8 signext %57, %struct.ccb_trans_settings* %13)
  %59 = bitcast %struct.ccb_trans_settings* %13 to i8*
  store i8* %59, i8** %15, align 8
  %60 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %17, align 8
  %63 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %17, align 8
  %69 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  br label %97

75:                                               ; preds = %55
  %76 = load i8*, i8** %12, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AHC_QUEUE_TAGGED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %17, align 8
  %85 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %90 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %17, align 8
  %91 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %97

94:                                               ; preds = %27, %27
  br label %97

95:                                               ; preds = %27
  %96 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %94, %88, %74
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @xpt_async(i32 %98, %struct.cam_path* %99, i8* %100)
  %102 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %103 = call i32 @xpt_free_path(%struct.cam_path* %102)
  br label %104

104:                                              ; preds = %97, %26
  ret void
}

declare dso_local i32 @ahc_create_path(%struct.ahc_softc*, i8 signext, i8*, i8*, %struct.cam_path**) #1

declare dso_local i32 @ahc_get_tran_settings(%struct.ahc_softc*, i32, i8 signext, %struct.ccb_trans_settings*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i8*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
