; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vinterp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vinterp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"n\0Ar\0Dt\09b\08f\0C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @vinterp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vinterp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %138, %2
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  %13 = load i8, i8* %11, align 1
  store i8 %13, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i1 [ false, %10 ], [ %20, %16 ]
  br i1 %22, label %23, label %139

23:                                               ; preds = %21
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %134 [
    i32 94, label %26
    i32 92, label %44
  ]

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 64
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 %36, i8* %37, align 1
  br label %43

39:                                               ; preds = %26
  %40 = load i8, i8* %6, align 1
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  store i8 %40, i8* %41, align 1
  br label %43

43:                                               ; preds = %39, %30
  br label %138

44:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  %47 = load i8, i8* %45, align 1
  store i8 %47, i8* %6, align 1
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 55
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 3
  %58 = load i8, i8* %6, align 1
  %59 = sext i8 %58 to i32
  %60 = sub nsw i32 %59, 48
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %7, align 4
  br label %89

62:                                               ; preds = %51, %44
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i8, i8* %6, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  store i8 %77, i8* %78, align 1
  br label %88

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  br label %63

84:                                               ; preds = %63
  %85 = load i8, i8* %6, align 1
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  store i8 %85, i8* %86, align 1
  br label %88

88:                                               ; preds = %84, %75
  br label %138

89:                                               ; preds = %55
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %3, align 8
  %92 = load i8, i8* %90, align 1
  store i8 %92, i8* %6, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sge i32 %93, 48
  br i1 %94, label %95, label %126

95:                                               ; preds = %89
  %96 = load i8, i8* %6, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sle i32 %97, 55
  br i1 %98, label %99, label %126

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = shl i32 %100, 3
  %102 = load i8, i8* %6, align 1
  %103 = sext i8 %102 to i32
  %104 = sub nsw i32 %103, 48
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %7, align 4
  %106 = load i8*, i8** %3, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %3, align 8
  %108 = load i8, i8* %106, align 1
  store i8 %108, i8* %6, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sge i32 %109, 48
  br i1 %110, label %111, label %122

111:                                              ; preds = %99
  %112 = load i8, i8* %6, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp sle i32 %113, 55
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 3
  %118 = load i8, i8* %6, align 1
  %119 = sext i8 %118 to i32
  %120 = sub nsw i32 %119, 48
  %121 = add nsw i32 %117, %120
  store i32 %121, i32* %7, align 4
  br label %125

122:                                              ; preds = %111, %99
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %124, i8** %3, align 8
  br label %125

125:                                              ; preds = %122, %115
  br label %129

126:                                              ; preds = %95, %89
  %127 = load i8*, i8** %3, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %128, i8** %3, align 8
  br label %129

129:                                              ; preds = %126, %125
  %130 = load i32, i32* %7, align 4
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %5, align 8
  store i8 %131, i8* %132, align 1
  br label %138

134:                                              ; preds = %23
  %135 = load i8, i8* %6, align 1
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  store i8 %135, i8* %136, align 1
  br label %138

138:                                              ; preds = %134, %129, %88, %43
  br label %10

139:                                              ; preds = %21
  %140 = load i8*, i8** %5, align 8
  store i8 0, i8* %140, align 1
  %141 = load i8, i8* %6, align 1
  %142 = sext i8 %141 to i32
  %143 = load i32, i32* %4, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 -1
  br label %149

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %145
  %150 = phi i8* [ %147, %145 ], [ null, %148 ]
  ret i8* %150
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
