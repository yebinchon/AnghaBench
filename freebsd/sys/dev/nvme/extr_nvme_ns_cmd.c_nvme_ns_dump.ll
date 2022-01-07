; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns_cmd.c_nvme_ns_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns_cmd.c_nvme_ns_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace = type { i32, i32 }
%struct.nvme_completion_poll_status = type { i64 }
%struct.nvme_request = type { i32*, %struct.nvme_command }
%struct.nvme_command = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@nvme_completion_poll_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NVD_DUMP_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_ns_dump(%struct.nvme_namespace* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_namespace*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvme_completion_poll_status, align 8
  %11 = alloca %struct.nvme_request*, align 8
  %12 = alloca %struct.nvme_command*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nvme_namespace* %0, %struct.nvme_namespace** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @FALSE, align 8
  %17 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %10, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @nvme_completion_poll_cb, align 4
  %21 = call %struct.nvme_request* @nvme_allocate_request_vaddr(i8* %18, i64 %19, i32 %20, %struct.nvme_completion_poll_status* %10)
  store %struct.nvme_request* %21, %struct.nvme_request** %11, align 8
  %22 = load %struct.nvme_request*, %struct.nvme_request** %11, align 8
  %23 = icmp eq %struct.nvme_request* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %5, align 4
  br label %92

26:                                               ; preds = %4
  %27 = load %struct.nvme_request*, %struct.nvme_request** %11, align 8
  %28 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %27, i32 0, i32 1
  store %struct.nvme_command* %28, %struct.nvme_command** %12, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.nvme_namespace*, %struct.nvme_namespace** %6, align 8
  %34 = call i64 @nvme_ns_get_sector_size(%struct.nvme_namespace* %33)
  %35 = udiv i64 %32, %34
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.nvme_namespace*, %struct.nvme_namespace** %6, align 8
  %38 = call i64 @nvme_ns_get_sector_size(%struct.nvme_namespace* %37)
  %39 = udiv i64 %36, %38
  store i64 %39, i64* %14, align 8
  %40 = load %struct.nvme_command*, %struct.nvme_command** %12, align 8
  %41 = load %struct.nvme_namespace*, %struct.nvme_namespace** %6, align 8
  %42 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @nvme_ns_write_cmd(%struct.nvme_command* %40, i32 %43, i64 %44, i64 %45)
  br label %53

47:                                               ; preds = %26
  %48 = load %struct.nvme_command*, %struct.nvme_command** %12, align 8
  %49 = load %struct.nvme_namespace*, %struct.nvme_namespace** %6, align 8
  %50 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nvme_ns_flush_cmd(%struct.nvme_command* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %31
  %54 = load %struct.nvme_namespace*, %struct.nvme_namespace** %6, align 8
  %55 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvme_request*, %struct.nvme_request** %11, align 8
  %58 = call i32 @nvme_ctrlr_submit_io_request(i32 %56, %struct.nvme_request* %57)
  %59 = load %struct.nvme_request*, %struct.nvme_request** %11, align 8
  %60 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %5, align 4
  br label %92

65:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* @NVD_DUMP_TIMEOUT, align 4
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FALSE, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = call i32 @DELAY(i32 5)
  %80 = load %struct.nvme_request*, %struct.nvme_request** %11, align 8
  %81 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @nvme_qpair_process_completions(i32* %82)
  br label %66

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %10, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FALSE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %90, i32* %5, align 4
  br label %92

91:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %89, %63, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.nvme_request* @nvme_allocate_request_vaddr(i8*, i64, i32, %struct.nvme_completion_poll_status*) #1

declare dso_local i64 @nvme_ns_get_sector_size(%struct.nvme_namespace*) #1

declare dso_local i32 @nvme_ns_write_cmd(%struct.nvme_command*, i32, i64, i64) #1

declare dso_local i32 @nvme_ns_flush_cmd(%struct.nvme_command*, i32) #1

declare dso_local i32 @nvme_ctrlr_submit_io_request(i32, %struct.nvme_request*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @nvme_qpair_process_completions(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
