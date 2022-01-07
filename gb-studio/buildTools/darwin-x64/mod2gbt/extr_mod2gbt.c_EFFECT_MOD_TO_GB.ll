; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/mod2gbt/extr_mod2gbt.c_EFFECT_MOD_TO_GB.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/mod2gbt/extr_mod2gbt.c_EFFECT_MOD_TO_GB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"Strange error at pattern %d, step %d, channel %d: %01X%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Unsupported effect at pattern %d, step %d, channel %d: %01X%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Unsupported BPM speed effect at pattern %d, step %d, channel %d: %01X%02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EFFECT_MOD_TO_GB(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %12, align 4
  switch i32 %18, label %98 [
    i32 0, label %19
    i32 11, label %23
    i32 12, label %27
    i32 13, label %34
    i32 14, label %44
    i32 15, label %83
  ]

19:                                               ; preds = %7
  %20 = load i32*, i32** %14, align 8
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %15, align 8
  store i32 %21, i32* %22, align 4
  store i32 1, i32* %8, align 4
  br label %105

23:                                               ; preds = %7
  %24 = load i32*, i32** %14, align 8
  store i32 8, i32* %24, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %15, align 8
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %8, align 4
  br label %105

27:                                               ; preds = %7
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %8, align 4
  br label %105

34:                                               ; preds = %7
  %35 = load i32*, i32** %14, align 8
  store i32 9, i32* %35, align 4
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 240
  %38 = ashr i32 %37, 4
  %39 = mul nsw i32 %38, 10
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 15
  %42 = add nsw i32 %39, %41
  %43 = load i32*, i32** %15, align 8
  store i32 %42, i32* %43, align 4
  store i32 1, i32* %8, align 4
  br label %105

44:                                               ; preds = %7
  %45 = load i32, i32* %13, align 4
  %46 = and i32 %45, 240
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, 15
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 1, label %51
    i32 2, label %51
    i32 3, label %51
    i32 4, label %53
    i32 5, label %53
    i32 6, label %53
    i32 7, label %53
    i32 8, label %53
    i32 9, label %53
    i32 10, label %53
    i32 11, label %53
    i32 12, label %54
    i32 13, label %54
    i32 14, label %54
    i32 15, label %54
  ]

51:                                               ; preds = %48, %48, %48, %48
  store i32 1, i32* %16, align 4
  br label %55

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %52
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %55

54:                                               ; preds = %48, %48, %48, %48
  store i32 1, i32* %17, align 4
  br label %55

55:                                               ; preds = %54, %53, %51
  %56 = load i32*, i32** %14, align 8
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 3, %58
  %60 = shl i32 %57, %59
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 %61, %63
  %65 = or i32 %60, %64
  %66 = load i32*, i32** %15, align 8
  store i32 %65, i32* %66, align 4
  store i32 1, i32* %8, align 4
  br label %105

67:                                               ; preds = %44
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, 240
  %70 = icmp eq i32 %69, 192
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %14, align 8
  store i32 2, i32* %72, align 4
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, 15
  %75 = load i32*, i32** %15, align 8
  store i32 %74, i32* %75, align 4
  store i32 1, i32* %8, align 4
  br label %105

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 0, i32* %8, align 4
  br label %105

83:                                               ; preds = %7
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 31
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 0, i32* %8, align 4
  br label %105

93:                                               ; preds = %83
  %94 = load i32*, i32** %14, align 8
  store i32 10, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @SPEED_MOD_TO_GB(i32 %95)
  %97 = load i32*, i32** %15, align 8
  store i32 %96, i32* %97, align 4
  store i32 1, i32* %8, align 4
  br label %105

98:                                               ; preds = %7
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %98, %93, %86, %76, %71, %55, %34, %27, %23, %19
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SPEED_MOD_TO_GB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
