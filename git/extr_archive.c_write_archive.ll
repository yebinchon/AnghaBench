; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_write_archive.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_write_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.repository = type { i32 }
%struct.archiver = type { i32 (%struct.archiver*, %struct.archiver_args*)* }
%struct.archiver_args = type { %struct.repository* }

@.str = private unnamed_addr constant [31 x i8] c"uploadarchive.allowunreachable\00", align 1
@remote_allow_unreachable = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_archive(i32 %0, i8** %1, i8* %2, %struct.repository* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.repository*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.archiver*, align 8
  %14 = alloca %struct.archiver_args, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.repository* %3, %struct.repository** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.archiver* null, %struct.archiver** %13, align 8
  %15 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* @remote_allow_unreachable)
  %16 = load i32, i32* @git_default_config, align 4
  %17 = call i32 @git_config(i32 %16, i32* null)
  %18 = load %struct.repository*, %struct.repository** %10, align 8
  %19 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %14, i32 0, i32 0
  store %struct.repository* %18, %struct.repository** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @parse_archive_args(i32 %20, i8** %21, %struct.archiver** %13, %struct.archiver_args* %14, i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = call i32 (...) @setup_git_directory()
  br label %31

31:                                               ; preds = %29, %6
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @parse_treeish_arg(i8** %32, %struct.archiver_args* %14, i8* %33, i32 %34)
  %36 = load i8**, i8*** %8, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = call i32 @parse_pathspec_arg(i8** %37, %struct.archiver_args* %14)
  %39 = load %struct.archiver*, %struct.archiver** %13, align 8
  %40 = getelementptr inbounds %struct.archiver, %struct.archiver* %39, i32 0, i32 0
  %41 = load i32 (%struct.archiver*, %struct.archiver_args*)*, i32 (%struct.archiver*, %struct.archiver_args*)** %40, align 8
  %42 = load %struct.archiver*, %struct.archiver** %13, align 8
  %43 = call i32 %41(%struct.archiver* %42, %struct.archiver_args* %14)
  ret i32 %43
}

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_archive_args(i32, i8**, %struct.archiver**, %struct.archiver_args*, i8*, i32) #1

declare dso_local i32 @setup_git_directory(...) #1

declare dso_local i32 @parse_treeish_arg(i8**, %struct.archiver_args*, i8*, i32) #1

declare dso_local i32 @parse_pathspec_arg(i8**, %struct.archiver_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
