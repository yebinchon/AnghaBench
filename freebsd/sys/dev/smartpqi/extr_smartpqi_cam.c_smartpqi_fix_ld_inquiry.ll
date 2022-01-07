; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_fix_ld_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_fix_ld_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*** }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.ccb_scsiio = type { i64, %struct.TYPE_9__, i64, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.scsi_inquiry_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SI_EVPD = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@SHORT_INQUIRY_LENGTH = common dso_local global i64 0, align 8
@DISK_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"MSCC\00", align 1
@SID_VENDOR_SIZE = common dso_local global i32 0, align 4
@SID_PRODUCT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@SID_REVISION_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.ccb_scsiio*)* @smartpqi_fix_ld_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smartpqi_fix_ld_inquiry(%struct.TYPE_10__* %0, %struct.ccb_scsiio* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %4, align 8
  store %struct.scsi_inquiry_data* null, %struct.scsi_inquiry_data** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %10 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CAM_CDB_POINTER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %18 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %24 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32* [ %21, %16 ], [ %26, %22 ]
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @INQUIRY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %119

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SI_EVPD, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %119

41:                                               ; preds = %34
  %42 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %43 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CAM_DIR_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CAM_DIR_IN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %119

50:                                               ; preds = %41
  %51 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %52 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SHORT_INQUIRY_LENGTH, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %50
  %57 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %58 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.scsi_inquiry_data*
  store %struct.scsi_inquiry_data* %60, %struct.scsi_inquiry_data** %5, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__***, %struct.TYPE_11__**** %62, align 8
  %64 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %65 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__**, %struct.TYPE_11__*** %63, i64 %67
  %69 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %68, align 8
  %70 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %71 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %69, i64 %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %7, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %56
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = call i32 @pqisrc_is_logical_device(%struct.TYPE_11__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DISK_DEVICE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = call i64 @pqisrc_is_external_raid_device(%struct.TYPE_11__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %82, %78, %56
  br label %121

93:                                               ; preds = %88
  %94 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %95 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SID_VENDOR_SIZE, align 4
  %98 = call i32 @strncpy(i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %100 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @pqisrc_raidlevel_to_string(i32 %104)
  %106 = load i32, i32* @SID_PRODUCT_SIZE, align 4
  %107 = call i32 @strncpy(i32 %101, i8* %105, i32 %106)
  %108 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %109 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %117 = load i32, i32* @SID_REVISION_SIZE, align 4
  %118 = call i32 @strncpy(i32 %110, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %93, %50, %41, %34, %27
  %120 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %92
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_is_logical_device(%struct.TYPE_11__*) #1

declare dso_local i64 @pqisrc_is_external_raid_device(%struct.TYPE_11__*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @pqisrc_raidlevel_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
