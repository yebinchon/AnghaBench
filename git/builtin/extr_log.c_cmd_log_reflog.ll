; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log_reflog.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32, i32, i32, i32 }
%struct.setup_revision_opt = type { i8* }

@git_log_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@CMIT_FMT_ONELINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_log_reflog(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rev_info, align 4
  %8 = alloca %struct.setup_revision_opt, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 (...) @init_log_defaults()
  %10 = load i32, i32* @git_log_config, align 4
  %11 = call i32 @git_config(i32 %10, i32* null)
  %12 = load i32, i32* @the_repository, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @repo_init_revisions(i32 %12, %struct.rev_info* %7, i8* %13)
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 5
  %16 = call i32 @init_reflog_walk(i32* %15)
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = call i32 @memset(%struct.setup_revision_opt* %8, i32 0, i32 8)
  %19 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = call i32 @cmd_log_init_defaults(%struct.rev_info* %7)
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @CMIT_FMT_ONELINE, align 4
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 3
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @cmd_log_init_finish(i32 %26, i8** %27, i8* %28, %struct.rev_info* %7, %struct.setup_revision_opt* %8)
  %30 = call i32 @cmd_log_walk(%struct.rev_info* %7)
  ret i32 %30
}

declare dso_local i32 @init_log_defaults(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i32 @init_reflog_walk(i32*) #1

declare dso_local i32 @memset(%struct.setup_revision_opt*, i32, i32) #1

declare dso_local i32 @cmd_log_init_defaults(%struct.rev_info*) #1

declare dso_local i32 @cmd_log_init_finish(i32, i8**, i8*, %struct.rev_info*, %struct.setup_revision_opt*) #1

declare dso_local i32 @cmd_log_walk(%struct.rev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
