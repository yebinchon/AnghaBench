; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_get_thread_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_get_thread_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_local = type { i32 }

@HAVE_THREADS = common dso_local global i64 0, align 8
@threads_active = common dso_local global i64 0, align 8
@key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"This should only be reached when all threads are gone\00", align 1
@nothread_data = common dso_local global %struct.thread_local zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_local* ()* @get_thread_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_local* @get_thread_data() #0 {
  %1 = alloca %struct.thread_local*, align 8
  %2 = load i64, i64* @HAVE_THREADS, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  %5 = load i64, i64* @threads_active, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @key, align 4
  %9 = call %struct.thread_local* @pthread_getspecific(i32 %8)
  store %struct.thread_local* %9, %struct.thread_local** %1, align 8
  br label %19

10:                                               ; preds = %4
  %11 = load i64, i64* @threads_active, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i1 [ false, %10 ], [ true, %13 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %18

18:                                               ; preds = %14, %0
  store %struct.thread_local* @nothread_data, %struct.thread_local** %1, align 8
  br label %19

19:                                               ; preds = %18, %7
  %20 = load %struct.thread_local*, %struct.thread_local** %1, align 8
  ret %struct.thread_local* %20
}

declare dso_local %struct.thread_local* @pthread_getspecific(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
