; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_print_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_print_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i64, i32 }
%struct.nvme_command = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }

@nvme_verbose_cmd_dump = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"nsid:%#x rsvd2:%#x rsvd3:%#x mptr:%#jx prp1:%#jx prp2:%#jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"cdw10: %#x cdw11:%#x cdw12:%#x cdw13:%#x cdw14:%#x cdw15:%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*, %struct.nvme_command*)* @nvme_qpair_print_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_qpair_print_command(%struct.nvme_qpair* %0, %struct.nvme_command* %1) #0 {
  %3 = alloca %struct.nvme_qpair*, align 8
  %4 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %3, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %4, align 8
  %5 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %11 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %12 = call i32 @nvme_admin_qpair_print_command(%struct.nvme_qpair* %10, %struct.nvme_command* %11)
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %15 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %16 = call i32 @nvme_io_qpair_print_command(%struct.nvme_qpair* %14, %struct.nvme_command* %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i64, i64* @nvme_verbose_cmd_dump, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %17
  %21 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %31 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %38 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %42 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @nvme_printf(i32 %23, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %36, i32 %40, i32 %44)
  %46 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %47 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %53 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %59 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %62 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %65 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @nvme_printf(i32 %48, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @nvme_admin_qpair_print_command(%struct.nvme_qpair*, %struct.nvme_command*) #1

declare dso_local i32 @nvme_io_qpair_print_command(%struct.nvme_qpair*, %struct.nvme_command*) #1

declare dso_local i32 @nvme_printf(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
