; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_admin_qpair_print_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_admin_qpair_print_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32, i32 }
%struct.nvme_command = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s (%02x) sqid:%d cid:%d nsid:%x cdw10:%08x cdw11:%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*, %struct.nvme_command*)* @nvme_admin_qpair_print_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_admin_qpair_print_command(%struct.nvme_qpair* %0, %struct.nvme_command* %1) #0 {
  %3 = alloca %struct.nvme_qpair*, align 8
  %4 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %3, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %4, align 8
  %5 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %9 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_admin_opcode_string(i32 %10)
  %12 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %19 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32toh(i32 %23)
  %25 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32toh(i32 %27)
  %29 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %30 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32toh(i32 %31)
  %33 = call i32 @nvme_printf(i32 %7, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20, i32 %24, i32 %28, i32 %32)
  ret void
}

declare dso_local i32 @nvme_printf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_admin_opcode_string(i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
