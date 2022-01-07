; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_complete_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_complete_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { %struct.ciss_ldrive**, %struct.TYPE_8__* }
%struct.ciss_ldrive = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ccb_scsiio = type { i64, %struct.TYPE_7__, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.scsi_inquiry_data = type { i32, i32, i32, i32 }

@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SI_EVPD = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@SHORT_INQUIRY_LENGTH = common dso_local global i64 0, align 8
@PWR_UP_FLAG_JBOD_ENABLED = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i64 0, align 8
@T_NODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@SID_VENDOR_SIZE = common dso_local global i32 0, align 4
@SID_PRODUCT_SIZE = common dso_local global i32 0, align 4
@SID_REVISION_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*, %struct.ccb_scsiio*)* @ciss_cam_complete_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_cam_complete_fixup(%struct.ciss_softc* %0, %struct.ccb_scsiio* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca %struct.ciss_ldrive*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %4, align 8
  %10 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %11 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CAM_CDB_POINTER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %19 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %25 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i32* [ %22, %17 ], [ %27, %23 ]
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INQUIRY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %138

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SI_EVPD, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %138

42:                                               ; preds = %35
  %43 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %44 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CAM_DIR_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @CAM_DIR_IN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %138

51:                                               ; preds = %42
  %52 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %53 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SHORT_INQUIRY_LENGTH, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %138

57:                                               ; preds = %51
  %58 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %59 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.scsi_inquiry_data*
  store %struct.scsi_inquiry_data* %61, %struct.scsi_inquiry_data** %5, align 8
  %62 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %63 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %67 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @xpt_path_sim(i32 %69)
  %71 = call i32 @cam_sim_bus(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PWR_UP_FLAG_JBOD_ENABLED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %137, label %80

80:                                               ; preds = %57
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @CISS_IS_PHYSICAL(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %86 = call i64 @SID_TYPE(%struct.scsi_inquiry_data* %85)
  %87 = load i64, i64* @T_DIRECT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %91 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 224
  %94 = load i32, i32* @T_NODEVICE, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %97 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %84
  br label %138

99:                                               ; preds = %80
  %100 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %101 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %100, i32 0, i32 0
  %102 = load %struct.ciss_ldrive**, %struct.ciss_ldrive*** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ciss_ldrive*, %struct.ciss_ldrive** %102, i64 %104
  %106 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %106, i64 %108
  store %struct.ciss_ldrive* %109, %struct.ciss_ldrive** %6, align 8
  %110 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %111 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SID_VENDOR_SIZE, align 4
  %114 = call i32 @padstr(i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %116 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %6, align 8
  %119 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @ciss_name_ldrive_org(i32 %122)
  %124 = load i32, i32* @SID_PRODUCT_SIZE, align 4
  %125 = call i32 @padstr(i32 %117, i8* %123, i32 %124)
  %126 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %127 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %6, align 8
  %130 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @ciss_name_ldrive_status(i32 %133)
  %135 = load i32, i32* @SID_REVISION_SIZE, align 4
  %136 = call i32 @padstr(i32 %128, i8* %134, i32 %135)
  br label %137

137:                                              ; preds = %99, %57
  br label %138

138:                                              ; preds = %98, %137, %51, %42, %35, %28
  ret void
}

declare dso_local i32 @cam_sim_bus(i32) #1

declare dso_local i32 @xpt_path_sim(i32) #1

declare dso_local i64 @CISS_IS_PHYSICAL(i32) #1

declare dso_local i64 @SID_TYPE(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @padstr(i32, i8*, i32) #1

declare dso_local i8* @ciss_name_ldrive_org(i32) #1

declare dso_local i8* @ciss_name_ldrive_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
