; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-ignore.c_cmd_check_ignore.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-ignore.c_cmd_check_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32 }

@git_default_config = common dso_local global i32 0, align 4
@check_ignore_options = common dso_local global i32 0, align 4
@check_ignore_usage = common dso_local global i32 0, align 4
@stdin_paths = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"cannot specify pathnames with --stdin\00", align 1
@nul_term_line = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"-z only makes sense with --stdin\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"no path specified\00", align 1
@quiet = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"--quiet is only valid with a single pathname\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"cannot have both --quiet and --verbose\00", align 1
@show_non_matching = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"--non-matching is only valid with --verbose\00", align 1
@no_index = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"ignore to stdout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_check_ignore(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dir_struct, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @git_default_config, align 4
  %10 = call i32 @git_config(i32 %9, i32* null)
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @check_ignore_options, align 4
  %15 = load i32, i32* @check_ignore_usage, align 4
  %16 = call i32 @parse_options(i32 %11, i8** %12, i8* %13, i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i64, i64* @stdin_paths, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @die(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %39

26:                                               ; preds = %3
  %27 = load i64, i64* @nul_term_line, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @die(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @die(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i64, i64* @quiet, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @die(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @verbose, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 @die(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i64, i64* @show_non_matching, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* @verbose, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %63 = call i32 @die(i32 %62)
  br label %64

64:                                               ; preds = %61, %58, %55
  %65 = load i32, i32* @no_index, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = call i64 (...) @read_cache()
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %72 = call i32 @die(i32 %71)
  br label %73

73:                                               ; preds = %70, %67, %64
  %74 = call i32 @memset(%struct.dir_struct* %8, i32 0, i32 4)
  %75 = call i32 @setup_standard_excludes(%struct.dir_struct* %8)
  %76 = load i64, i64* @stdin_paths, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @check_ignore_stdin_paths(%struct.dir_struct* %8, i8* %79)
  store i32 %80, i32* %7, align 4
  br label %88

81:                                               ; preds = %73
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i8**, i8*** %5, align 8
  %85 = call i32 @check_ignore(%struct.dir_struct* %8, i8* %82, i32 %83, i8** %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @stdout, align 4
  %87 = call i32 @maybe_flush_or_die(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %88

88:                                               ; preds = %81, %78
  %89 = call i32 @clear_directory(%struct.dir_struct* %8)
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  ret i32 %93
}

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @memset(%struct.dir_struct*, i32, i32) #1

declare dso_local i32 @setup_standard_excludes(%struct.dir_struct*) #1

declare dso_local i32 @check_ignore_stdin_paths(%struct.dir_struct*, i8*) #1

declare dso_local i32 @check_ignore(%struct.dir_struct*, i8*, i32, i8**) #1

declare dso_local i32 @maybe_flush_or_die(i32, i8*) #1

declare dso_local i32 @clear_directory(%struct.dir_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
