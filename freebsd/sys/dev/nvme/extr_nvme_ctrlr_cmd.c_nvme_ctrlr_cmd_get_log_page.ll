; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr_cmd.c_nvme_ctrlr_cmd_get_log_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr_cmd.c_nvme_ctrlr_cmd_get_log_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }
%struct.nvme_request = type { %struct.nvme_command }
%struct.nvme_command = type { i32, i8*, i32 }

@NVME_OPC_GET_LOG_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_cmd_get_log_page(%struct.nvme_controller* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.nvme_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nvme_request*, align 8
  %16 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i8*, i8** %14, align 8
  %21 = call %struct.nvme_request* @nvme_allocate_request_vaddr(i8* %17, i32 %18, i32 %19, i8* %20)
  store %struct.nvme_request* %21, %struct.nvme_request** %15, align 8
  %22 = load %struct.nvme_request*, %struct.nvme_request** %15, align 8
  %23 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %22, i32 0, i32 0
  store %struct.nvme_command* %23, %struct.nvme_command** %16, align 8
  %24 = load i32, i32* @NVME_OPC_GET_LOG_PAGE, align 4
  %25 = load %struct.nvme_command*, %struct.nvme_command** %16, align 8
  %26 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i8* @htole32(i32 %27)
  %29 = load %struct.nvme_command*, %struct.nvme_command** %16, align 8
  %30 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = sub i64 %33, 1
  %35 = shl i64 %34, 16
  %36 = trunc i64 %35 to i32
  %37 = load %struct.nvme_command*, %struct.nvme_command** %16, align 8
  %38 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.nvme_command*, %struct.nvme_command** %16, align 8
  %41 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.nvme_command*, %struct.nvme_command** %16, align 8
  %45 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @htole32(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.nvme_command*, %struct.nvme_command** %16, align 8
  %50 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nvme_controller*, %struct.nvme_controller** %8, align 8
  %52 = load %struct.nvme_request*, %struct.nvme_request** %15, align 8
  %53 = call i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller* %51, %struct.nvme_request* %52)
  ret void
}

declare dso_local %struct.nvme_request* @nvme_allocate_request_vaddr(i8*, i32, i32, i8*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller*, %struct.nvme_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
