; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_ce.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.dir_struct = type { i32 }
%struct.cache_entry = type { i8*, i32, i32 }

@max_prefix_len = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"git ls-files: internal error - cache entry not superset of prefix\00", align 1
@recurse_submodules = common dso_local global i64 0, align 8
@pathspec = common dso_local global i32 0, align 4
@ps_matched = common dso_local global i32 0, align 4
@show_stage = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s%06o %s %d\09\00", align 1
@abbrev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.dir_struct*, %struct.cache_entry*, i8*, i8*)* @show_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_ce(%struct.repository* %0, %struct.dir_struct* %1, %struct.cache_entry* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.dir_struct*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.dir_struct* %1, %struct.dir_struct** %7, align 8
  store %struct.cache_entry* %2, %struct.cache_entry** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i64, i64* @max_prefix_len, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = icmp sgt i64 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @die(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %5
  %18 = load i64, i64* @recurse_submodules, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %22 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @S_ISGITLINK(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.repository*, %struct.repository** %6, align 8
  %28 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %29 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @is_submodule_active(%struct.repository* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.repository*, %struct.repository** %6, align 8
  %35 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %36 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @show_submodule(%struct.repository* %34, %struct.dir_struct* %35, i32 %38)
  br label %99

40:                                               ; preds = %26, %20, %17
  %41 = load %struct.repository*, %struct.repository** %6, align 8
  %42 = getelementptr inbounds %struct.repository, %struct.repository* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = load i64, i64* @max_prefix_len, align 8
  %48 = load i32, i32* @ps_matched, align 4
  %49 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %50 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @S_ISDIR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %40
  %55 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @S_ISGITLINK(i8* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %54, %40
  %61 = phi i1 [ true, %40 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @match_pathspec(i32 %43, i32* @pathspec, i8* %44, i64 %46, i64 %47, i32 %48, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %60
  %66 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @get_tag(%struct.cache_entry* %66, i8* %67)
  store i8* %68, i8** %10, align 8
  %69 = load i32, i32* @show_stage, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fputs(i8* %72, i32 %73)
  br label %87

75:                                               ; preds = %65
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %78 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %81 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %80, i32 0, i32 1
  %82 = load i32, i32* @abbrev, align 4
  %83 = call i32 @find_unique_abbrev(i32* %81, i32 %82)
  %84 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %85 = call i32 @ce_stage(%struct.cache_entry* %84)
  %86 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %76, i8* %79, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %75, %71
  %88 = load %struct.repository*, %struct.repository** %6, align 8
  %89 = getelementptr inbounds %struct.repository, %struct.repository* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @write_eolinfo(i32 %90, %struct.cache_entry* %91, i8* %92)
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @write_name(i8* %94)
  %96 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %97 = call i32 @print_debug(%struct.cache_entry* %96)
  br label %98

98:                                               ; preds = %87, %60
  br label %99

99:                                               ; preds = %98, %33
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @S_ISGITLINK(i8*) #1

declare dso_local i64 @is_submodule_active(%struct.repository*, i32) #1

declare dso_local i32 @show_submodule(%struct.repository*, %struct.dir_struct*, i32) #1

declare dso_local i64 @match_pathspec(i32, i32*, i8*, i64, i64, i32, i32) #1

declare dso_local i64 @S_ISDIR(i8*) #1

declare dso_local i8* @get_tag(%struct.cache_entry*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @find_unique_abbrev(i32*, i32) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @write_eolinfo(i32, %struct.cache_entry*, i8*) #1

declare dso_local i32 @write_name(i8*) #1

declare dso_local i32 @print_debug(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
