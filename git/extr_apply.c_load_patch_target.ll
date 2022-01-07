; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_load_patch_target.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_load_patch_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i64, i64 }
%struct.strbuf = type { i32 }
%struct.cache_entry = type { i32 }
%struct.stat = type { i32 }
%struct.patch = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"failed to read %s\00", align 1
@SUBMODULE_PATCH_WITHOUT_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"reading from '%s' beyond a symbolic link\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.strbuf*, %struct.cache_entry*, %struct.stat*, %struct.patch*, i8*, i32)* @load_patch_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_patch_target(%struct.apply_state* %0, %struct.strbuf* %1, %struct.cache_entry* %2, %struct.stat* %3, %struct.patch* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.apply_state*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca %struct.stat*, align 8
  %13 = alloca %struct.patch*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %9, align 8
  store %struct.strbuf* %1, %struct.strbuf** %10, align 8
  store %struct.cache_entry* %2, %struct.cache_entry** %11, align 8
  store %struct.stat* %3, %struct.stat** %12, align 8
  store %struct.patch* %4, %struct.patch** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %17 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %22 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20, %7
  %26 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %27 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %28 = call i32 @read_file_or_gitlink(%struct.cache_entry* %26, %struct.strbuf* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %14, align 8
  %33 = call i32 @error(i32 %31, i8* %32)
  store i32 %33, i32* %8, align 4
  br label %77

34:                                               ; preds = %25
  br label %76

35:                                               ; preds = %20
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @S_ISGITLINK(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %44 = icmp ne %struct.cache_entry* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %47 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %48 = call i32 @read_file_or_gitlink(%struct.cache_entry* %46, %struct.strbuf* %47)
  store i32 %48, i32* %8, align 4
  br label %77

49:                                               ; preds = %42
  %50 = load i32, i32* @SUBMODULE_PATCH_WITHOUT_INDEX, align 4
  store i32 %50, i32* %8, align 4
  br label %77

51:                                               ; preds = %38
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i64 @has_symlink_leading_path(i8* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @error(i32 %58, i8* %59)
  store i32 %60, i32* %8, align 4
  br label %77

61:                                               ; preds = %51
  %62 = load %struct.stat*, %struct.stat** %12, align 8
  %63 = load %struct.patch*, %struct.patch** %13, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %66 = call i64 @read_old_data(%struct.stat* %62, %struct.patch* %63, i8* %64, %struct.strbuf* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @error(i32 %69, i8* %70)
  store i32 %71, i32* %8, align 4
  br label %77

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %35
  br label %76

76:                                               ; preds = %75, %34
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %68, %57, %49, %45, %30
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @read_file_or_gitlink(%struct.cache_entry*, %struct.strbuf*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @has_symlink_leading_path(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @read_old_data(%struct.stat*, %struct.patch*, i8*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
