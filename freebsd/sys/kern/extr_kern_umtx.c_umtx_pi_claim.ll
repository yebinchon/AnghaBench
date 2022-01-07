; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_claim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_pi = type { i32, %struct.thread* }
%struct.thread = type { i32 }
%struct.umtx_q = type { %struct.thread* }

@umtx_lock = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umtx_pi*, %struct.thread*)* @umtx_pi_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtx_pi_claim(%struct.umtx_pi* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.umtx_pi*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.umtx_q*, align 8
  %7 = alloca i32, align 4
  store %struct.umtx_pi* %0, %struct.umtx_pi** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %8 = call i32 @mtx_lock(i32* @umtx_lock)
  %9 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %10 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %9, i32 0, i32 1
  %11 = load %struct.thread*, %struct.thread** %10, align 8
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = icmp eq %struct.thread* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @mtx_unlock(i32* @umtx_lock)
  store i32 0, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %18 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %17, i32 0, i32 1
  %19 = load %struct.thread*, %struct.thread** %18, align 8
  %20 = icmp ne %struct.thread* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @mtx_unlock(i32* @umtx_lock)
  %23 = load i32, i32* @EPERM, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %16
  %25 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = call i32 @umtx_pi_setowner(%struct.umtx_pi* %25, %struct.thread* %26)
  %28 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %29 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %28, i32 0, i32 0
  %30 = call %struct.umtx_q* @TAILQ_FIRST(i32* %29)
  store %struct.umtx_q* %30, %struct.umtx_q** %6, align 8
  %31 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %32 = icmp ne %struct.umtx_q* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %24
  %34 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %35 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %34, i32 0, i32 0
  %36 = load %struct.thread*, %struct.thread** %35, align 8
  %37 = call i32 @UPRI(%struct.thread* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.thread*, %struct.thread** %5, align 8
  %39 = call i32 @thread_lock(%struct.thread* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.thread*, %struct.thread** %5, align 8
  %42 = call i32 @UPRI(%struct.thread* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.thread*, %struct.thread** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @sched_lend_user_prio(%struct.thread* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %33
  %49 = load %struct.thread*, %struct.thread** %5, align 8
  %50 = call i32 @thread_unlock(%struct.thread* %49)
  br label %51

51:                                               ; preds = %48, %24
  %52 = call i32 @mtx_unlock(i32* @umtx_lock)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %21, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @umtx_pi_setowner(%struct.umtx_pi*, %struct.thread*) #1

declare dso_local %struct.umtx_q* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @UPRI(%struct.thread*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_lend_user_prio(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
