; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_cms.c_msgring_process_fast_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_cms.c_msgring_process_fast_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgring_thread = type { i32, %struct.thread* }
%struct.thread = type { i32 }

@msgring_threads = common dso_local global %struct.msgring_thread* null, align 8
@msgring_nintr = common dso_local global i32* null, align 8
@IRQ_MSGRING = common dso_local global i64 0, align 8
@msgring_wakeup_sleep = common dso_local global i32* null, align 8
@SRQ_INTR = common dso_local global i32 0, align 4
@msgring_wakeup_nosleep = common dso_local global i32* null, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @msgring_process_fast_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgring_process_fast_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msgring_thread*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @nlm_cpuid()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.msgring_thread*, %struct.msgring_thread** @msgring_threads, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.msgring_thread, %struct.msgring_thread* %7, i64 %9
  store %struct.msgring_thread* %10, %struct.msgring_thread** %3, align 8
  %11 = load i32*, i32** @msgring_nintr, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.msgring_thread*, %struct.msgring_thread** %3, align 8
  %18 = getelementptr inbounds %struct.msgring_thread, %struct.msgring_thread* %17, i32 0, i32 1
  %19 = load %struct.thread*, %struct.thread** %18, align 8
  store %struct.thread* %19, %struct.thread** %4, align 8
  %20 = load i64, i64* @IRQ_MSGRING, align 8
  %21 = shl i64 1, %20
  %22 = call i32 @nlm_write_c0_eirr(i64 %21)
  %23 = load %struct.msgring_thread*, %struct.msgring_thread** %3, align 8
  %24 = getelementptr inbounds %struct.msgring_thread, %struct.msgring_thread* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = call i32 @thread_lock(%struct.thread* %25)
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = call i64 @TD_AWAITING_INTR(%struct.thread* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %1
  %31 = load i32*, i32** @msgring_wakeup_sleep, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = call i32 @TD_CLR_IWAIT(%struct.thread* %37)
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = load i32, i32* @SRQ_INTR, align 4
  %41 = call i32 @sched_add(%struct.thread* %39, i32 %40)
  br label %49

42:                                               ; preds = %1
  %43 = load i32*, i32** @msgring_wakeup_nosleep, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %30
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = call i32 @thread_unlock(%struct.thread* %50)
  %52 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @nlm_cpuid(...) #1

declare dso_local i32 @nlm_write_c0_eirr(i64) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i64 @TD_AWAITING_INTR(%struct.thread*) #1

declare dso_local i32 @TD_CLR_IWAIT(%struct.thread*) #1

declare dso_local i32 @sched_add(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
