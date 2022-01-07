; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5112.c_getPminAndPcdacTableFromTwoPowerTables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5112.c_getPminAndPcdacTableFromTwoPowerTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @getPminAndPcdacTableFromTwoPowerTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPminAndPcdacTableFromTwoPowerTables(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 64, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 63
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = icmp sgt i32 %23, 126
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 63
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 126
  store i32 %29, i32* %12, align 4
  br label %34

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 63
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  store i32 63, i32* %11, align 4
  br label %38

38:                                               ; preds = %52, %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = icmp sge i32 %48, 0
  br label %50

50:                                               ; preds = %47, %38
  %51 = phi i1 [ false, %38 ], [ %49, %47 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  br label %38

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 63
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %10, align 4
  store i32 63, i32* %9, align 4
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32* %63, i32** %15, align 8
  br label %64

64:                                               ; preds = %122, %55
  %65 = load i32, i32* %9, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %134

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %68, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %16, align 4
  %77 = icmp eq i32 %76, 64
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %67
  store i32 0, i32* %16, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32* %80, i32** %15, align 8
  store i32 63, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %75, %72
  br label %82

82:                                               ; preds = %95, %81
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp sge i32 %90, %91
  br label %93

93:                                               ; preds = %85, %82
  %94 = phi i1 [ false, %82 ], [ %92, %85 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %10, align 4
  br label %82

98:                                               ; preds = %93
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %108, %104
  %106 = load i32, i32* %9, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %9, align 4
  br label %105

121:                                              ; preds = %105
  br label %134

122:                                              ; preds = %101, %98
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %16, align 4
  %125 = or i32 %123, %124
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 %130, 2
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %9, align 4
  br label %64

134:                                              ; preds = %121, %64
  %135 = load i32, i32* %12, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
