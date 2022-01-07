; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i32, %struct.thread** }
%struct.thread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taskqueue_member(%struct.taskqueue* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.taskqueue*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.taskqueue* %0, %struct.taskqueue** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load %struct.taskqueue*, %struct.taskqueue** %3, align 8
  %10 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %9, i32 0, i32 1
  %11 = load %struct.thread**, %struct.thread*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.thread*, %struct.thread** %11, i64 %13
  %15 = load %struct.thread*, %struct.thread** %14, align 8
  %16 = icmp eq %struct.thread* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %38

18:                                               ; preds = %8
  %19 = load %struct.taskqueue*, %struct.taskqueue** %3, align 8
  %20 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %19, i32 0, i32 1
  %21 = load %struct.thread**, %struct.thread*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.thread*, %struct.thread** %21, i64 %23
  %25 = load %struct.thread*, %struct.thread** %24, align 8
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = icmp eq %struct.thread* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load %struct.taskqueue*, %struct.taskqueue** %3, align 8
  %33 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %41

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %8

41:                                               ; preds = %36, %28
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
