; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.setup_revision_opt = type { i8*, i32, i32 }

@git_log_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REVARG_COMMITTISH = common dso_local global i32 0, align 4
@log_setup_revisions_tweak = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_log(i32 %0, i8** %1, i8* %2) #0 {
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
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = call i32 @memset(%struct.setup_revision_opt* %8, i32 0, i32 16)
  %17 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @REVARG_COMMITTISH, align 4
  %19 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @log_setup_revisions_tweak, align 4
  %21 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @cmd_log_init(i32 %22, i8** %23, i8* %24, %struct.rev_info* %7, %struct.setup_revision_opt* %8)
  %26 = call i32 @cmd_log_walk(%struct.rev_info* %7)
  ret i32 %26
}

declare dso_local i32 @init_log_defaults(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i32 @memset(%struct.setup_revision_opt*, i32, i32) #1

declare dso_local i32 @cmd_log_init(i32, i8**, i8*, %struct.rev_info*, %struct.setup_revision_opt*) #1

declare dso_local i32 @cmd_log_walk(%struct.rev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
