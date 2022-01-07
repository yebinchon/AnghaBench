; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigdeferstop_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigdeferstop_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@TDF_SBDRY = common dso_local global i32 0, align 4
@TDF_SEINTR = common dso_local global i32 0, align 4
@TDF_SERESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sigdeferstop: invalid mode %x\00", align 1
@SIGDEFERSTOP_VAL_NCHG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sigdeferstop_impl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %7, %struct.thread** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sigdeferstop_curr_flags(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %43 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %16
    i32 132, label %25
    i32 131, label %34
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %6, align 4
  br label %46

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TDF_SBDRY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @TDF_SEINTR, align 4
  %21 = load i32, i32* @TDF_SERESTART, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  store i32 %24, i32* %6, align 4
  br label %46

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TDF_SBDRY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TDF_SEINTR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @TDF_SERESTART, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %6, align 4
  br label %46

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @TDF_SBDRY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TDF_SERESTART, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @TDF_SEINTR, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %1
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %34, %25, %16, %15, %13
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @SIGDEFERSTOP_VAL_NCHG, align 4
  store i32 %51, i32* %2, align 4
  br label %68

52:                                               ; preds = %46
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = call i32 @thread_lock(%struct.thread* %53)
  %55 = load %struct.thread*, %struct.thread** %4, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.thread*, %struct.thread** %4, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = call i32 @thread_unlock(%struct.thread* %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %52, %50
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @sigdeferstop_curr_flags(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
