; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_ignore_blame_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_ignore_blame_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i32, i32, i32, %struct.blame_entry*, i32, %struct.blame_origin* }
%struct.blame_origin = type { i32 }
%struct.blame_line_tracker = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_entry*, %struct.blame_origin*, %struct.blame_entry**, %struct.blame_entry**, %struct.blame_line_tracker*)* @ignore_blame_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ignore_blame_entry(%struct.blame_entry* %0, %struct.blame_origin* %1, %struct.blame_entry** %2, %struct.blame_entry** %3, %struct.blame_line_tracker* %4) #0 {
  %6 = alloca %struct.blame_entry*, align 8
  %7 = alloca %struct.blame_origin*, align 8
  %8 = alloca %struct.blame_entry**, align 8
  %9 = alloca %struct.blame_entry**, align 8
  %10 = alloca %struct.blame_line_tracker*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.blame_entry*, align 8
  store %struct.blame_entry* %0, %struct.blame_entry** %6, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %7, align 8
  store %struct.blame_entry** %2, %struct.blame_entry*** %8, align 8
  store %struct.blame_entry** %3, %struct.blame_entry*** %9, align 8
  store %struct.blame_line_tracker* %4, %struct.blame_line_tracker** %10, align 8
  store i32 1, i32* %11, align 4
  %15 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %16 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %104, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %107

22:                                               ; preds = %18
  store %struct.blame_entry* null, %struct.blame_entry** %14, align 8
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %28, i64 %30
  %32 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %10, align 8
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %32, i64 %35
  %37 = call i64 @are_lines_adjacent(%struct.blame_line_tracker* %31, %struct.blame_line_tracker* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %104

42:                                               ; preds = %27
  %43 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %46 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %45, i32 0, i32 5
  %47 = load %struct.blame_origin*, %struct.blame_origin** %46, align 8
  %48 = call %struct.blame_origin* @blame_origin_incref(%struct.blame_origin* %47)
  %49 = call %struct.blame_entry* @split_blame_at(%struct.blame_entry* %43, i32 %44, %struct.blame_origin* %48)
  store %struct.blame_entry* %49, %struct.blame_entry** %14, align 8
  br label %50

50:                                               ; preds = %42, %22
  %51 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %10, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %51, i64 %53
  %55 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %50
  %59 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %60 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %62 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %61, i32 0, i32 5
  %63 = load %struct.blame_origin*, %struct.blame_origin** %62, align 8
  %64 = call i32 @blame_origin_decref(%struct.blame_origin* %63)
  %65 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %66 = call %struct.blame_origin* @blame_origin_incref(%struct.blame_origin* %65)
  %67 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %68 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %67, i32 0, i32 5
  store %struct.blame_origin* %66, %struct.blame_origin** %68, align 8
  %69 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %69, i64 %74
  %76 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %79 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.blame_entry**, %struct.blame_entry*** %9, align 8
  %81 = load %struct.blame_entry*, %struct.blame_entry** %80, align 8
  %82 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %83 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %82, i32 0, i32 3
  store %struct.blame_entry* %81, %struct.blame_entry** %83, align 8
  %84 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %85 = load %struct.blame_entry**, %struct.blame_entry*** %9, align 8
  store %struct.blame_entry* %84, %struct.blame_entry** %85, align 8
  br label %95

86:                                               ; preds = %50
  %87 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %88 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  %89 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  %90 = load %struct.blame_entry*, %struct.blame_entry** %89, align 8
  %91 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %92 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %91, i32 0, i32 3
  store %struct.blame_entry* %90, %struct.blame_entry** %92, align 8
  %93 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %94 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  store %struct.blame_entry* %93, %struct.blame_entry** %94, align 8
  br label %95

95:                                               ; preds = %86, %58
  %96 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %97 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.blame_entry*, %struct.blame_entry** %14, align 8
  store %struct.blame_entry* %103, %struct.blame_entry** %6, align 8
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %95, %39
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %18

107:                                              ; preds = %18
  %108 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %109 = icmp ne %struct.blame_entry* %108, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  ret void
}

declare dso_local i64 @are_lines_adjacent(%struct.blame_line_tracker*, %struct.blame_line_tracker*) #1

declare dso_local %struct.blame_entry* @split_blame_at(%struct.blame_entry*, i32, %struct.blame_origin*) #1

declare dso_local %struct.blame_origin* @blame_origin_incref(%struct.blame_origin*) #1

declare dso_local i32 @blame_origin_decref(%struct.blame_origin*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
