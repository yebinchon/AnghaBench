; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_fetch_scsi_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_fetch_scsi_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.mpt_standalone_disk = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SHORT_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %struct.mpt_standalone_disk*)* @fetch_scsi_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_scsi_inquiry(%struct.cam_device* %0, %struct.mpt_standalone_disk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_device*, align 8
  %5 = alloca %struct.mpt_standalone_disk*, align 8
  %6 = alloca %struct.scsi_inquiry_data*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %4, align 8
  store %struct.mpt_standalone_disk* %1, %struct.mpt_standalone_disk** %5, align 8
  %9 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %10 = call %union.ccb* @cam_getccb(%struct.cam_device* %9)
  store %union.ccb* %10, %union.ccb** %7, align 8
  %11 = load %union.ccb*, %union.ccb** %7, align 8
  %12 = icmp eq %union.ccb* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %union.ccb*, %union.ccb** %7, align 8
  %17 = bitcast %union.ccb* %16 to i32*
  %18 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32* %17)
  %19 = call %struct.scsi_inquiry_data* @calloc(i32 1, i32 4)
  store %struct.scsi_inquiry_data* %19, %struct.scsi_inquiry_data** %6, align 8
  %20 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %21 = icmp eq %struct.scsi_inquiry_data* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %union.ccb*, %union.ccb** %7, align 8
  %24 = call i32 @cam_freeccb(%union.ccb* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %15
  %27 = load %union.ccb*, %union.ccb** %7, align 8
  %28 = bitcast %union.ccb* %27 to i32*
  %29 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %30 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %31 = bitcast %struct.scsi_inquiry_data* %30 to i8*
  %32 = load i32, i32* @SHORT_INQUIRY_LENGTH, align 4
  %33 = load i32, i32* @SSD_FULL_SIZE, align 4
  %34 = call i32 @scsi_inquiry(i32* %28, i32 1, i32* null, i32 %29, i8* %31, i32 %32, i32 0, i32 0, i32 %33, i32 5000)
  %35 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %36 = load %union.ccb*, %union.ccb** %7, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %42 = load %union.ccb*, %union.ccb** %7, align 8
  %43 = call i64 @cam_send_ccb(%struct.cam_device* %41, %union.ccb* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %26
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %48 = call i32 @free(%struct.scsi_inquiry_data* %47)
  %49 = load %union.ccb*, %union.ccb** %7, align 8
  %50 = call i32 @cam_freeccb(%union.ccb* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %75

52:                                               ; preds = %26
  %53 = load %union.ccb*, %union.ccb** %7, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CAM_STATUS_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @CAM_REQ_CMP, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %63 = call i32 @free(%struct.scsi_inquiry_data* %62)
  %64 = load %union.ccb*, %union.ccb** %7, align 8
  %65 = call i32 @cam_freeccb(%union.ccb* %64)
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %52
  %68 = load %union.ccb*, %union.ccb** %7, align 8
  %69 = call i32 @cam_freeccb(%union.ccb* %68)
  %70 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %5, align 8
  %71 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %72 = call i32 @format_scsi_inquiry(%struct.mpt_standalone_disk* %70, %struct.scsi_inquiry_data* %71)
  %73 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %74 = call i32 @free(%struct.scsi_inquiry_data* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %61, %45, %22, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32*) #1

declare dso_local %struct.scsi_inquiry_data* @calloc(i32, i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @scsi_inquiry(i32*, i32, i32*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @free(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @format_scsi_inquiry(%struct.mpt_standalone_disk*, %struct.scsi_inquiry_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
