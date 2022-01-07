; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr_cmd.c_nvme_ctrlr_cmd_identify_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr_cmd.c_nvme_ctrlr_cmd_identify_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }
%struct.nvme_request = type { %struct.nvme_command }
%struct.nvme_command = type { i32, i32 }

@NVME_OPC_IDENTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_cmd_identify_controller(%struct.nvme_controller* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.nvme_controller*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvme_request*, align 8
  %10 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = call %struct.nvme_request* @nvme_allocate_request_vaddr(i8* %11, i32 4, i32 %12, i8* %13)
  store %struct.nvme_request* %14, %struct.nvme_request** %9, align 8
  %15 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %16 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %15, i32 0, i32 0
  store %struct.nvme_command* %16, %struct.nvme_command** %10, align 8
  %17 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %18 = load %struct.nvme_command*, %struct.nvme_command** %10, align 8
  %19 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = call i32 @htole32(i32 1)
  %21 = load %struct.nvme_command*, %struct.nvme_command** %10, align 8
  %22 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %24 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %25 = call i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller* %23, %struct.nvme_request* %24)
  ret void
}

declare dso_local %struct.nvme_request* @nvme_allocate_request_vaddr(i8*, i32, i32, i8*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller*, %struct.nvme_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
