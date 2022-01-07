; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i8* }
%struct.sleepqueue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleepq_remove(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sleepqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @MPASS(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @sleepq_lock(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.sleepqueue* @sleepq_lookup(i8* %13)
  store %struct.sleepqueue* %14, %struct.sleepqueue** %5, align 8
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = call i32 @TD_ON_SLEEPQ(%struct.thread* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %2
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @sleepq_release(i8* %25)
  br label %52

27:                                               ; preds = %18
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = call i32 @thread_lock(%struct.thread* %28)
  %30 = load %struct.sleepqueue*, %struct.sleepqueue** %5, align 8
  %31 = icmp ne %struct.sleepqueue* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @MPASS(i32 %32)
  %34 = load %struct.thread*, %struct.thread** %3, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp eq i8* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  %41 = load %struct.sleepqueue*, %struct.sleepqueue** %5, align 8
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = call i32 @sleepq_resume_thread(%struct.sleepqueue* %41, %struct.thread* %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = call i32 @thread_unlock(%struct.thread* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @sleepq_release(i8* %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %27
  %51 = call i32 (...) @kick_proc0()
  br label %52

52:                                               ; preds = %24, %50, %27
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @sleepq_lock(i8*) #1

declare dso_local %struct.sleepqueue* @sleepq_lookup(i8*) #1

declare dso_local i32 @TD_ON_SLEEPQ(%struct.thread*) #1

declare dso_local i32 @sleepq_release(i8*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sleepq_resume_thread(%struct.sleepqueue*, %struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @kick_proc0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
