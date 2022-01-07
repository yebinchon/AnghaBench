; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_guess_line_blames.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_guess_line_blames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_origin = type { i32, i32 }
%struct.blame_line_tracker = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_origin*, %struct.blame_origin*, i32, i32, i32, i32, %struct.blame_line_tracker*)* @guess_line_blames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guess_line_blames(%struct.blame_origin* %0, %struct.blame_origin* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.blame_line_tracker* %6) #0 {
  %8 = alloca %struct.blame_origin*, align 8
  %9 = alloca %struct.blame_origin*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.blame_line_tracker*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.blame_origin* %0, %struct.blame_origin** %8, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.blame_line_tracker* %6, %struct.blame_line_tracker** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %18, align 4
  %23 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %24 = load %struct.blame_origin*, %struct.blame_origin** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32* @fuzzy_find_matching_lines(%struct.blame_origin* %23, %struct.blame_origin* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32* %29, i32** %19, align 8
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %95, %7
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** %19, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i32*, i32** %19, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32*, i32** %19, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  br label %67

55:                                               ; preds = %42, %36
  %56 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %57 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.blame_origin*, %struct.blame_origin** %9, align 8
  %60 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %64 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @scan_parent_range(i32 %58, i32 %61, i32 %62, i32 0, i32 %65)
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %55, %49
  %68 = load i32, i32* %16, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %71, i64 %73
  %75 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %14, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %77, i64 %79
  %81 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  br label %94

82:                                               ; preds = %67
  %83 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %83, i64 %85
  %87 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %89, i64 %91
  %93 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %82, %70
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %30

98:                                               ; preds = %30
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @free(i32* %99)
  ret void
}

declare dso_local i32* @fuzzy_find_matching_lines(%struct.blame_origin*, %struct.blame_origin*, i32, i32, i32, i32) #1

declare dso_local i32 @scan_parent_range(i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
