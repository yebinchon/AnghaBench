; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_submodules.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_update_clone = type { i32, i32*, i64, i32 }

@update_clone_get_next_task = common dso_local global i32 0, align 4
@update_clone_start_failure = common dso_local global i32 0, align 4
@update_clone_task_finished = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"parallel/update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.submodule_update_clone*)* @update_submodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_submodules(%struct.submodule_update_clone* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.submodule_update_clone*, align 8
  %4 = alloca i32, align 4
  store %struct.submodule_update_clone* %0, %struct.submodule_update_clone** %3, align 8
  %5 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %3, align 8
  %6 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @update_clone_get_next_task, align 4
  %9 = load i32, i32* @update_clone_start_failure, align 4
  %10 = load i32, i32* @update_clone_task_finished, align 4
  %11 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %3, align 8
  %12 = call i32 @run_processes_parallel_tr2(i32 %7, i32 %8, i32 %9, i32 %10, %struct.submodule_update_clone* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %3, align 8
  %14 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %3, align 8
  %22 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %3, align 8
  %27 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @update_submodule(i32* %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %19

36:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @run_processes_parallel_tr2(i32, i32, i32, i32, %struct.submodule_update_clone*, i8*, i8*) #1

declare dso_local i32 @update_submodule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
