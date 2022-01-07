; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_remote_device.c_isci_remote_device_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_remote_device.c_isci_remote_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_REMOTE_DEVICE = type { i64, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.ISCI_CONTROLLER* }
%struct.ISCI_CONTROLLER = type { i32, i32, i32, i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ISCI_REQUEST = type { i32 }
%struct.ISCI_TASK_REQUEST = type { i32, %union.ccb*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Sending reset to device on controller %d domain %d CAM index %d\0A\00", align 1
@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ISCI_CONTROLLER*, align 8
  %6 = alloca %struct.ISCI_REQUEST*, align 8
  %7 = alloca %struct.ISCI_TASK_REQUEST*, align 8
  %8 = alloca i64, align 8
  store %struct.ISCI_REMOTE_DEVICE* %0, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %10 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %12, align 8
  store %struct.ISCI_CONTROLLER* %13, %struct.ISCI_CONTROLLER** %5, align 8
  %14 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %15 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TRUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %143

20:                                               ; preds = %2
  %21 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %22 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @sci_pool_empty(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = icmp eq %union.ccb* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %31 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %30, i32 0, i32 3
  %32 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %33 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %32, i32 0, i32 4
  %34 = call i32 @sci_fast_list_insert_tail(i32* %31, i32* %33)
  br label %51

35:                                               ; preds = %26
  %36 = load i32, i32* @CAM_STATUS_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %44 = load %union.ccb*, %union.ccb** %4, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %union.ccb*, %union.ccb** %4, align 8
  %50 = call i32 @xpt_done(%union.ccb* %49)
  br label %51

51:                                               ; preds = %35, %29
  br label %143

52:                                               ; preds = %20
  %53 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %54 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %57 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %62 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %60, i32 %63)
  %65 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %66 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %6, align 8
  %69 = call i32 @sci_pool_get(i32 %67, %struct.ISCI_REQUEST* %68)
  %70 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %6, align 8
  %71 = bitcast %struct.ISCI_REQUEST* %70 to %struct.ISCI_TASK_REQUEST*
  store %struct.ISCI_TASK_REQUEST* %71, %struct.ISCI_TASK_REQUEST** %7, align 8
  %72 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %73 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %7, align 8
  %76 = getelementptr inbounds %struct.ISCI_TASK_REQUEST, %struct.ISCI_TASK_REQUEST* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %union.ccb*, %union.ccb** %4, align 8
  %79 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %7, align 8
  %80 = getelementptr inbounds %struct.ISCI_TASK_REQUEST, %struct.ISCI_TASK_REQUEST* %79, i32 0, i32 1
  store %union.ccb* %78, %union.ccb** %80, align 8
  %81 = load i64, i64* @TRUE, align 8
  %82 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %83 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %85 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %88 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %91 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %7, align 8
  %92 = bitcast %struct.ISCI_TASK_REQUEST* %91 to i8*
  %93 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %7, align 8
  %94 = bitcast %struct.ISCI_TASK_REQUEST* %93 to i8*
  %95 = getelementptr inbounds i8, i8* %94, i64 24
  %96 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %7, align 8
  %97 = getelementptr inbounds %struct.ISCI_TASK_REQUEST, %struct.ISCI_TASK_REQUEST* %96, i32 0, i32 0
  %98 = call i64 @scif_task_request_construct(i32 %86, i32 %89, i32 %90, i8* %92, i8* %95, i32* %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @SCI_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %52
  %103 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %104 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %107 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %7, align 8
  %110 = getelementptr inbounds %struct.ISCI_TASK_REQUEST, %struct.ISCI_TASK_REQUEST* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @isci_task_request_complete(i32 %105, i32 %108, i32 %111, i32 %113)
  br label %143

115:                                              ; preds = %52
  %116 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %117 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %120 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %7, align 8
  %123 = getelementptr inbounds %struct.ISCI_TASK_REQUEST, %struct.ISCI_TASK_REQUEST* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %126 = call i64 @scif_controller_start_task(i32 %118, i32 %121, i32 %124, i32 %125)
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* @SCI_SUCCESS, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %115
  %131 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %132 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %135 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %7, align 8
  %138 = getelementptr inbounds %struct.ISCI_TASK_REQUEST, %struct.ISCI_TASK_REQUEST* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @isci_task_request_complete(i32 %133, i32 %136, i32 %139, i32 %141)
  br label %143

143:                                              ; preds = %19, %51, %102, %130, %115
  ret void
}

declare dso_local i64 @sci_pool_empty(i32) #1

declare dso_local i32 @sci_fast_list_insert_tail(i32*, i32*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @sci_pool_get(i32, %struct.ISCI_REQUEST*) #1

declare dso_local i64 @scif_task_request_construct(i32, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @isci_task_request_complete(i32, i32, i32, i32) #1

declare dso_local i64 @scif_controller_start_task(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
