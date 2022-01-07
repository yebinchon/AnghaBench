; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/pthread/cv_cancel1/extr_cv_cancel1.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/pthread/cv_cancel1/extr_cv_cancel1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NLOOPS = common dso_local global i32 0, align 4
@stop = common dso_local global i32 0, align 4
@wake = common dso_local global i32 0, align 4
@thr_routine = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"trying: %d\0A\00", align 1
@m = common dso_local global i32 0, align 4
@cv = common dso_local global i32 0, align 4
@PTHREAD_CANCELED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [132 x i8] c"the condition variable implementation does not\0Aconform to SUSv3, a thread unblocked from\0Acondition variable still can be canceled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @pthread_setconcurrency(i32 1)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NLOOPS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  store i32 0, i32* @stop, align 4
  store i32 0, i32* @wake, align 4
  %15 = load i32, i32* @thr_routine, align 4
  %16 = call i32 @pthread_create(i32* %6, i32* null, i32 %15, i32* null)
  %17 = call i32 @sleep(i32 1)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @pthread_mutex_lock(i32* @m)
  store i32 1, i32* @wake, align 4
  %21 = call i32 @pthread_cond_signal(i32* @cv)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pthread_cancel(i32 %22)
  %24 = call i32 @pthread_mutex_unlock(i32* @m)
  store i32 1, i32* @stop, align 4
  store i8* null, i8** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pthread_join(i32 %25, i8** %8)
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %14
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %38

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %10

36:                                               ; preds = %10
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pthread_setconcurrency(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cancel(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
