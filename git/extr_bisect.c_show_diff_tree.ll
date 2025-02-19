; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_show_diff_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_show_diff_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i32 }
%struct.rev_info = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"diff-tree\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"--pretty\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--stat\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"--summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"--cc\00", align 1
@git_diff_ui_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i8*, %struct.commit*)* @show_diff_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_diff_tree(%struct.repository* %0, i8* %1, %struct.commit* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca [6 x i8*], align 16
  %8 = alloca %struct.rev_info, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.commit* %2, %struct.commit** %6, align 8
  %9 = bitcast [6 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 48, i1 false)
  %10 = bitcast i8* %9 to [6 x i8*]*
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %15, align 16
  %16 = load i32, i32* @git_diff_ui_config, align 4
  %17 = call i32 @git_config(i32 %16, i32* null)
  %18 = load %struct.repository*, %struct.repository** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @repo_init_revisions(%struct.repository* %18, %struct.rev_info* %8, i8* %19)
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %22 = call i64 @ARRAY_SIZE(i8** %21)
  %23 = sub nsw i64 %22, 1
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %25 = call i32 @setup_revisions(i64 %23, i8** %24, %struct.rev_info* %8, i32* null)
  %26 = load %struct.commit*, %struct.commit** %6, align 8
  %27 = call i32 @log_tree_commit(%struct.rev_info* %8, %struct.commit* %26)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i8*) #2

declare dso_local i32 @setup_revisions(i64, i8**, %struct.rev_info*, i32*) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @log_tree_commit(%struct.rev_info*, %struct.commit*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
