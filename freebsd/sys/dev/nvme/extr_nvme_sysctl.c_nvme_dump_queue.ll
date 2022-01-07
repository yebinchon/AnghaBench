; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sysctl.c_nvme_dump_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sysctl.c_nvme_dump_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32, i32, i32, %struct.nvme_command*, %struct.nvme_completion* }
%struct.nvme_command = type { i32 }
%struct.nvme_completion = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"id:%04Xh phase:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Completion queue:\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%05d: \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Submission queue:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*)* @nvme_dump_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_dump_queue(%struct.nvme_qpair* %0) #0 {
  %2 = alloca %struct.nvme_qpair*, align 8
  %3 = alloca %struct.nvme_completion*, align 8
  %4 = alloca %struct.nvme_command*, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %2, align 8
  %6 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %17 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %21, i32 0, i32 4
  %23 = load %struct.nvme_completion*, %struct.nvme_completion** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %23, i64 %25
  store %struct.nvme_completion* %26, %struct.nvme_completion** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.nvme_completion*, %struct.nvme_completion** %3, align 8
  %30 = call i32 @nvme_dump_completion(%struct.nvme_completion* %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %14
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %53, %34
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %39 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %44 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %43, i32 0, i32 3
  %45 = load %struct.nvme_command*, %struct.nvme_command** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %45, i64 %47
  store %struct.nvme_command* %48, %struct.nvme_command** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %52 = call i32 @nvme_dump_command(%struct.nvme_command* %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %36

56:                                               ; preds = %36
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nvme_dump_completion(%struct.nvme_completion*) #1

declare dso_local i32 @nvme_dump_command(%struct.nvme_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
