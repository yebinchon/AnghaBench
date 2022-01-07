; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_each_bit.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_each_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i64, i32* }

@BITS_IN_EWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ewah_each_bit(%struct.ewah_bitmap* %0, void (i64, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.ewah_bitmap*, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %4, align 8
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %95, %3
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %16 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %13
  %20 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %21 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @rlw_get_run_bit(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @rlw_get_running_len(i32* %29)
  %31 = load i64, i64* @BITS_IN_EWORD, align 8
  %32 = mul i64 %30, %31
  store i64 %32, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %41, %28
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i8*, i8** %6, align 8
  call void %38(i64 %39, i8* %40)
  br label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %33

46:                                               ; preds = %33
  br label %54

47:                                               ; preds = %19
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @rlw_get_running_len(i32* %48)
  %50 = load i64, i64* @BITS_IN_EWORD, align 8
  %51 = mul i64 %49, %50
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %92, %54
  %58 = load i64, i64* %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i64 @rlw_get_literal_words(i32* %59)
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %84, %62
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @BITS_IN_EWORD, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %70 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %12, align 4
  %76 = shl i32 1, %75
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i8*, i8** %6, align 8
  call void %80(i64 %81, i8* %82)
  br label %83

83:                                               ; preds = %79, %68
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %7, align 8
  br label %63

89:                                               ; preds = %63
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %9, align 8
  br label %57

95:                                               ; preds = %57
  br label %13

96:                                               ; preds = %13
  ret void
}

declare dso_local i64 @rlw_get_run_bit(i32*) #1

declare dso_local i64 @rlw_get_running_len(i32*) #1

declare dso_local i64 @rlw_get_literal_words(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
