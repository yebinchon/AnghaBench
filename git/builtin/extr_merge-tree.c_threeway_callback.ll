; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_threeway_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_threeway_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_entry = type { i32, i32 }
%struct.traverse_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, %struct.name_entry*, %struct.traverse_info*)* @threeway_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @threeway_callback(i32 %0, i64 %1, i64 %2, %struct.name_entry* %3, %struct.traverse_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.name_entry*, align 8
  %11 = alloca %struct.traverse_info*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.name_entry* %3, %struct.name_entry** %10, align 8
  store %struct.traverse_info* %4, %struct.traverse_info** %11, align 8
  %12 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %13 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %12, i64 1
  %14 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %15 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %14, i64 2
  %16 = call i64 @same_entry(%struct.name_entry* %13, %struct.name_entry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %20 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %19, i64 1
  %21 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %22 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %21, i64 2
  %23 = call i64 @both_empty(%struct.name_entry* %20, %struct.name_entry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18, %5
  %26 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %27 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %28 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %27, i64 1
  %29 = call i32 @resolve(%struct.traverse_info* %26, %struct.name_entry* null, %struct.name_entry* %28)
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %89

32:                                               ; preds = %18
  %33 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %34 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %33, i64 0
  %35 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %36 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %35, i64 1
  %37 = call i64 @same_entry(%struct.name_entry* %34, %struct.name_entry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %41 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %40, i64 2
  %42 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %41, i32 0, i32 1
  %43 = call i32 @is_null_oid(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %39
  %46 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %47 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %46, i64 2
  %48 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @S_ISDIR(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %54 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %55 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %54, i64 1
  %56 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %57 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %56, i64 2
  %58 = call i32 @resolve(%struct.traverse_info* %53, %struct.name_entry* %55, %struct.name_entry* %57)
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %89

61:                                               ; preds = %45, %39
  br label %62

62:                                               ; preds = %61, %32
  %63 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %64 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %63, i64 0
  %65 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %66 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %65, i64 2
  %67 = call i64 @same_entry(%struct.name_entry* %64, %struct.name_entry* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %71 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %70, i64 0
  %72 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %73 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %72, i64 2
  %74 = call i64 @both_empty(%struct.name_entry* %71, %struct.name_entry* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69, %62
  %77 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %78 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %79 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %78, i64 1
  %80 = call i32 @resolve(%struct.traverse_info* %77, %struct.name_entry* null, %struct.name_entry* %79)
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  br label %89

83:                                               ; preds = %69
  %84 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %85 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %86 = call i32 @unresolved(%struct.traverse_info* %84, %struct.name_entry* %85)
  %87 = load i64, i64* %8, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %76, %52, %25
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @same_entry(%struct.name_entry*, %struct.name_entry*) #1

declare dso_local i64 @both_empty(%struct.name_entry*, %struct.name_entry*) #1

declare dso_local i32 @resolve(%struct.traverse_info*, %struct.name_entry*, %struct.name_entry*) #1

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @unresolved(%struct.traverse_info*, %struct.name_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
