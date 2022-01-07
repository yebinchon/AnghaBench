; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_process_directory.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_process_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8*, i32 }
%struct.stat = type { i32 }
%struct.object_id = type { i32 }

@active_cache = common dso_local global %struct.cache_entry** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@active_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: is a directory - add individual files instead\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: is a directory - add files inside instead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.stat*)* @process_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_directory(i8* %0, i32 %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.stat* %2, %struct.stat** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @cache_name_pos(i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %18, i64 %20
  %22 = load %struct.cache_entry*, %struct.cache_entry** %21, align 8
  store %struct.cache_entry* %22, %struct.cache_entry** %10, align 8
  %23 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @S_ISGITLINK(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @resolve_gitlink_ref(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %8)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %102

33:                                               ; preds = %28
  %34 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.stat*, %struct.stat** %7, align 8
  %38 = call i32 @add_one_path(%struct.cache_entry* %34, i8* %35, i32 %36, %struct.stat* %37)
  store i32 %38, i32* %4, align 4
  br label %102

39:                                               ; preds = %17
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @remove_one_path(i8* %40)
  store i32 %41, i32* %4, align 4
  br label %102

42:                                               ; preds = %3
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 0, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %86, %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @active_nr, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %46
  %51 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %51, i64 %54
  %56 = load %struct.cache_entry*, %struct.cache_entry** %55, align 8
  store %struct.cache_entry* %56, %struct.cache_entry** %11, align 8
  %57 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @strncmp(i8* %59, i8* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %90

65:                                               ; preds = %50
  %66 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %67 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %73, 47
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %90

76:                                               ; preds = %65
  %77 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %78 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp slt i32 %84, 47
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %46

87:                                               ; preds = %76
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  store i32 %89, i32* %4, align 4
  br label %102

90:                                               ; preds = %75, %64, %46
  %91 = load i8*, i8** %5, align 8
  %92 = call i64 @resolve_gitlink_ref(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %8)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.stat*, %struct.stat** %7, align 8
  %98 = call i32 @add_one_path(%struct.cache_entry* null, i8* %95, i32 %96, %struct.stat* %97)
  store i32 %98, i32* %4, align 4
  br label %102

99:                                               ; preds = %90
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %94, %87, %39, %33, %32
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @cache_name_pos(i8*, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @resolve_gitlink_ref(i8*, i8*, %struct.object_id*) #1

declare dso_local i32 @add_one_path(%struct.cache_entry*, i8*, i32, %struct.stat*) #1

declare dso_local i32 @remove_one_path(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
