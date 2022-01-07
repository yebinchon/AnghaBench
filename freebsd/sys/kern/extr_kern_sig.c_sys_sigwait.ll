; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sigwait_args = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@P_OSREL_SIGWAIT = common dso_local global i64 0, align 8
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigwait(%struct.thread* %0, %struct.sigwait_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sigwait_args*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sigwait_args* %1, %struct.sigwait_args** %5, align 8
  %9 = load %struct.sigwait_args*, %struct.sigwait_args** %5, align 8
  %10 = getelementptr inbounds %struct.sigwait_args, %struct.sigwait_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @copyin(i32 %11, i32* %7, i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @kern_sigtimedwait(%struct.thread* %22, i32 %23, %struct.TYPE_5__* %6, i32* null)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EINTR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @P_OSREL_SIGWAIT, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ERESTART, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %31, %27
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ERESTART, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %64

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %64

53:                                               ; preds = %21
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %55 = load %struct.sigwait_args*, %struct.sigwait_args** %5, align 8
  %56 = getelementptr inbounds %struct.sigwait_args, %struct.sigwait_args* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @copyout(i32* %54, i32 %57, i32 4)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %59, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %53, %47, %45, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @kern_sigtimedwait(%struct.thread*, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
