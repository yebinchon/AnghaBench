; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_cleanup_thread.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_cleanup_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@threads_active = common dso_local global i64 0, align 8
@read_mutex = common dso_local global i32 0, align 4
@counter_mutex = common dso_local global i32 0, align 4
@work_mutex = common dso_local global i32 0, align 4
@type_cas_mutex = common dso_local global i32 0, align 4
@show_stat = common dso_local global i64 0, align 8
@deepest_delta_mutex = common dso_local global i32 0, align 4
@nr_threads = common dso_local global i32 0, align 4
@thread_data = common dso_local global %struct.TYPE_3__* null, align 8
@key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_thread() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @threads_active, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %35

5:                                                ; preds = %0
  store i64 0, i64* @threads_active, align 8
  %6 = call i32 @pthread_mutex_destroy(i32* @read_mutex)
  %7 = call i32 @pthread_mutex_destroy(i32* @counter_mutex)
  %8 = call i32 @pthread_mutex_destroy(i32* @work_mutex)
  %9 = call i32 @pthread_mutex_destroy(i32* @type_cas_mutex)
  %10 = load i64, i64* @show_stat, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = call i32 @pthread_mutex_destroy(i32* @deepest_delta_mutex)
  br label %14

14:                                               ; preds = %12, %5
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %27, %14
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @nr_threads, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_data, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @close(i32 %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load i32, i32* @key, align 4
  %32 = call i32 @pthread_key_delete(i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_data, align 8
  %34 = call i32 @free(%struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %30, %4
  ret void
}

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_key_delete(i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
