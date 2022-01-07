; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_unresolved.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_unresolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traverse_info = type { i32 }
%struct.name_entry = type { i64 }
%struct.merge_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traverse_info*, %struct.name_entry*)* @unresolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unresolved(%struct.traverse_info* %0, %struct.name_entry* %1) #0 {
  %3 = alloca %struct.traverse_info*, align 8
  %4 = alloca %struct.name_entry*, align 8
  %5 = alloca %struct.merge_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.traverse_info* %0, %struct.traverse_info** %3, align 8
  store %struct.name_entry* %1, %struct.name_entry** %4, align 8
  store %struct.merge_list* null, %struct.merge_list** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %8, align 4
  %17 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i64 %19
  %21 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %12
  %25 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %25, i64 %27
  %29 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @S_ISDIR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24, %12
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %44 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %45 = call i32 @unresolved_directory(%struct.traverse_info* %43, %struct.name_entry* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %110

50:                                               ; preds = %42
  %51 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %52 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %51, i64 2
  %53 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %58 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %57, i64 2
  %59 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @S_ISDIR(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %65 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %66 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %65, i64 2
  %67 = load %struct.merge_list*, %struct.merge_list** %5, align 8
  %68 = call %struct.merge_list* @link_entry(i32 3, %struct.traverse_info* %64, %struct.name_entry* %66, %struct.merge_list* %67)
  store %struct.merge_list* %68, %struct.merge_list** %5, align 8
  br label %69

69:                                               ; preds = %63, %56, %50
  %70 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %71 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %70, i64 1
  %72 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %77 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %76, i64 1
  %78 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @S_ISDIR(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %84 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %85 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %84, i64 1
  %86 = load %struct.merge_list*, %struct.merge_list** %5, align 8
  %87 = call %struct.merge_list* @link_entry(i32 2, %struct.traverse_info* %83, %struct.name_entry* %85, %struct.merge_list* %86)
  store %struct.merge_list* %87, %struct.merge_list** %5, align 8
  br label %88

88:                                               ; preds = %82, %75, %69
  %89 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %90 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %89, i64 0
  %91 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %96 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %95, i64 0
  %97 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @S_ISDIR(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %94
  %102 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %103 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %104 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %103, i64 0
  %105 = load %struct.merge_list*, %struct.merge_list** %5, align 8
  %106 = call %struct.merge_list* @link_entry(i32 1, %struct.traverse_info* %102, %struct.name_entry* %104, %struct.merge_list* %105)
  store %struct.merge_list* %106, %struct.merge_list** %5, align 8
  br label %107

107:                                              ; preds = %101, %94, %88
  %108 = load %struct.merge_list*, %struct.merge_list** %5, align 8
  %109 = call i32 @add_merge_entry(%struct.merge_list* %108)
  br label %110

110:                                              ; preds = %107, %49
  ret void
}

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i32 @unresolved_directory(%struct.traverse_info*, %struct.name_entry*) #1

declare dso_local %struct.merge_list* @link_entry(i32, %struct.traverse_info*, %struct.name_entry*, %struct.merge_list*) #1

declare dso_local i32 @add_merge_entry(%struct.merge_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
