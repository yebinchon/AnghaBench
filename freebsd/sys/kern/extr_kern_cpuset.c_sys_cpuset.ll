; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_sys_cpuset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_sys_cpuset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cpuset_args = type { i32 }
%struct.cpuset = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_cpuset(%struct.thread* %0, %struct.cpuset_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cpuset_args*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca %struct.cpuset*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cpuset_args* %1, %struct.cpuset_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = call i32 @thread_lock(%struct.thread* %9)
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cpuset* @cpuset_refroot(i32 %13)
  store %struct.cpuset* %14, %struct.cpuset** %6, align 8
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = call i32 @thread_unlock(%struct.thread* %15)
  %17 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %18 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %19 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %18, i32 0, i32 1
  %20 = call i32 @cpuset_create(%struct.cpuset** %7, %struct.cpuset* %17, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %22 = call i32 @cpuset_rel(%struct.cpuset* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %29 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %28, i32 0, i32 0
  %30 = load %struct.cpuset_args*, %struct.cpuset_args** %5, align 8
  %31 = getelementptr inbounds %struct.cpuset_args, %struct.cpuset_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @copyout(i32* %29, i32 %32, i32 4)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %38 = call i32 @cpuset_setproc(i32 -1, %struct.cpuset* %37, i32* null, i32* null)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %41 = call i32 @cpuset_rel(%struct.cpuset* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local %struct.cpuset* @cpuset_refroot(i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @cpuset_create(%struct.cpuset**, %struct.cpuset*, i32*) #1

declare dso_local i32 @cpuset_rel(%struct.cpuset*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @cpuset_setproc(i32, %struct.cpuset*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
