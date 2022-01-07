; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_task_request.c_isci_task_request_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_task_request.c_isci_task_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_TASK_REQUEST = type { %union.ccb* }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ISCI_CONTROLLER = type { i64, i32, i32, i32, i32 }
%struct.ISCI_REMOTE_DEVICE = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ISCI_REQUEST = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"task failure (invalid state) - retrying\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"task failure (insufficient resources) - retrying\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"task timeout - not retrying\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"task timeout - retrying\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"unhandled task completion code 0x%x\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_task_request_complete(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ISCI_TASK_REQUEST*, align 8
  %10 = alloca %struct.ISCI_CONTROLLER*, align 8
  %11 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %12 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.ccb*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @sci_object_get_association(i32 %15)
  %17 = inttoptr i64 %16 to %struct.ISCI_TASK_REQUEST*
  store %struct.ISCI_TASK_REQUEST* %17, %struct.ISCI_TASK_REQUEST** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @sci_object_get_association(i32 %18)
  %20 = inttoptr i64 %19 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %20, %struct.ISCI_CONTROLLER** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @sci_object_get_association(i32 %21)
  %23 = inttoptr i64 %22 to %struct.ISCI_REMOTE_DEVICE*
  store %struct.ISCI_REMOTE_DEVICE* %23, %struct.ISCI_REMOTE_DEVICE** %11, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %13, align 8
  %25 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %9, align 8
  %26 = getelementptr inbounds %struct.ISCI_TASK_REQUEST, %struct.ISCI_TASK_REQUEST* %25, i32 0, i32 0
  %27 = load %union.ccb*, %union.ccb** %26, align 8
  store %union.ccb* %27, %union.ccb** %14, align 8
  %28 = load i64, i64* @FALSE, align 8
  %29 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %11, align 8
  %30 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  switch i32 %32, label %63 [
    i32 128, label %33
    i32 131, label %33
    i32 133, label %34
    i32 135, label %37
    i32 138, label %40
    i32 137, label %60
    i32 129, label %60
    i32 132, label %60
    i32 136, label %60
    i32 130, label %60
    i32 134, label %60
  ]

33:                                               ; preds = %4, %4
  br label %66

34:                                               ; preds = %4
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %13, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %66

37:                                               ; preds = %4
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %13, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %66

40:                                               ; preds = %4
  %41 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %10, align 8
  %42 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %13, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %11, align 8
  %50 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @scif_cb_domain_device_removed(i32 %48, i32 %53, i32 %54)
  br label %59

56:                                               ; preds = %40
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %13, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %45
  br label %66

60:                                               ; preds = %4, %4, %4, %4, %4, %4
  %61 = load i64, i64* %8, align 8
  %62 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %61)
  br label %66

63:                                               ; preds = %4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %63, %60, %59, %37, %34, %33
  %67 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %10, align 8
  %68 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TRUE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i64, i64* @FALSE, align 8
  %74 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %10, align 8
  %75 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %10, align 8
  %77 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* @TRUE, align 8
  %80 = call i32 @xpt_release_simq(i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %72, %66
  %82 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %10, align 8
  %83 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ISCI_TASK_REQUEST*, %struct.ISCI_TASK_REQUEST** %9, align 8
  %86 = bitcast %struct.ISCI_TASK_REQUEST* %85 to %struct.ISCI_REQUEST*
  %87 = call i32 @sci_pool_put(i32 %84, %struct.ISCI_REQUEST* %86)
  %88 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %11, align 8
  %89 = call i32 @isci_remote_device_release_device_queue(%struct.ISCI_REMOTE_DEVICE* %88)
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* @TRUE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %11, align 8
  %95 = load %union.ccb*, %union.ccb** %14, align 8
  %96 = call i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE* %94, %union.ccb* %95)
  br label %127

97:                                               ; preds = %81
  %98 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %10, align 8
  %99 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %98, i32 0, i32 1
  %100 = call %struct.ISCI_REMOTE_DEVICE* @sci_fast_list_remove_head(i32* %99)
  store %struct.ISCI_REMOTE_DEVICE* %100, %struct.ISCI_REMOTE_DEVICE** %12, align 8
  %101 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %12, align 8
  %102 = icmp ne %struct.ISCI_REMOTE_DEVICE* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %12, align 8
  %105 = call i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE* %104, %union.ccb* null)
  br label %126

106:                                              ; preds = %97
  %107 = load %union.ccb*, %union.ccb** %14, align 8
  %108 = icmp ne %union.ccb* %107, null
  br i1 %108, label %109, label %125

109:                                              ; preds = %106
  %110 = load i32, i32* @CAM_STATUS_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load %union.ccb*, %union.ccb** %14, align 8
  %113 = bitcast %union.ccb* %112 to %struct.TYPE_4__*
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @CAM_REQ_CMP, align 4
  %118 = load %union.ccb*, %union.ccb** %14, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_4__*
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 4
  %123 = load %union.ccb*, %union.ccb** %14, align 8
  %124 = call i32 @xpt_done(%union.ccb* %123)
  br label %125

125:                                              ; preds = %109, %106
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %93
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*, ...) #1

declare dso_local i32 @scif_cb_domain_device_removed(i32, i32, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i64) #1

declare dso_local i32 @sci_pool_put(i32, %struct.ISCI_REQUEST*) #1

declare dso_local i32 @isci_remote_device_release_device_queue(%struct.ISCI_REMOTE_DEVICE*) #1

declare dso_local i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE*, %union.ccb*) #1

declare dso_local %struct.ISCI_REMOTE_DEVICE* @sci_fast_list_remove_head(i32*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
