; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_run.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { %struct.work_item* }
%struct.work_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grep_opt*, align 8
  %5 = alloca %struct.work_item*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.grep_opt*
  store %struct.grep_opt* %7, %struct.grep_opt** %4, align 8
  br label %8

8:                                                ; preds = %1, %13
  %9 = call %struct.work_item* (...) @get_work()
  store %struct.work_item* %9, %struct.work_item** %5, align 8
  %10 = load %struct.work_item*, %struct.work_item** %5, align 8
  %11 = icmp ne %struct.work_item* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %28

13:                                               ; preds = %8
  %14 = load %struct.work_item*, %struct.work_item** %5, align 8
  %15 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %16 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %15, i32 0, i32 0
  store %struct.work_item* %14, %struct.work_item** %16, align 8
  %17 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %18 = load %struct.work_item*, %struct.work_item** %5, align 8
  %19 = getelementptr inbounds %struct.work_item, %struct.work_item* %18, i32 0, i32 0
  %20 = call i32 @grep_source(%struct.grep_opt* %17, i32* %19)
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.work_item*, %struct.work_item** %5, align 8
  %24 = getelementptr inbounds %struct.work_item, %struct.work_item* %23, i32 0, i32 0
  %25 = call i32 @grep_source_clear_data(i32* %24)
  %26 = load %struct.work_item*, %struct.work_item** %5, align 8
  %27 = call i32 @work_done(%struct.work_item* %26)
  br label %8

28:                                               ; preds = %12
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @free_grep_patterns(i8* %29)
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  ret i8* %35
}

declare dso_local %struct.work_item* @get_work(...) #1

declare dso_local i32 @grep_source(%struct.grep_opt*, i32*) #1

declare dso_local i32 @grep_source_clear_data(i32*) #1

declare dso_local i32 @work_done(%struct.work_item*) #1

declare dso_local i32 @free_grep_patterns(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
