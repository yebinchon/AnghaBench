; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns_cmd.c_nvme_ns_cmd_deallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns_cmd.c_nvme_ns_cmd_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace = type { i32, i32 }
%struct.nvme_request = type { %struct.nvme_command }
%struct.nvme_command = type { i8*, i8*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NVME_OPC_DATASET_MANAGEMENT = common dso_local global i32 0, align 4
@NVME_DSM_ATTR_DEALLOCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_ns_cmd_deallocate(%struct.nvme_namespace* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_namespace*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nvme_request*, align 8
  %13 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_namespace* %0, %struct.nvme_namespace** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %10, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = call %struct.nvme_request* @nvme_allocate_request_vaddr(i8* %14, i32 %18, i32 %19, i8* %20)
  store %struct.nvme_request* %21, %struct.nvme_request** %12, align 8
  %22 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %23 = icmp eq %struct.nvme_request* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %5
  %27 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %28 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %27, i32 0, i32 0
  store %struct.nvme_command* %28, %struct.nvme_command** %13, align 8
  %29 = load i32, i32* @NVME_OPC_DATASET_MANAGEMENT, align 4
  %30 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %31 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nvme_namespace*, %struct.nvme_namespace** %7, align 8
  %33 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @htole32(i32 %34)
  %36 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %37 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i8* @htole32(i32 %39)
  %41 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %42 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @NVME_DSM_ATTR_DEALLOCATE, align 4
  %44 = call i8* @htole32(i32 %43)
  %45 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %46 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.nvme_namespace*, %struct.nvme_namespace** %7, align 8
  %48 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %51 = call i32 @nvme_ctrlr_submit_io_request(i32 %49, %struct.nvme_request* %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %26, %24
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.nvme_request* @nvme_allocate_request_vaddr(i8*, i32, i32, i8*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @nvme_ctrlr_submit_io_request(i32, %struct.nvme_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
