; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_dump_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_dump_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_command = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [89 x i8] c"opc:%x f:%x cid:%x nsid:%x r2:%x r3:%x mptr:%jx prp1:%jx prp2:%jx cdw:%x %x %x %x %x %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_dump_command(%struct.nvme_command* %0) #0 {
  %2 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_command* %0, %struct.nvme_command** %2, align 8
  %3 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32toh(i32 %14)
  %16 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %17 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %23 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le64toh(i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %28 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le64toh(i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %33 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le64toh(i32 %34)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %38 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32toh(i32 %39)
  %41 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %42 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32toh(i32 %43)
  %45 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %46 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32toh(i32 %47)
  %49 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %50 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32toh(i32 %51)
  %53 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %54 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32toh(i32 %55)
  %57 = load %struct.nvme_command*, %struct.nvme_command** %2, align 8
  %58 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32toh(i32 %59)
  %61 = call i32 @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %15, i32 %18, i32 %21, i32 %26, i32 %31, i32 %36, i32 %40, i32 %44, i32 %48, i32 %52, i32 %56, i32 %60)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @le64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
