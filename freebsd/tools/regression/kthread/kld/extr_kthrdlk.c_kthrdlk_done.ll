; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/kthread/kld/extr_kthrdlk.c_kthrdlk_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/kthread/kld/extr_kthrdlk.c_kthrdlk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"sending QUIT signal to the thrdlk threads\0A\00", align 1
@test_global_lock = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@test_thrcnt = common dso_local global i64 0, align 8
@global_condvar = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"waiting thrs end\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"some threads not die! remaining: %d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"All test_pause threads die\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kthrdlk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kthrdlk_done() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @DPRINTF(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @mtx_lock(i32* @test_global_lock)
  store i32 1, i32* @QUIT, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i64, i64* @test_thrcnt, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load i32, i32* @hz, align 4
  %9 = mul nsw i32 30, %8
  %10 = call i32 @mtx_sleep(i32* @global_condvar, i32* @test_global_lock, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @EWOULDBLOCK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i64, i64* @test_thrcnt, align 8
  %16 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %15)
  br label %18

17:                                               ; preds = %7
  br label %4

18:                                               ; preds = %14, %4
  %19 = load i64, i64* @test_thrcnt, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 @mtx_destroy(i32* @test_global_lock)
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
