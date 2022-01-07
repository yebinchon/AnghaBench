; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_get_work.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_get_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_item = type { i32 }

@todo_start = common dso_local global i64 0, align 8
@todo_end = common dso_local global i64 0, align 8
@all_work_added = common dso_local global i64 0, align 8
@cond_add = common dso_local global i32 0, align 4
@grep_mutex = common dso_local global i32 0, align 4
@todo = common dso_local global %struct.work_item* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.work_item* ()* @get_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.work_item* @get_work() #0 {
  %1 = alloca %struct.work_item*, align 8
  %2 = call i32 (...) @grep_lock()
  br label %3

3:                                                ; preds = %13, %0
  %4 = load i64, i64* @todo_start, align 8
  %5 = load i64, i64* @todo_end, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i64, i64* @all_work_added, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i1 [ false, %3 ], [ %10, %7 ]
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = call i32 @pthread_cond_wait(i32* @cond_add, i32* @grep_mutex)
  br label %3

15:                                               ; preds = %11
  %16 = load i64, i64* @todo_start, align 8
  %17 = load i64, i64* @todo_end, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* @all_work_added, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store %struct.work_item* null, %struct.work_item** %1, align 8
  br label %32

23:                                               ; preds = %19, %15
  %24 = load %struct.work_item*, %struct.work_item** @todo, align 8
  %25 = load i64, i64* @todo_start, align 8
  %26 = getelementptr inbounds %struct.work_item, %struct.work_item* %24, i64 %25
  store %struct.work_item* %26, %struct.work_item** %1, align 8
  %27 = load i64, i64* @todo_start, align 8
  %28 = add i64 %27, 1
  %29 = load %struct.work_item*, %struct.work_item** @todo, align 8
  %30 = call i64 @ARRAY_SIZE(%struct.work_item* %29)
  %31 = urem i64 %28, %30
  store i64 %31, i64* @todo_start, align 8
  br label %32

32:                                               ; preds = %23, %22
  %33 = call i32 (...) @grep_unlock()
  %34 = load %struct.work_item*, %struct.work_item** %1, align 8
  ret %struct.work_item* %34
}

declare dso_local i32 @grep_lock(...) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.work_item*) #1

declare dso_local i32 @grep_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
