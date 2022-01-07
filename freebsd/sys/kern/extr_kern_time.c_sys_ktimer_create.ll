; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_ktimer_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_ktimer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ktimer_create_args = type { i32, i32, i32* }
%struct.sigevent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ktimer_create(%struct.thread* %0, %struct.ktimer_create_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ktimer_create_args*, align 8
  %6 = alloca %struct.sigevent*, align 8
  %7 = alloca %struct.sigevent, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ktimer_create_args* %1, %struct.ktimer_create_args** %5, align 8
  %10 = load %struct.ktimer_create_args*, %struct.ktimer_create_args** %5, align 8
  %11 = getelementptr inbounds %struct.ktimer_create_args, %struct.ktimer_create_args* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.sigevent* null, %struct.sigevent** %6, align 8
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.ktimer_create_args*, %struct.ktimer_create_args** %5, align 8
  %17 = getelementptr inbounds %struct.ktimer_create_args, %struct.ktimer_create_args* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @copyin(i32* %18, %struct.sigevent* %7, i32 4)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %15
  store %struct.sigevent* %7, %struct.sigevent** %6, align 8
  br label %25

25:                                               ; preds = %24, %14
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = load %struct.ktimer_create_args*, %struct.ktimer_create_args** %5, align 8
  %28 = getelementptr inbounds %struct.ktimer_create_args, %struct.ktimer_create_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %31 = call i32 @kern_ktimer_create(%struct.thread* %26, i32 %29, %struct.sigevent* %30, i32* %8, i32 -1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load %struct.ktimer_create_args*, %struct.ktimer_create_args** %5, align 8
  %36 = getelementptr inbounds %struct.ktimer_create_args, %struct.ktimer_create_args* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @copyout(i32* %8, i32 %37, i32 4)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @kern_ktimer_delete(%struct.thread* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @copyin(i32*, %struct.sigevent*, i32) #1

declare dso_local i32 @kern_ktimer_create(%struct.thread*, i32, %struct.sigevent*, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @kern_ktimer_delete(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
