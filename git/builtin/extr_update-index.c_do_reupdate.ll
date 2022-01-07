; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_do_reupdate.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_do_reupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i64, i32, i32 }
%struct.pathspec = type { i32 }

@PATHSPEC_PREFER_CWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@head_oid = common dso_local global i32 0, align 4
@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@the_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @do_reupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reupdate(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %8, align 4
  %14 = load i32, i32* @PATHSPEC_PREFER_CWD, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = call i32 @parse_pathspec(%struct.pathspec* %9, i32 0, i32 %14, i8* %15, i8** %17)
  %19 = call i64 @read_ref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* @head_oid)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %3
  br label %23

23:                                               ; preds = %88, %22
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %90, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @active_nr, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %24
  %29 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %29, i64 %31
  %33 = load %struct.cache_entry*, %struct.cache_entry** %32, align 8
  store %struct.cache_entry* %33, %struct.cache_entry** %10, align 8
  store %struct.cache_entry* null, %struct.cache_entry** %11, align 8
  %34 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %35 = call i64 @ce_stage(%struct.cache_entry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %39 = call i32 @ce_path_match(i32* @the_index, %struct.cache_entry* %38, %struct.pathspec* %9, i32* null)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %28
  br label %90

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %50 = call i32 @ce_namelen(%struct.cache_entry* %49)
  %51 = call %struct.cache_entry* @read_one_ent(i32* null, i32* @head_oid, i32 %48, i32 %50, i32 0)
  store %struct.cache_entry* %51, %struct.cache_entry** %11, align 8
  br label %52

52:                                               ; preds = %45, %42
  %53 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %54 = icmp ne %struct.cache_entry* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %57 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %60 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %65 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %64, i32 0, i32 2
  %66 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %67 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %66, i32 0, i32 2
  %68 = call i64 @oideq(i32* %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %72 = call i32 @discard_cache_entry(%struct.cache_entry* %71)
  br label %90

73:                                               ; preds = %63, %55, %52
  %74 = load i32, i32* @active_nr, align 4
  store i32 %74, i32* %12, align 4
  %75 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %76 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @xstrdup(i32 %77)
  store i8* %78, i8** %13, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @update_one(i8* %79)
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %84 = call i32 @discard_cache_entry(%struct.cache_entry* %83)
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @active_nr, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %23

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %70, %41
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %24

93:                                               ; preds = %24
  %94 = call i32 @clear_pathspec(%struct.pathspec* %9)
  ret i32 0
}

declare dso_local i32 @parse_pathspec(%struct.pathspec*, i32, i32, i8*, i8**) #1

declare dso_local i64 @read_ref(i8*, i32*) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @ce_path_match(i32*, %struct.cache_entry*, %struct.pathspec*, i32*) #1

declare dso_local %struct.cache_entry* @read_one_ent(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @update_one(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @clear_pathspec(%struct.pathspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
