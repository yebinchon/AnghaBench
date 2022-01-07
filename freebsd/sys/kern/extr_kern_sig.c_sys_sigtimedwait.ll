; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigtimedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigtimedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.sigtimedwait_args = type { i32, i64, i64 }
%struct.timespec = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigtimedwait(%struct.thread* %0, %struct.sigtimedwait_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sigtimedwait_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sigtimedwait_args* %1, %struct.sigtimedwait_args** %5, align 8
  %11 = load %struct.sigtimedwait_args*, %struct.sigtimedwait_args** %5, align 8
  %12 = getelementptr inbounds %struct.sigtimedwait_args, %struct.sigtimedwait_args* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.sigtimedwait_args*, %struct.sigtimedwait_args** %5, align 8
  %17 = getelementptr inbounds %struct.sigtimedwait_args, %struct.sigtimedwait_args* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @copyin(i64 %18, %struct.timespec* %6, i32 4)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %15
  store %struct.timespec* %6, %struct.timespec** %7, align 8
  br label %26

25:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %7, align 8
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.sigtimedwait_args*, %struct.sigtimedwait_args** %5, align 8
  %28 = getelementptr inbounds %struct.sigtimedwait_args, %struct.sigtimedwait_args* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @copyin(i64 %29, %struct.timespec* %8, i32 4)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %68

35:                                               ; preds = %26
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = load %struct.timespec*, %struct.timespec** %7, align 8
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kern_sigtimedwait(%struct.thread* %36, i32 %39, %struct.TYPE_3__* %9, %struct.timespec* %37)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %68

45:                                               ; preds = %35
  %46 = load %struct.sigtimedwait_args*, %struct.sigtimedwait_args** %5, align 8
  %47 = getelementptr inbounds %struct.sigtimedwait_args, %struct.sigtimedwait_args* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %52 = load %struct.sigtimedwait_args*, %struct.sigtimedwait_args** %5, align 8
  %53 = getelementptr inbounds %struct.sigtimedwait_args, %struct.sigtimedwait_args* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @copyout(i32* %51, i32 %54, i32 4)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %43, %33, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @copyin(i64, %struct.timespec*, i32) #1

declare dso_local i32 @kern_sigtimedwait(%struct.thread*, i32, %struct.TYPE_3__*, %struct.timespec*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
