; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/kthread/kld/extr_kthrdlk.c_kthrdlk_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/kthread/kld/extr_kthrdlk.c_kthrdlk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { i32 }

@QUIT = common dso_local global i64 0, align 8
@test_thrcnt = common dso_local global i32 0, align 4
@test_global_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kthrdlk_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@thr_getsuspended = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"kthrdlk\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"thr_getsuspended\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"cannot start thr_getsuspended error: %d\0A\00", align 1
@thr_resumer = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"thr_resumer\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"cannot start thr_resumer error: %d\0A\00", align 1
@thr_suspender = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"thr_suspender\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"cannot start thr_suspender error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kthrdlk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kthrdlk_init() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* @QUIT, align 8
  store i32 3, i32* @test_thrcnt, align 4
  %4 = load i32, i32* @MTX_DEF, align 4
  %5 = call i32 @mtx_init(i32* @test_global_lock, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4)
  store %struct.proc* null, %struct.proc** %1, align 8
  %6 = load i32, i32* @thr_getsuspended, align 4
  %7 = call i32 @kproc_kthread_add(i32 %6, %struct.thread* null, %struct.proc** %1, %struct.thread** %2, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* @thr_resumer, align 4
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = call i32 @kproc_kthread_add(i32 %14, %struct.thread* %15, %struct.proc** %1, %struct.thread** null, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* @thr_suspender, align 4
  %24 = load %struct.thread*, %struct.thread** %2, align 8
  %25 = call i32 @kproc_kthread_add(i32 %23, %struct.thread* %24, %struct.proc** %1, %struct.thread** null, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @kproc_kthread_add(i32, %struct.thread*, %struct.proc**, %struct.thread**, i32, i32, i8*, i8*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
