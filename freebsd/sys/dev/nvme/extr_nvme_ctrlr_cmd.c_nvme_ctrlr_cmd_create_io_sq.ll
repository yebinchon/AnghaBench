; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr_cmd.c_nvme_ctrlr_cmd_create_io_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr_cmd.c_nvme_ctrlr_cmd_create_io_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }
%struct.nvme_qpair = type { i32, i32, i32 }
%struct.nvme_request = type { %struct.nvme_command }
%struct.nvme_command = type { i32, i8*, i8*, i32 }

@NVME_OPC_CREATE_IO_SQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_cmd_create_io_sq(%struct.nvme_controller* %0, %struct.nvme_qpair* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.nvme_controller*, align 8
  %6 = alloca %struct.nvme_qpair*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvme_request*, align 8
  %10 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %5, align 8
  store %struct.nvme_qpair* %1, %struct.nvme_qpair** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = call %struct.nvme_request* @nvme_allocate_request_null(i32 %11, i8* %12)
  store %struct.nvme_request* %13, %struct.nvme_request** %9, align 8
  %14 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %15 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %14, i32 0, i32 0
  store %struct.nvme_command* %15, %struct.nvme_command** %10, align 8
  %16 = load i32, i32* @NVME_OPC_CREATE_IO_SQ, align 4
  %17 = load %struct.nvme_command*, %struct.nvme_command** %10, align 8
  %18 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %20 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 %22, 16
  %24 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %25 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = call i8* @htole32(i32 %27)
  %29 = load %struct.nvme_command*, %struct.nvme_command** %10, align 8
  %30 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %32 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %34, 1
  %36 = call i8* @htole32(i32 %35)
  %37 = load %struct.nvme_command*, %struct.nvme_command** %10, align 8
  %38 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @htole64(i32 %41)
  %43 = load %struct.nvme_command*, %struct.nvme_command** %10, align 8
  %44 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %46 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %47 = call i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller* %45, %struct.nvme_request* %46)
  ret void
}

declare dso_local %struct.nvme_request* @nvme_allocate_request_null(i32, i8*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller*, %struct.nvme_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
