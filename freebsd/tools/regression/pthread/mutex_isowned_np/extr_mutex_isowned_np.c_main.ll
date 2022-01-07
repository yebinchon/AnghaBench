; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/pthread/mutex_isowned_np/extr_mutex_isowned_np.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/pthread/mutex_isowned_np/extr_mutex_isowned_np.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [75 x i8] c"pthread_mutex_isowned_np() returned non-zero\0Afor a mutex that is not held\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"pthread_mutex_isowned_np() returned zero\0Afor a mutex we hold ourselves\0A\00", align 1
@thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @pthread_mutex_init(i32* %7, i32* null)
  %9 = call i64 @pthread_mutex_isowned_np(i32* %7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = call i32 @pthread_mutex_lock(i32* %7)
  %16 = call i64 @pthread_mutex_isowned_np(i32* %7)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %14
  %22 = load i32, i32* @thread, align 4
  %23 = call i32 @pthread_create(i32* %6, i32* null, i32 %22, i32* %7)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pthread_join(i32 %24, i32* null)
  %26 = call i32 @pthread_mutex_unlock(i32* %7)
  %27 = call i64 @pthread_mutex_isowned_np(i32* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %21
  %33 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @pthread_mutex_isowned_np(i32*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
