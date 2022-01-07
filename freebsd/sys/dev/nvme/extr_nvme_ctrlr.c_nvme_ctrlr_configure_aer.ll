; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_configure_aer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_configure_aer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i64, %struct.nvme_async_event_request*, %struct.TYPE_3__ }
%struct.nvme_async_event_request = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.nvme_completion_poll_status = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@NVME_CRIT_WARN_ST_AVAILABLE_SPARE = common dso_local global i32 0, align 4
@NVME_CRIT_WARN_ST_DEVICE_RELIABILITY = common dso_local global i32 0, align 4
@NVME_CRIT_WARN_ST_READ_ONLY = common dso_local global i32 0, align 4
@NVME_CRIT_WARN_ST_VOLATILE_MEMORY_BACKUP = common dso_local global i32 0, align 4
@NVME_FEAT_TEMPERATURE_THRESHOLD = common dso_local global i32 0, align 4
@nvme_completion_poll_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"temperature threshold not supported\0A\00", align 1
@NVME_CRIT_WARN_ST_TEMPERATURE = common dso_local global i32 0, align 4
@NVME_MAX_ASYNC_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_controller*)* @nvme_ctrlr_configure_aer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_configure_aer(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca %struct.nvme_completion_poll_status, align 8
  %4 = alloca %struct.nvme_async_event_request*, align 8
  %5 = alloca i64, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  %6 = load i32, i32* @NVME_CRIT_WARN_ST_AVAILABLE_SPARE, align 4
  %7 = load i32, i32* @NVME_CRIT_WARN_ST_DEVICE_RELIABILITY, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @NVME_CRIT_WARN_ST_READ_ONLY, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @NVME_CRIT_WARN_ST_VOLATILE_MEMORY_BACKUP, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %16 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @NVME_REV(i32 1, i32 2)
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %23 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, 768
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %3, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %29 = load i32, i32* @NVME_FEAT_TEMPERATURE_THRESHOLD, align 4
  %30 = load i32, i32* @nvme_completion_poll_cb, align 4
  %31 = call i32 @nvme_ctrlr_cmd_get_feature(%struct.nvme_controller* %28, i32 %29, i32 0, i32* null, i32 0, i32 %30, %struct.nvme_completion_poll_status* %3)
  %32 = call i32 @nvme_completion_poll(%struct.nvme_completion_poll_status* %3)
  %33 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %3, i32 0, i32 0
  %34 = call i64 @nvme_completion_is_error(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %3, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 65535
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36, %26
  %49 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %50 = call i32 @nvme_printf(%struct.nvme_controller* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %57

51:                                               ; preds = %42
  %52 = load i32, i32* @NVME_CRIT_WARN_ST_TEMPERATURE, align 4
  %53 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %54 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %48
  %58 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %59 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %60 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @nvme_ctrlr_cmd_set_async_event_config(%struct.nvme_controller* %58, i32 %61, i32* null, i32* null)
  %63 = load i32, i32* @NVME_MAX_ASYNC_EVENTS, align 4
  %64 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %65 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  %69 = call i64 @min(i32 %63, i64 %68)
  %70 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %71 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  store i64 0, i64* %5, align 8
  br label %72

72:                                               ; preds = %87, %57
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %75 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %80 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %79, i32 0, i32 2
  %81 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %81, i64 %82
  store %struct.nvme_async_event_request* %83, %struct.nvme_async_event_request** %4, align 8
  %84 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %85 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %4, align 8
  %86 = call i32 @nvme_ctrlr_construct_and_submit_aer(%struct.nvme_controller* %84, %struct.nvme_async_event_request* %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %5, align 8
  br label %72

90:                                               ; preds = %72
  ret void
}

declare dso_local i64 @NVME_REV(i32, i32) #1

declare dso_local i32 @nvme_ctrlr_cmd_get_feature(%struct.nvme_controller*, i32, i32, i32*, i32, i32, %struct.nvme_completion_poll_status*) #1

declare dso_local i32 @nvme_completion_poll(%struct.nvme_completion_poll_status*) #1

declare dso_local i64 @nvme_completion_is_error(%struct.TYPE_4__*) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @nvme_ctrlr_cmd_set_async_event_config(%struct.nvme_controller*, i32, i32*, i32*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @nvme_ctrlr_construct_and_submit_aer(%struct.nvme_controller*, %struct.nvme_async_event_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
