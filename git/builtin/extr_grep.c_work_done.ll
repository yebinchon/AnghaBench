; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_work_done.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_work_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_item = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@todo_done = common dso_local global i64 0, align 8
@todo = common dso_local global %struct.work_item* null, align 8
@todo_start = common dso_local global i64 0, align 8
@skip_first_line = common dso_local global i64 0, align 8
@cond_write = common dso_local global i32 0, align 4
@all_work_added = common dso_local global i64 0, align 8
@todo_end = common dso_local global i64 0, align 8
@cond_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_item*)* @work_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @work_done(%struct.work_item* %0) #0 {
  %2 = alloca %struct.work_item*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.work_item* %0, %struct.work_item** %2, align 8
  %6 = call i32 (...) @grep_lock()
  %7 = load %struct.work_item*, %struct.work_item** %2, align 8
  %8 = getelementptr inbounds %struct.work_item, %struct.work_item* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i64, i64* @todo_done, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %67, %1
  %12 = load %struct.work_item*, %struct.work_item** @todo, align 8
  %13 = load i64, i64* @todo_done, align 8
  %14 = getelementptr inbounds %struct.work_item, %struct.work_item* %12, i64 %13
  %15 = getelementptr inbounds %struct.work_item, %struct.work_item* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i64, i64* @todo_done, align 8
  %20 = load i64, i64* @todo_start, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i1 [ false, %11 ], [ %21, %18 ]
  br i1 %23, label %24, label %73

24:                                               ; preds = %22
  %25 = load %struct.work_item*, %struct.work_item** @todo, align 8
  %26 = load i64, i64* @todo_done, align 8
  %27 = getelementptr inbounds %struct.work_item, %struct.work_item* %25, i64 %26
  store %struct.work_item* %27, %struct.work_item** %2, align 8
  %28 = load %struct.work_item*, %struct.work_item** %2, align 8
  %29 = getelementptr inbounds %struct.work_item, %struct.work_item* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %24
  %34 = load %struct.work_item*, %struct.work_item** %2, align 8
  %35 = getelementptr inbounds %struct.work_item, %struct.work_item* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  %38 = load %struct.work_item*, %struct.work_item** %2, align 8
  %39 = getelementptr inbounds %struct.work_item, %struct.work_item* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* @skip_first_line, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %58

57:                                               ; preds = %48
  br label %45

58:                                               ; preds = %56, %45
  store i64 0, i64* @skip_first_line, align 8
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @write_or_die(i32 1, i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %24
  %64 = load %struct.work_item*, %struct.work_item** %2, align 8
  %65 = getelementptr inbounds %struct.work_item, %struct.work_item* %64, i32 0, i32 1
  %66 = call i32 @grep_source_clear(i32* %65)
  br label %67

67:                                               ; preds = %63
  %68 = load i64, i64* @todo_done, align 8
  %69 = add i64 %68, 1
  %70 = load %struct.work_item*, %struct.work_item** @todo, align 8
  %71 = call i64 @ARRAY_SIZE(%struct.work_item* %70)
  %72 = urem i64 %69, %71
  store i64 %72, i64* @todo_done, align 8
  br label %11

73:                                               ; preds = %22
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @todo_done, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @pthread_cond_signal(i32* @cond_write)
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i64, i64* @all_work_added, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i64, i64* @todo_done, align 8
  %85 = load i64, i64* @todo_end, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @pthread_cond_signal(i32* @cond_result)
  br label %89

89:                                               ; preds = %87, %83, %80
  %90 = call i32 (...) @grep_unlock()
  ret void
}

declare dso_local i32 @grep_lock(...) #1

declare dso_local i32 @write_or_die(i32, i8*, i64) #1

declare dso_local i32 @grep_source_clear(i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.work_item*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @grep_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
