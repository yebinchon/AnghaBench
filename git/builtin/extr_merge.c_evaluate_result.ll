; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_evaluate_result.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_evaluate_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DIFF_FORMAT_CALLBACK = common dso_local global i32 0, align 4
@count_diff_files = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @evaluate_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evaluate_result() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rev_info, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @the_repository, align 4
  %4 = call i32 @repo_init_revisions(i32 %3, %struct.rev_info* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %2, i32* null)
  %6 = load i32, i32* @DIFF_FORMAT_CALLBACK, align 4
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %2, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @count_diff_files, align 4
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %2, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %2, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* %1, i32** %15, align 8
  %16 = call i32 @run_diff_files(%struct.rev_info* %2, i32 0)
  %17 = call i64 (...) @count_unmerged_entries()
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, i32*) #1

declare dso_local i32 @run_diff_files(%struct.rev_info*, i32) #1

declare dso_local i64 @count_unmerged_entries(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
