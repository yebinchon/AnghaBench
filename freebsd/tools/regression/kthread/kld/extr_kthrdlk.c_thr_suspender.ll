; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/kthread/kld/extr_kthrdlk.c_thr_suspender.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/kthread/kld/extr_kthrdlk.c_thr_suspender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Ooops: kthread deadlock\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"kthread_suspend error: %d\0A\00", align 1
@test_global_lock = common dso_local global i32 0, align 4
@test_thrcnt = common dso_local global i32 0, align 4
@global_condvar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thr_suspender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thr_suspender(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.thread*
  store %struct.thread* %6, %struct.thread** %3, align 8
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* @QUIT, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %32

11:                                               ; preds = %7
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = load i32, i32* @hz, align 4
  %14 = mul nsw i32 10, %13
  %15 = call i32 @kthread_suspend(%struct.thread* %12, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load i32, i32* @QUIT, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EWOULDBLOCK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %25
  br label %32

31:                                               ; preds = %18, %11
  br label %7

32:                                               ; preds = %30, %10
  %33 = call i32 @mtx_lock(i32* @test_global_lock)
  %34 = load i32, i32* @test_thrcnt, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @test_thrcnt, align 4
  %36 = call i32 @wakeup(i32* @global_condvar)
  %37 = call i32 @mtx_unlock(i32* @test_global_lock)
  %38 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @kthread_suspend(%struct.thread*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
