; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_fetch_scsi_capacity.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_fetch_scsi_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.mpt_standalone_disk = type { i32 }
%struct.scsi_read_capacity_data = type { i32 }
%struct.scsi_read_capacity_data_long = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %struct.mpt_standalone_disk*)* @fetch_scsi_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_scsi_capacity(%struct.cam_device* %0, %struct.mpt_standalone_disk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_device*, align 8
  %5 = alloca %struct.mpt_standalone_disk*, align 8
  %6 = alloca %struct.scsi_read_capacity_data, align 4
  %7 = alloca %struct.scsi_read_capacity_data_long, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %4, align 8
  store %struct.mpt_standalone_disk* %1, %struct.mpt_standalone_disk** %5, align 8
  %10 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %11 = call %union.ccb* @cam_getccb(%struct.cam_device* %10)
  store %union.ccb* %11, %union.ccb** %8, align 8
  %12 = load %union.ccb*, %union.ccb** %8, align 8
  %13 = icmp eq %union.ccb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %3, align 4
  br label %112

16:                                               ; preds = %2
  %17 = load %union.ccb*, %union.ccb** %8, align 8
  %18 = bitcast %union.ccb* %17 to i32*
  %19 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32* %18)
  %20 = load %union.ccb*, %union.ccb** %8, align 8
  %21 = bitcast %union.ccb* %20 to i32*
  %22 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %23 = load i32, i32* @SSD_FULL_SIZE, align 4
  %24 = call i32 @scsi_read_capacity(i32* %21, i32 1, i32* null, i32 %22, %struct.scsi_read_capacity_data* %6, i32 %23, i32 5000)
  %25 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %26 = load %union.ccb*, %union.ccb** %8, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %32 = load %union.ccb*, %union.ccb** %8, align 8
  %33 = call i64 @cam_send_ccb(%struct.cam_device* %31, %union.ccb* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %union.ccb*, %union.ccb** %8, align 8
  %38 = call i32 @cam_freeccb(%union.ccb* %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %112

40:                                               ; preds = %16
  %41 = load %union.ccb*, %union.ccb** %8, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CAM_STATUS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @CAM_REQ_CMP, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %union.ccb*, %union.ccb** %8, align 8
  %51 = call i32 @cam_freeccb(%union.ccb* %50)
  %52 = load i32, i32* @EIO, align 4
  store i32 %52, i32* %3, align 4
  br label %112

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @scsi_4btoul(i32 %55)
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @scsi_4btoul(i32 %60)
  %62 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %5, align 8
  %63 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %union.ccb*, %union.ccb** %8, align 8
  %65 = call i32 @cam_freeccb(%union.ccb* %64)
  store i32 0, i32* %3, align 4
  br label %112

66:                                               ; preds = %53
  %67 = load %union.ccb*, %union.ccb** %8, align 8
  %68 = bitcast %union.ccb* %67 to i32*
  %69 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32* %68)
  %70 = load %union.ccb*, %union.ccb** %8, align 8
  %71 = bitcast %union.ccb* %70 to i32*
  %72 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %73 = bitcast %struct.scsi_read_capacity_data_long* %7 to i32*
  %74 = load i32, i32* @SSD_FULL_SIZE, align 4
  %75 = call i32 @scsi_read_capacity_16(i32* %71, i32 1, i32* null, i32 %72, i32 0, i32 0, i32 0, i32* %73, i32 4, i32 %74, i32 5000)
  %76 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %77 = load %union.ccb*, %union.ccb** %8, align 8
  %78 = bitcast %union.ccb* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %83 = load %union.ccb*, %union.ccb** %8, align 8
  %84 = call i64 @cam_send_ccb(%struct.cam_device* %82, %union.ccb* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %66
  %87 = load i32, i32* @errno, align 4
  store i32 %87, i32* %9, align 4
  %88 = load %union.ccb*, %union.ccb** %8, align 8
  %89 = call i32 @cam_freeccb(%union.ccb* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %112

91:                                               ; preds = %66
  %92 = load %union.ccb*, %union.ccb** %8, align 8
  %93 = bitcast %union.ccb* %92 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CAM_STATUS_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @CAM_REQ_CMP, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %union.ccb*, %union.ccb** %8, align 8
  %102 = call i32 @cam_freeccb(%union.ccb* %101)
  %103 = load i32, i32* @EIO, align 4
  store i32 %103, i32* %3, align 4
  br label %112

104:                                              ; preds = %91
  %105 = load %union.ccb*, %union.ccb** %8, align 8
  %106 = call i32 @cam_freeccb(%union.ccb* %105)
  %107 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %7, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @scsi_8btou64(i32 %108)
  %110 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %5, align 8
  %111 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %104, %100, %86, %58, %49, %35, %14
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32*) #1

declare dso_local i32 @scsi_read_capacity(i32*, i32, i32*, i32, %struct.scsi_read_capacity_data*, i32, i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @scsi_read_capacity_16(i32*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
