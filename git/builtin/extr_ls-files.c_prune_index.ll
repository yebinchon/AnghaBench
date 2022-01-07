; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_prune_index.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_prune_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, i8*, i64)* @prune_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_index(%struct.index_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.index_state*, %struct.index_state** %4, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %3
  br label %85

20:                                               ; preds = %14
  %21 = load %struct.index_state*, %struct.index_state** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @index_name_pos(%struct.index_state* %21, i8* %22, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 0, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.index_state*, %struct.index_state** %4, align 8
  %34 = getelementptr inbounds %struct.index_state, %struct.index_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %64, %61, %31
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub i32 %42, %43
  %45 = lshr i32 %44, 1
  %46 = add i32 %41, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.index_state*, %struct.index_state** %4, align 8
  %48 = getelementptr inbounds %struct.index_state, %struct.index_state* %47, i32 0, i32 1
  %49 = load %struct.cache_entry**, %struct.cache_entry*** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %49, i64 %51
  %53 = load %struct.cache_entry*, %struct.cache_entry** %52, align 8
  store %struct.cache_entry* %53, %struct.cache_entry** %11, align 8
  %54 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @strncmp(i32 %56, i8* %57, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %40
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %36

64:                                               ; preds = %40
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %9, align 4
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.index_state*, %struct.index_state** %4, align 8
  %68 = getelementptr inbounds %struct.index_state, %struct.index_state* %67, i32 0, i32 1
  %69 = load %struct.cache_entry**, %struct.cache_entry*** %68, align 8
  %70 = load %struct.index_state*, %struct.index_state** %4, align 8
  %71 = getelementptr inbounds %struct.index_state, %struct.index_state* %70, i32 0, i32 1
  %72 = load %struct.cache_entry**, %struct.cache_entry*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %72, i64 %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %76, %77
  %79 = call i32 @MOVE_ARRAY(%struct.cache_entry** %69, %struct.cache_entry** %75, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub i32 %80, %81
  %83 = load %struct.index_state*, %struct.index_state** %4, align 8
  %84 = getelementptr inbounds %struct.index_state, %struct.index_state* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %66, %19
  ret void
}

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i64) #1

declare dso_local i32 @strncmp(i32, i8*, i64) #1

declare dso_local i32 @MOVE_ARRAY(%struct.cache_entry**, %struct.cache_entry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
