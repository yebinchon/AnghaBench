; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_threaded_second_pass.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_threaded_second_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@progress = common dso_local global i32 0, align 4
@nr_resolved_deltas = common dso_local global i32 0, align 4
@nr_dispatched = common dso_local global i64 0, align 8
@nr_objects = common dso_local global i64 0, align 8
@objects = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @threaded_second_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @threaded_second_pass(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @set_thread_data(i8* %4)
  br label %6

6:                                                ; preds = %36, %1
  %7 = call i32 (...) @counter_lock()
  %8 = load i32, i32* @progress, align 4
  %9 = load i32, i32* @nr_resolved_deltas, align 4
  %10 = call i32 @display_progress(i32 %8, i32 %9)
  %11 = call i32 (...) @counter_unlock()
  %12 = call i32 (...) @work_lock()
  br label %13

13:                                               ; preds = %27, %6
  %14 = load i64, i64* @nr_dispatched, align 8
  %15 = load i64, i64* @nr_objects, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objects, align 8
  %19 = load i64, i64* @nr_dispatched, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @is_delta_type(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %17, %13
  %26 = phi i1 [ false, %13 ], [ %24, %17 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i64, i64* @nr_dispatched, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @nr_dispatched, align 8
  br label %13

30:                                               ; preds = %25
  %31 = load i64, i64* @nr_dispatched, align 8
  %32 = load i64, i64* @nr_objects, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @work_unlock()
  br label %46

36:                                               ; preds = %30
  %37 = load i64, i64* @nr_dispatched, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* @nr_dispatched, align 8
  %39 = trunc i64 %37 to i32
  store i32 %39, i32* %3, align 4
  %40 = call i32 (...) @work_unlock()
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objects, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = call i32 @resolve_base(%struct.TYPE_3__* %44)
  br label %6

46:                                               ; preds = %34
  ret i8* null
}

declare dso_local i32 @set_thread_data(i8*) #1

declare dso_local i32 @counter_lock(...) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @counter_unlock(...) #1

declare dso_local i32 @work_lock(...) #1

declare dso_local i64 @is_delta_type(i32) #1

declare dso_local i32 @work_unlock(...) #1

declare dso_local i32 @resolve_base(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
