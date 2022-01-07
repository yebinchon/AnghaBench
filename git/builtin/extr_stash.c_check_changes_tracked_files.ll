; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_check_changes_tracked_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_check_changes_tracked_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32 }
%struct.rev_info = type { i32, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec*)* @check_changes_tracked_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_changes_tracked_files(%struct.pathspec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pathspec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info, align 8
  %6 = alloca %struct.object_id, align 4
  %7 = alloca i32, align 4
  store %struct.pathspec* %0, %struct.pathspec** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  %12 = call i64 (...) @read_cache()
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %50

15:                                               ; preds = %11
  %16 = call i32 @init_revisions(%struct.rev_info* %5, i32* null)
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %18 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %19 = call i32 @copy_pathspec(i32* %17, %struct.pathspec* %18)
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = call i32 @add_head_to_pending(%struct.rev_info* %5)
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 1
  %29 = call i32 @diff_setup_done(%struct.TYPE_5__* %28)
  %30 = call i32 @run_diff_index(%struct.rev_info* %5, i32 1)
  store i32 %30, i32* %4, align 4
  %31 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 1
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @diff_result_code(%struct.TYPE_5__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %46

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 2
  %38 = call i32 @object_array_clear(i32* %37)
  %39 = call i32 @run_diff_files(%struct.rev_info* %5, i32 0)
  store i32 %39, i32* %4, align 4
  %40 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 1
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @diff_result_code(%struct.TYPE_5__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %46

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %44, %35
  %47 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %48 = call i32 @clear_pathspec(i32* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %14, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @init_revisions(%struct.rev_info*, i32*) #1

declare dso_local i32 @copy_pathspec(i32*, %struct.pathspec*) #1

declare dso_local i32 @add_head_to_pending(%struct.rev_info*) #1

declare dso_local i32 @diff_setup_done(%struct.TYPE_5__*) #1

declare dso_local i32 @run_diff_index(%struct.rev_info*, i32) #1

declare dso_local i64 @diff_result_code(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @object_array_clear(i32*) #1

declare dso_local i32 @run_diff_files(%struct.rev_info*, i32) #1

declare dso_local i32 @clear_pathspec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
