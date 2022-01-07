; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_mod_get_index_from_period.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_mod_get_index_from_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mod_period = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"\0APattern %d, Step %d, Channel %d. Note too high!\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\0APattern %d, Step %d, Channel %d. Note too low!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_get_index_from_period(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %6, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** @mod_period, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 71
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  br label %48

32:                                               ; preds = %17
  %33 = load i64, i64* %6, align 8
  %34 = load i64*, i64** @mod_period, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 4
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %31
  br label %50

49:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %106

50:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 72
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = load i64*, i64** @mod_period, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %106

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %51

68:                                               ; preds = %51
  store i64 65535, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %101, %68
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 72
  br i1 %71, label %72, label %104

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i64*, i64** @mod_period, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = sub nsw i32 %74, %80
  %82 = call i32 @abs(i32 %81) #3
  store i32 %82, i32* %13, align 4
  %83 = load i64, i64* %6, align 8
  %84 = trunc i64 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %11, align 8
  %87 = sub nsw i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @abs(i32 %88) #3
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %72
  %94 = load i64*, i64** @mod_period, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %11, align 8
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %93, %72
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %69

104:                                              ; preds = %69
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %62, %49
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
