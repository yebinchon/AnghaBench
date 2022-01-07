; ModuleID = '/home/carl/AnghaBench/freebsd/sys/tests/epoch/extr_epoch_test.c_epoch_testcase2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/tests/epoch/extr_epoch_test.c_epoch_testcase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.epoch_test_instance = type { i32 }
%struct.epoch_tracker = type { i32 }

@ticks = common dso_local global i32 0, align 4
@mutexA = common dso_local global %struct.mtx zeroinitializer, align 4
@iterations = common dso_local global i32 0, align 4
@test_epoch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"test2: thread: %d took %d ticks to complete %d iterations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.epoch_test_instance*)* @epoch_testcase2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epoch_testcase2(%struct.epoch_test_instance* %0) #0 {
  %2 = alloca %struct.epoch_test_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca %struct.epoch_tracker, align 4
  store %struct.epoch_test_instance* %0, %struct.epoch_test_instance** %2, align 8
  %7 = load i32, i32* @ticks, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store %struct.mtx* @mutexA, %struct.mtx** %5, align 8
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @iterations, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* @test_epoch, align 4
  %14 = call i32 @epoch_enter_preempt(i32 %13, %struct.epoch_tracker* %6)
  %15 = load %struct.mtx*, %struct.mtx** %5, align 8
  %16 = call i32 @mtx_lock(%struct.mtx* %15)
  %17 = call i32 @DELAY(i32 1)
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load %struct.mtx*, %struct.mtx** %5, align 8
  %21 = call i32 @mtx_unlock(%struct.mtx* %20)
  %22 = load i32, i32* @test_epoch, align 4
  %23 = call i32 @epoch_exit_preempt(i32 %22, %struct.epoch_tracker* %6)
  %24 = load i32, i32* @test_epoch, align 4
  %25 = call i32 @epoch_wait_preempt(i32 %24)
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.epoch_test_instance*, %struct.epoch_test_instance** %2, align 8
  %28 = getelementptr inbounds %struct.epoch_test_instance, %struct.epoch_test_instance* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ticks, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* @iterations, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @epoch_enter_preempt(i32, %struct.epoch_tracker*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @epoch_exit_preempt(i32, %struct.epoch_tracker*) #1

declare dso_local i32 @epoch_wait_preempt(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
