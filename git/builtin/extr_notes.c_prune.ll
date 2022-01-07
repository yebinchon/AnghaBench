; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_prune.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"do not remove, show only\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"report pruned notes\00", align 1
@git_notes_prune_usage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"too many parameters\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"prune\00", align 1
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@NOTES_PRUNE_VERBOSE = common dso_local global i32 0, align 4
@NOTES_PRUNE_DRYRUN = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Notes removed by 'git notes prune'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prune(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.notes_tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x %struct.option], align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %12 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @OPT__DRY_RUN(i32* %8, i32 %12)
  %14 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %16 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @OPT__VERBOSE(i32* %9, i32 %16)
  %18 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %20 = call i32 (...) @OPT_END()
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %26 = load i32, i32* @git_notes_prune_usage, align 4
  %27 = call i32 @parse_options(i32 %22, i8** %23, i8* %24, %struct.option* %25, i32 %26, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @error(i32 %31)
  %33 = load i32, i32* @git_notes_prune_usage, align 4
  %34 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %35 = call i32 @usage_with_options(i32 %33, %struct.option* %34)
  br label %36

36:                                               ; preds = %30, %3
  %37 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %38 = call %struct.notes_tree* @init_notes_check(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  store %struct.notes_tree* %38, %struct.notes_tree** %7, align 8
  %39 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @NOTES_PRUNE_VERBOSE, align 4
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @NOTES_PRUNE_VERBOSE, align 4
  %51 = load i32, i32* @NOTES_PRUNE_DRYRUN, align 4
  %52 = or i32 %50, %51
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ %52, %49 ], [ 0, %53 ]
  %56 = or i32 %46, %55
  %57 = call i32 @prune_notes(%struct.notes_tree* %39, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @the_repository, align 4
  %62 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %63 = call i32 @commit_notes(i32 %61, %struct.notes_tree* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %66 = call i32 @free_notes(%struct.notes_tree* %65)
  ret i32 0
}

declare dso_local i32 @OPT__DRY_RUN(i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT__VERBOSE(i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local %struct.notes_tree* @init_notes_check(i8*, i32) #1

declare dso_local i32 @prune_notes(%struct.notes_tree*, i32) #1

declare dso_local i32 @commit_notes(i32, %struct.notes_tree*, i8*) #1

declare dso_local i32 @free_notes(%struct.notes_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
