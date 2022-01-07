; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_gcov_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_gcov_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32 }
%struct.gcov_node = type { i32 }

@node_lock = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not remove '%s' (not found)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gcov_info*)* @gcov_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcov_event(i32 %0, %struct.gcov_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca %struct.gcov_node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  %6 = call i32 @mtx_lock(i32* @node_lock)
  %7 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %8 = call i32 @gcov_info_filename(%struct.gcov_info* %7)
  %9 = call %struct.gcov_node* @get_node_by_name(i32 %8)
  store %struct.gcov_node* %9, %struct.gcov_node** %5, align 8
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 128, label %22
  ]

11:                                               ; preds = %2
  %12 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %13 = icmp ne %struct.gcov_node* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %16 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %17 = call i32 @add_info(%struct.gcov_node* %15, %struct.gcov_info* %16)
  br label %21

18:                                               ; preds = %11
  %19 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %20 = call i32 @add_node(%struct.gcov_info* %19)
  br label %21

21:                                               ; preds = %18, %14
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %24 = icmp ne %struct.gcov_node* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %27 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %28 = call i32 @remove_info(%struct.gcov_node* %26, %struct.gcov_info* %27)
  br label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @LOG_WARNING, align 4
  %31 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %32 = call i32 @gcov_info_filename(%struct.gcov_info* %31)
  %33 = call i32 @log(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  br label %35

35:                                               ; preds = %2, %34, %21
  %36 = call i32 @mtx_unlock(i32* @node_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.gcov_node* @get_node_by_name(i32) #1

declare dso_local i32 @gcov_info_filename(%struct.gcov_info*) #1

declare dso_local i32 @add_info(%struct.gcov_node*, %struct.gcov_info*) #1

declare dso_local i32 @add_node(%struct.gcov_info*) #1

declare dso_local i32 @remove_info(%struct.gcov_node*, %struct.gcov_info*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
