; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-ignore.c_check_ignore.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-ignore.c_check_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32 }
%struct.path_pattern = type { i32 }
%struct.pathspec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no pathspec given.\0A\00", align 1
@PATHSPEC_ALL_MAGIC = common dso_local global i32 0, align 4
@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@PATHSPEC_SYMLINK_LEADING_PATH = common dso_local global i32 0, align 4
@PATHSPEC_KEEP_ORDER = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@show_non_matching = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, i8*, i32, i8**)* @check_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ignore(%struct.dir_struct* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dir_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.path_pattern*, align 8
  %15 = alloca %struct.pathspec, align 8
  %16 = alloca i32, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @quiet, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  store i32 0, i32* %5, align 4
  br label %96

26:                                               ; preds = %4
  %27 = load i32, i32* @PATHSPEC_ALL_MAGIC, align 4
  %28 = load i32, i32* @PATHSPEC_FROMTOP, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* @PATHSPEC_SYMLINK_LEADING_PATH, align 4
  %32 = load i32, i32* @PATHSPEC_KEEP_ORDER, align 4
  %33 = or i32 %31, %32
  %34 = load i8*, i8** %7, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = call i32 @parse_pathspec(%struct.pathspec* %15, i32 %30, i32 %33, i8* %34, i8** %35)
  %37 = call i32 @die_path_inside_submodule(i32* @the_index, %struct.pathspec* %15)
  %38 = call i8* @find_pathspecs_matching_against_index(%struct.pathspec* %15, i32* @the_index)
  store i8* %38, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %89, %26
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %15, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %15, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %10, align 8
  store %struct.path_pattern* null, %struct.path_pattern** %14, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %59, i32* %16, align 4
  %60 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call %struct.path_pattern* @last_matching_pattern(%struct.dir_struct* %60, i32* @the_index, i8* %61, i32* %16)
  store %struct.path_pattern* %62, %struct.path_pattern** %14, align 8
  br label %63

63:                                               ; preds = %58, %44
  %64 = load i32, i32* @quiet, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %63
  %67 = load %struct.path_pattern*, %struct.path_pattern** %14, align 8
  %68 = icmp ne %struct.path_pattern* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* @show_non_matching, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69, %66
  %73 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %15, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.path_pattern*, %struct.path_pattern** %14, align 8
  %81 = call i32 @output_pattern(i32 %79, %struct.path_pattern* %80)
  br label %82

82:                                               ; preds = %72, %69, %63
  %83 = load %struct.path_pattern*, %struct.path_pattern** %14, align 8
  %84 = icmp ne %struct.path_pattern* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %39

92:                                               ; preds = %39
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %25
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @parse_pathspec(%struct.pathspec*, i32, i32, i8*, i8**) #1

declare dso_local i32 @die_path_inside_submodule(i32*, %struct.pathspec*) #1

declare dso_local i8* @find_pathspecs_matching_against_index(%struct.pathspec*, i32*) #1

declare dso_local %struct.path_pattern* @last_matching_pattern(%struct.dir_struct*, i32*, i8*, i32*) #1

declare dso_local i32 @output_pattern(i32, %struct.path_pattern*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
