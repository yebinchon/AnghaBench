; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clean.c_correct_untracked_entries.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clean.c_correct_untracked_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32, i32, %struct.dir_entry**, %struct.dir_entry** }
%struct.dir_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dir_struct*)* @correct_untracked_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correct_untracked_entries(%struct.dir_struct* %0) #0 {
  %2 = alloca %struct.dir_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dir_entry*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %122, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %10 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %125

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %17 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %22 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %21, i32 0, i32 2
  %23 = load %struct.dir_entry**, %struct.dir_entry*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %23, i64 %25
  %27 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %28 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %27, i32 0, i32 3
  %29 = load %struct.dir_entry**, %struct.dir_entry*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %29, i64 %31
  %33 = call i64 @cmp_dir_entry(%struct.dir_entry** %26, %struct.dir_entry** %32)
  %34 = icmp sle i64 0, %33
  br label %35

35:                                               ; preds = %20, %14
  %36 = phi i1 [ false, %14 ], [ %34, %20 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %14

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %43 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %48 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %47, i32 0, i32 2
  %49 = load %struct.dir_entry**, %struct.dir_entry*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %49, i64 %51
  %53 = load %struct.dir_entry*, %struct.dir_entry** %52, align 8
  %54 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %55 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %54, i32 0, i32 3
  %56 = load %struct.dir_entry**, %struct.dir_entry*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %56, i64 %58
  %60 = load %struct.dir_entry*, %struct.dir_entry** %59, align 8
  %61 = call i64 @check_dir_entry_contains(%struct.dir_entry* %53, %struct.dir_entry* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %46
  %64 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %65 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %64, i32 0, i32 2
  %66 = load %struct.dir_entry**, %struct.dir_entry*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %66, i64 %68
  %70 = load %struct.dir_entry*, %struct.dir_entry** %69, align 8
  %71 = call i32 @free(%struct.dir_entry* %70)
  br label %121

72:                                               ; preds = %46, %40
  %73 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %74 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %73, i32 0, i32 2
  %75 = load %struct.dir_entry**, %struct.dir_entry*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %75, i64 %78
  %80 = load %struct.dir_entry*, %struct.dir_entry** %79, align 8
  store %struct.dir_entry* %80, %struct.dir_entry** %6, align 8
  %81 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %82 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %83 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %82, i32 0, i32 2
  %84 = load %struct.dir_entry**, %struct.dir_entry*** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %84, i64 %87
  store %struct.dir_entry* %81, %struct.dir_entry** %88, align 8
  br label %89

89:                                               ; preds = %108, %72
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %92 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %97 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %98 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %97, i32 0, i32 2
  %99 = load %struct.dir_entry**, %struct.dir_entry*** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %99, i64 %101
  %103 = load %struct.dir_entry*, %struct.dir_entry** %102, align 8
  %104 = call i64 @check_dir_entry_contains(%struct.dir_entry* %96, %struct.dir_entry* %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %95, %89
  %107 = phi i1 [ false, %89 ], [ %105, %95 ]
  br i1 %107, label %108, label %118

108:                                              ; preds = %106
  %109 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %110 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %109, i32 0, i32 2
  %111 = load %struct.dir_entry**, %struct.dir_entry*** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %111, i64 %114
  %116 = load %struct.dir_entry*, %struct.dir_entry** %115, align 8
  %117 = call i32 @free(%struct.dir_entry* %116)
  br label %89

118:                                              ; preds = %106
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %63
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %7

125:                                              ; preds = %7
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %128 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  ret void
}

declare dso_local i64 @cmp_dir_entry(%struct.dir_entry**, %struct.dir_entry**) #1

declare dso_local i64 @check_dir_entry_contains(%struct.dir_entry*, %struct.dir_entry*) #1

declare dso_local i32 @free(%struct.dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
