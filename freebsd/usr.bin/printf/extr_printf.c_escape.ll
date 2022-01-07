; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*)* @escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @escape(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %135, %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %10, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %140

18:                                               ; preds = %13
  %19 = load i8, i8* %10, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 92
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8, i8* %10, align 1
  %24 = load i8*, i8** %9, align 8
  store i8 %23, i8* %24, align 1
  br label %135

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %130 [
    i32 0, label %30
    i32 92, label %40
    i32 39, label %40
    i32 97, label %44
    i32 98, label %46
    i32 99, label %48
    i32 102, label %61
    i32 110, label %63
    i32 114, label %65
    i32 116, label %67
    i32 118, label %69
    i32 48, label %71
    i32 49, label %71
    i32 50, label %71
    i32 51, label %71
    i32 52, label %71
    i32 53, label %71
    i32 54, label %71
    i32 55, label %71
  ]

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  store i8 92, i8* %31, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %4, align 4
  br label %148

40:                                               ; preds = %25, %25
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %9, align 8
  store i8 %42, i8* %43, align 1
  br label %134

44:                                               ; preds = %25
  %45 = load i8*, i8** %9, align 8
  store i8 7, i8* %45, align 1
  br label %134

46:                                               ; preds = %25
  %47 = load i8*, i8** %9, align 8
  store i8 8, i8* %47, align 1
  br label %134

48:                                               ; preds = %25
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  store i32 1, i32* %4, align 4
  br label %148

59:                                               ; preds = %48
  %60 = load i8*, i8** %9, align 8
  store i8 99, i8* %60, align 1
  br label %134

61:                                               ; preds = %25
  %62 = load i8*, i8** %9, align 8
  store i8 12, i8* %62, align 1
  br label %134

63:                                               ; preds = %25
  %64 = load i8*, i8** %9, align 8
  store i8 10, i8* %64, align 1
  br label %134

65:                                               ; preds = %25
  %66 = load i8*, i8** %9, align 8
  store i8 13, i8* %66, align 1
  br label %134

67:                                               ; preds = %25
  %68 = load i8*, i8** %9, align 8
  store i8 9, i8* %68, align 1
  br label %134

69:                                               ; preds = %25
  %70 = load i8*, i8** %9, align 8
  store i8 11, i8* %70, align 1
  br label %134

71:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 48
  br label %79

79:                                               ; preds = %74, %71
  %80 = phi i1 [ false, %71 ], [ %78, %74 ]
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 4, i32 3
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %110, %79
  %85 = load i8, i8* %10, align 1
  %86 = add i8 %85, -1
  store i8 %86, i8* %10, align 1
  %87 = sext i8 %85 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sge i32 %92, 48
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sle i32 %97, 55
  br label %99

99:                                               ; preds = %94, %89, %84
  %100 = phi i1 [ false, %89 ], [ false, %84 ], [ %98, %94 ]
  br i1 %100, label %101, label %113

101:                                              ; preds = %99
  %102 = load i32, i32* %11, align 4
  %103 = shl i32 %102, 3
  store i32 %103, i32* %11, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %101
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %5, align 8
  br label %84

113:                                              ; preds = %99
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %115, i8** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %119, 37
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %9, align 8
  store i8 37, i8* %122, align 1
  %124 = load i8*, i8** %9, align 8
  store i8 37, i8* %124, align 1
  br label %129

125:                                              ; preds = %118, %113
  %126 = load i32, i32* %11, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %9, align 8
  store i8 %127, i8* %128, align 1
  br label %129

129:                                              ; preds = %125, %121
  br label %134

130:                                              ; preds = %25
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %9, align 8
  store i8 %132, i8* %133, align 1
  br label %134

134:                                              ; preds = %130, %129, %69, %67, %65, %63, %61, %59, %46, %44, %40
  br label %135

135:                                              ; preds = %134, %22
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %9, align 8
  br label %13

140:                                              ; preds = %13
  %141 = load i8*, i8** %9, align 8
  store i8 0, i8* %141, align 1
  %142 = load i8*, i8** %9, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = load i64*, i64** %7, align 8
  store i64 %146, i64* %147, align 8
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %140, %51, %30
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
