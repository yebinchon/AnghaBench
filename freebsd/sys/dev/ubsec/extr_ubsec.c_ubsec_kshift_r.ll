; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kshift_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kshift_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32*, i32)* @ubsec_kshift_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_kshift_r(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 7
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %37, %5
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %23

40:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  %59 = sdiv i32 %58, 8
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %16, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %72, %62
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %14, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %15, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  br label %69

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %88, %84
  %86 = load i32, i32* %15, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %15, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 0, i32* %93, align 4
  br label %85

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %57
  %96 = load i32, i32* %6, align 4
  %97 = srem i32 %96, 8
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %128, %100
  %104 = load i32, i32* %13, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %16, align 4
  %113 = shl i32 %111, %112
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 8, %120
  %122 = ashr i32 %119, %121
  %123 = or i32 %113, %122
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %106
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %13, align 4
  br label %103

131:                                              ; preds = %103
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %16, align 4
  %136 = shl i32 %134, %135
  %137 = load i32*, i32** %9, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %95
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
