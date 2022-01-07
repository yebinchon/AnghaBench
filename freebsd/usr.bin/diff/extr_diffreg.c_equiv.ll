; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_equiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_equiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line*, i32, %struct.line*, i32, i32*)* @equiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @equiv(%struct.line* %0, i32 %1, %struct.line* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.line*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.line* %2, %struct.line** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %13

13:                                               ; preds = %70, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %71

23:                                               ; preds = %21
  %24 = load %struct.line*, %struct.line** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.line, %struct.line* %24, i64 %26
  %28 = getelementptr inbounds %struct.line, %struct.line* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.line*, %struct.line** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.line, %struct.line* %30, i64 %32
  %34 = getelementptr inbounds %struct.line, %struct.line* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %29, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.line*, %struct.line** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds %struct.line, %struct.line* %38, i64 %41
  %43 = getelementptr inbounds %struct.line, %struct.line* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %70

44:                                               ; preds = %23
  %45 = load %struct.line*, %struct.line** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.line, %struct.line* %45, i64 %47
  %49 = getelementptr inbounds %struct.line, %struct.line* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.line*, %struct.line** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.line, %struct.line* %51, i64 %53
  %55 = getelementptr inbounds %struct.line, %struct.line* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %50, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.line*, %struct.line** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.line, %struct.line* %60, i64 %63
  %65 = getelementptr inbounds %struct.line, %struct.line* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 4
  br label %69

66:                                               ; preds = %44
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %37
  br label %13

71:                                               ; preds = %21
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.line*, %struct.line** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds %struct.line, %struct.line* %77, i64 %80
  %82 = getelementptr inbounds %struct.line, %struct.line* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  br label %72

83:                                               ; preds = %72
  %84 = load %struct.line*, %struct.line** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.line, %struct.line* %84, i64 %87
  %89 = getelementptr inbounds %struct.line, %struct.line* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %135, %83
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %136

95:                                               ; preds = %90
  %96 = load %struct.line*, %struct.line** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.line, %struct.line* %96, i64 %98
  %100 = getelementptr inbounds %struct.line, %struct.line* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 0, %101
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %122, %95
  %108 = load %struct.line*, %struct.line** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.line, %struct.line* %108, i64 %111
  %113 = getelementptr inbounds %struct.line, %struct.line* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.line*, %struct.line** %8, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.line, %struct.line* %115, i64 %117
  %119 = getelementptr inbounds %struct.line, %struct.line* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %114, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %107
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  %125 = load %struct.line*, %struct.line** %8, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.line, %struct.line* %125, i64 %127
  %129 = getelementptr inbounds %struct.line, %struct.line* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  br label %107

135:                                              ; preds = %107
  br label %90

136:                                              ; preds = %90
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 -1, i32* %140, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
