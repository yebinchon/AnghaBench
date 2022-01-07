; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_find_invalid_utf8.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_find_invalid_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_invalid_utf8.max_codepoint = internal constant [4 x i32] [i32 127, i32 2047, i32 65535, i32 1114111], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @find_invalid_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_invalid_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %131, %27, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %132

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %7, align 1
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %13

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %36, %28
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 1
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %7, align 1
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %31

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 3, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %133

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %133

57:                                               ; preds = %51
  %58 = load i8, i8* %7, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 127
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* @find_invalid_utf8.max_codepoint, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* @find_invalid_utf8.max_codepoint, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %97, %57
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 6
  store i32 %81, i32* %10, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, 63
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  %92 = and i32 %91, 192
  %93 = icmp ne i32 %92, 128
  br i1 %93, label %94, label %96

94:                                               ; preds = %79
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %133

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %79, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %133

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %112, 2095104
  %114 = icmp eq i32 %113, 55296
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  br label %133

117:                                              ; preds = %111
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 65534
  %120 = icmp eq i32 %119, 65534
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %133

123:                                              ; preds = %117
  %124 = load i32, i32* %10, align 4
  %125 = icmp uge i32 %124, 64976
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = icmp ule i32 %127, 65007
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %133

131:                                              ; preds = %126, %123
  br label %13

132:                                              ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %129, %121, %115, %109, %94, %55, %49
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
