; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_push_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_push_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"keep-index\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"keep index\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"stash in patch mode\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"quiet mode\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"include-untracked\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"include untracked files in stash\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"include ignore files\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"stash message\00", align 1
@git_stash_push_usage = common dso_local global i32 0, align 4
@PATHSPEC_PREFER_FULL = common dso_local global i32 0, align 4
@PATHSPEC_PREFIX_ORIGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @push_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_stash(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pathspec, align 4
  %13 = alloca [7 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %14 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %13, i64 0, i64 0
  %15 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @OPT_BOOL(i8 zeroext 107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %7, i32 %15)
  %17 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %19 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @OPT_BOOL(i8 zeroext 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 %19)
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %23 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @OPT__QUIET(i32* %10, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %27 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 @OPT_BOOL(i8 zeroext 117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32 %27)
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %31 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %32 = call i32 @OPT_SET_INT(i8 signext 97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %9, i32 %31, i32 2)
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %35 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %36 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %37 = call i32 @OPT_STRING(i8 signext 109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %11, i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %40 = call i32 (...) @OPT_END()
  %41 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %13, i64 0, i64 0
  %49 = load i32, i32* @git_stash_push_usage, align 4
  %50 = call i32 @parse_options(i32 %45, i8** %46, i8* %47, %struct.option* %48, i32 %49, i32 0)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %3
  %52 = load i32, i32* @PATHSPEC_PREFER_FULL, align 4
  %53 = load i32, i32* @PATHSPEC_PREFIX_ORIGIN, align 4
  %54 = or i32 %52, %53
  %55 = load i8*, i8** %6, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = call i32 @parse_pathspec(%struct.pathspec* %12, i32 0, i32 %54, i8* %55, i8** %56)
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @do_push_stash(%struct.pathspec* %12, i8* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  ret i32 %63
}

declare dso_local i32 @OPT_BOOL(i8 zeroext, i8*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT__QUIET(i32*, i32) #1

declare dso_local i32 @OPT_SET_INT(i8 signext, i8*, i32*, i32, i32) #1

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i8**, i32, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @parse_pathspec(%struct.pathspec*, i32, i32, i8*, i8**) #1

declare dso_local i32 @do_push_stash(%struct.pathspec*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
