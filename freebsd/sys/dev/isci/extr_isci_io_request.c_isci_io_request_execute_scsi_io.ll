; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_io_request_execute_scsi_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_io_request_execute_scsi_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.ISCI_CONTROLLER = type { i32, i32, i32, %struct.ISCI_REMOTE_DEVICE** }
%struct.ISCI_REMOTE_DEVICE = type { i64, i32 }
%struct.ISCI_REQUEST = type { i32 }
%struct.ISCI_IO_REQUEST = type { %struct.TYPE_3__, i64, %union.ccb* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@isci_io_request_construct = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_io_request_execute_scsi_io(%union.ccb* %0, %struct.ISCI_CONTROLLER* %1) #0 {
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.ISCI_CONTROLLER*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ISCI_REQUEST*, align 8
  %7 = alloca %struct.ISCI_IO_REQUEST*, align 8
  %8 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %9 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %3, align 8
  store %struct.ISCI_CONTROLLER* %1, %struct.ISCI_CONTROLLER** %4, align 8
  %10 = load %union.ccb*, %union.ccb** %3, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %4, align 8
  %15 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %14, i32 0, i32 3
  %16 = load %struct.ISCI_REMOTE_DEVICE**, %struct.ISCI_REMOTE_DEVICE*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %16, i64 %17
  %19 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  store %struct.ISCI_REMOTE_DEVICE* %19, %struct.ISCI_REMOTE_DEVICE** %8, align 8
  %20 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %8, align 8
  %21 = icmp eq %struct.ISCI_REMOTE_DEVICE* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %24 = xor i32 %23, -1
  %25 = load %union.ccb*, %union.ccb** %3, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @CAM_STATUS_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load %union.ccb*, %union.ccb** %3, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %38 = load %union.ccb*, %union.ccb** %3, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %union.ccb*, %union.ccb** %3, align 8
  %44 = call i32 @xpt_done(%union.ccb* %43)
  br label %133

45:                                               ; preds = %2
  %46 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %4, align 8
  %47 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @sci_pool_empty(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %53 = xor i32 %52, -1
  %54 = load %union.ccb*, %union.ccb** %3, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @CAM_STATUS_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load %union.ccb*, %union.ccb** %3, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %67 = load %union.ccb*, %union.ccb** %3, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %4, align 8
  %73 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @xpt_freeze_simq(i32 %74, i32 1)
  %76 = load i32, i32* @TRUE, align 4
  %77 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %4, align 8
  %78 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %union.ccb*, %union.ccb** %3, align 8
  %80 = call i32 @xpt_done(%union.ccb* %79)
  br label %133

81:                                               ; preds = %45
  %82 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %8, align 8
  %83 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FALSE, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %4, align 8
  %90 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %6, align 8
  %93 = call i32 @sci_pool_get(i32 %91, %struct.ISCI_REQUEST* %92)
  %94 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %6, align 8
  %95 = bitcast %struct.ISCI_REQUEST* %94 to %struct.ISCI_IO_REQUEST*
  store %struct.ISCI_IO_REQUEST* %95, %struct.ISCI_IO_REQUEST** %7, align 8
  %96 = load %union.ccb*, %union.ccb** %3, align 8
  %97 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %98 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %97, i32 0, i32 2
  store %union.ccb* %96, %union.ccb** %98, align 8
  %99 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %100 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %8, align 8
  %102 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %105 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %108 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %112 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %union.ccb*, %union.ccb** %3, align 8
  %116 = load i32, i32* @isci_io_request_construct, align 4
  %117 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %118 = call i32 @bus_dmamap_load_ccb(i32 %110, i32 %114, %union.ccb* %115, i32 %116, %struct.ISCI_IO_REQUEST* %117, i32 0)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @EINPROGRESS, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %81
  %123 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %4, align 8
  %124 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @xpt_freeze_simq(i32 %125, i32 1)
  %127 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %128 = load %union.ccb*, %union.ccb** %3, align 8
  %129 = bitcast %union.ccb* %128 to %struct.TYPE_4__*
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %22, %51, %122, %81
  ret void
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i64 @sci_pool_empty(i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sci_pool_get(i32, %struct.ISCI_REQUEST*) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.ISCI_IO_REQUEST*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
