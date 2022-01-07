; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_gather_stats.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_gather_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_stat = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.text_stat*)* @gather_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_stats(i8* %0, i64 %1, %struct.text_stat* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.text_stat*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.text_stat* %2, %struct.text_stat** %6, align 8
  %9 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %10 = call i32 @memset(%struct.text_stat* %9, i32 0, i32 24)
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %97, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %100

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %8, align 1
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %23, label %49

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %38 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %48

43:                                               ; preds = %28, %23
  %44 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %45 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %36
  br label %97

49:                                               ; preds = %15
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %55 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %97

58:                                               ; preds = %49
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 127
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %64 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %96

67:                                               ; preds = %58
  %68 = load i8, i8* %8, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i8, i8* %8, align 1
  %73 = zext i8 %72 to i32
  switch i32 %73, label %84 [
    i32 8, label %74
    i32 9, label %74
    i32 27, label %74
    i32 12, label %74
    i32 0, label %79
  ]

74:                                               ; preds = %71, %71, %71, %71
  %75 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %76 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %89

79:                                               ; preds = %71
  %80 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %81 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %71, %79
  %85 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %86 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %74
  br label %95

90:                                               ; preds = %67
  %91 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %92 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %89
  br label %96

96:                                               ; preds = %95, %62
  br label %97

97:                                               ; preds = %96, %53, %48
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %7, align 8
  br label %11

100:                                              ; preds = %11
  %101 = load i64, i64* %5, align 8
  %102 = icmp uge i64 %101, 1
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = sub i64 %105, 1
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 26
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.text_stat*, %struct.text_stat** %6, align 8
  %113 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %111, %103, %100
  ret void
}

declare dso_local i32 @memset(%struct.text_stat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
