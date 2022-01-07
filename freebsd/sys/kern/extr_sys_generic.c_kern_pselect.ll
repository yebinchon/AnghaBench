; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_pselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_pselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32 }
%struct.timeval = type { i32 }

@SIG_SETMASK = common dso_local global i32 0, align 4
@TDP_OLDMASK = common dso_local global i32 0, align 4
@TDF_ASTPENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_pselect(%struct.thread* %0, i32 %1, i32* %2, i32* %3, i32* %4, %struct.timeval* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.timeval*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.timeval* %5, %struct.timeval** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i32*, i32** %16, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %8
  %22 = load %struct.thread*, %struct.thread** %10, align 8
  %23 = load i32, i32* @SIG_SETMASK, align 4
  %24 = load i32*, i32** %16, align 8
  %25 = load %struct.thread*, %struct.thread** %10, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 2
  %27 = call i32 @kern_sigprocmask(%struct.thread* %22, i32 %23, i32* %24, i32* %26, i32 0)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %9, align 4
  br label %57

32:                                               ; preds = %21
  %33 = load i32, i32* @TDP_OLDMASK, align 4
  %34 = load %struct.thread*, %struct.thread** %10, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.thread*, %struct.thread** %10, align 8
  %39 = call i32 @thread_lock(%struct.thread* %38)
  %40 = load i32, i32* @TDF_ASTPENDING, align 4
  %41 = load %struct.thread*, %struct.thread** %10, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.thread*, %struct.thread** %10, align 8
  %46 = call i32 @thread_unlock(%struct.thread* %45)
  br label %47

47:                                               ; preds = %32, %8
  %48 = load %struct.thread*, %struct.thread** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load %struct.timeval*, %struct.timeval** %15, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @kern_select(%struct.thread* %48, i32 %49, i32* %50, i32* %51, i32* %52, %struct.timeval* %53, i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %47, %30
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @kern_select(%struct.thread*, i32, i32*, i32*, i32*, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
