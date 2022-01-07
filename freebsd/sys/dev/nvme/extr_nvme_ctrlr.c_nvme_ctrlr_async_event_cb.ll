; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_async_event_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_async_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32 }
%struct.nvme_async_event_request = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"async event occurred (type 0x%x, info 0x%02x, page 0x%02x)\0A\00", align 1
@NVME_GLOBAL_NAMESPACE_TAG = common dso_local global i32 0, align 4
@nvme_ctrlr_async_event_log_page_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nvme_completion*)* @nvme_ctrlr_async_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_async_event_cb(i8* %0, %struct.nvme_completion* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nvme_completion*, align 8
  %5 = alloca %struct.nvme_async_event_request*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.nvme_async_event_request*
  store %struct.nvme_async_event_request* %7, %struct.nvme_async_event_request** %5, align 8
  %8 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %9 = call i64 @nvme_completion_is_error(%struct.nvme_completion* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %85

12:                                               ; preds = %2
  %13 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %14 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 16711680
  %17 = ashr i32 %16, 16
  %18 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %19 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %21 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %24 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 7
  %27 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 65280
  %31 = ashr i32 %30, 8
  %32 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %33 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nvme_printf(i32 %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31, i32 %34)
  %36 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %37 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_log_page_id_valid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %12
  %42 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %43 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %46 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nvme_ctrlr_get_log_page_size(i32 %44, i32 %47)
  %49 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %50 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %52 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %51, i32 0, i32 4
  %53 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %54 = call i32 @memcpy(i32* %52, %struct.nvme_completion* %53, i32 4)
  %55 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %56 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %59 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NVME_GLOBAL_NAMESPACE_TAG, align 4
  %62 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %63 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %66 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @nvme_ctrlr_async_event_log_page_cb, align 4
  %69 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %70 = call i32 @nvme_ctrlr_cmd_get_log_page(i32 %57, i32 %60, i32 %61, i32 %64, i32 %67, i32 %68, %struct.nvme_async_event_request* %69)
  br label %85

71:                                               ; preds = %12
  %72 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %73 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %76 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %77 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @nvme_notify_async_consumers(i32 %74, %struct.nvme_completion* %75, i32 %78, i32* null, i32 0)
  %80 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %81 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %84 = call i32 @nvme_ctrlr_construct_and_submit_aer(i32 %82, %struct.nvme_async_event_request* %83)
  br label %85

85:                                               ; preds = %11, %71, %41
  ret void
}

declare dso_local i64 @nvme_completion_is_error(%struct.nvme_completion*) #1

declare dso_local i32 @nvme_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @is_log_page_id_valid(i32) #1

declare dso_local i32 @nvme_ctrlr_get_log_page_size(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.nvme_completion*, i32) #1

declare dso_local i32 @nvme_ctrlr_cmd_get_log_page(i32, i32, i32, i32, i32, i32, %struct.nvme_async_event_request*) #1

declare dso_local i32 @nvme_notify_async_consumers(i32, %struct.nvme_completion*, i32, i32*, i32) #1

declare dso_local i32 @nvme_ctrlr_construct_and_submit_aer(i32, %struct.nvme_async_event_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
