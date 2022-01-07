; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sched_setpriority.c_priv_sched_setpriority_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sched_setpriority.c_priv_sched_setpriority_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i64 }

@priv_sched_setpriority_aproc = common dso_local global i64 0, align 8
@priv_sched_setpriority_myproc = common dso_local global i64 0, align 8
@childproc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"priv_sched_setup: fork\00", align 1
@UID_THIRD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"setresuid(%d)\00", align 1
@childproc_running = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_sched_setpriority_setup(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.test*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.test* %2, %struct.test** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.test*, %struct.test** %7, align 8
  %11 = getelementptr inbounds %struct.test, %struct.test* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @priv_sched_setpriority_aproc, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load %struct.test*, %struct.test** %7, align 8
  %18 = getelementptr inbounds %struct.test, %struct.test* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @priv_sched_setpriority_myproc, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = call i64 (...) @fork()
  store i64 %27, i64* @childproc, align 8
  %28 = load i64, i64* @childproc, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %54

32:                                               ; preds = %26
  %33 = load i64, i64* @childproc, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32, i32* @UID_THIRD, align 4
  %40 = load i32, i32* @UID_THIRD, align 4
  %41 = load i32, i32* @UID_THIRD, align 4
  %42 = call i64 @setresuid(i32 %39, i32 %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @UID_THIRD, align 4
  %46 = call i32 @err(i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %49
  %50 = call i32 @sleep(i32 1)
  br label %49

51:                                               ; preds = %32
  store i32 1, i32* @childproc_running, align 4
  %52 = call i32 @sleep(i32 1)
  br label %53

53:                                               ; preds = %51, %23
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @setresuid(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
