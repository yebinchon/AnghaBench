; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_io_qpair_print_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_io_qpair_print_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32, i32 }
%struct.nvme_command = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s sqid:%d cid:%d nsid:%d lba:%llu len:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s sqid:%d cid:%d nsid:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s (%02x) sqid:%d cid:%d nsid:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*, %struct.nvme_command*)* @nvme_io_qpair_print_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_io_qpair_print_command(%struct.nvme_qpair* %0, %struct.nvme_command* %1) #0 {
  %3 = alloca %struct.nvme_qpair*, align 8
  %4 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %3, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %4, align 8
  %5 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %6 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %64 [
    i32 130, label %8
    i32 136, label %8
    i32 129, label %8
    i32 139, label %8
    i32 128, label %8
    i32 131, label %8
    i32 137, label %45
    i32 138, label %45
    i32 134, label %45
    i32 132, label %45
    i32 135, label %45
    i32 133, label %45
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2
  %9 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @get_io_opcode_string(i32 %14)
  %16 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %23 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32toh(i32 %24)
  %26 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %27 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32toh(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = shl i64 %30, 32
  %32 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32toh(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = add i64 %31, %36
  %38 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32toh(i32 %40)
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, 1
  %44 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @nvme_printf(i32 %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %25, i64 %37, i32 %43)
  br label %86

45:                                               ; preds = %2, %2, %2, %2, %2, %2
  %46 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %47 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @get_io_opcode_string(i32 %51)
  %53 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %54 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %57 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %60 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32toh(i32 %61)
  %63 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @nvme_printf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %62)
  br label %86

64:                                               ; preds = %2
  %65 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %66 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %69 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @get_io_opcode_string(i32 %70)
  %72 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %73 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %76 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %79 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %82 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32toh(i32 %83)
  %85 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @nvme_printf(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %64, %45, %8
  ret void
}

declare dso_local i32 @nvme_printf(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @get_io_opcode_string(i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
