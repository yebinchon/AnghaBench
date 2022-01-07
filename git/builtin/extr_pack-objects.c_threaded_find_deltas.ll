; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_threaded_find_deltas.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_threaded_find_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_params = type { i32, i64, i32, i64, i32, i32, i32, i64, i32 }

@progress_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @threaded_find_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @threaded_find_deltas(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_params*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.thread_params*
  store %struct.thread_params* %5, %struct.thread_params** %3, align 8
  %6 = call i32 (...) @progress_lock()
  br label %7

7:                                                ; preds = %49, %1
  %8 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %9 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %7
  %13 = call i32 (...) @progress_unlock()
  %14 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %15 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %18 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %17, i32 0, i32 7
  %19 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %20 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %23 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %26 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @find_deltas(i32 %16, i64* %18, i32 %21, i32 %24, i32 %27)
  %29 = call i32 (...) @progress_lock()
  %30 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %31 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = call i32 @pthread_cond_signal(i32* @progress_cond)
  %33 = call i32 (...) @progress_unlock()
  %34 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %35 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %34, i32 0, i32 0
  %36 = call i32 @pthread_mutex_lock(i32* %35)
  br label %37

37:                                               ; preds = %43, %12
  %38 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %39 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %45 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %44, i32 0, i32 2
  %46 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %47 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %46, i32 0, i32 0
  %48 = call i32 @pthread_cond_wait(i32* %45, i32* %47)
  br label %37

49:                                               ; preds = %37
  %50 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %51 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.thread_params*, %struct.thread_params** %3, align 8
  %53 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %52, i32 0, i32 0
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  %55 = call i32 (...) @progress_lock()
  br label %7

56:                                               ; preds = %7
  %57 = call i32 (...) @progress_unlock()
  ret i8* null
}

declare dso_local i32 @progress_lock(...) #1

declare dso_local i32 @progress_unlock(...) #1

declare dso_local i32 @find_deltas(i32, i64*, i32, i32, i32) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
