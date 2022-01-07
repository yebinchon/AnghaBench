; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line*, i32)* @sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort(%struct.line* %0, i32 %1) #0 {
  %3 = alloca %struct.line*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.line, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %131

14:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %23, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 2, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %8, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %128, %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %131

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %124, %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %127

40:                                               ; preds = %36
  %41 = load %struct.line*, %struct.line** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.line, %struct.line* %41, i64 %43
  store %struct.line* %44, %struct.line** %5, align 8
  br label %45

45:                                               ; preds = %117, %40
  %46 = load %struct.line*, %struct.line** %5, align 8
  %47 = load %struct.line*, %struct.line** %3, align 8
  %48 = icmp ugt %struct.line* %46, %47
  br i1 %48, label %49, label %123

49:                                               ; preds = %45
  %50 = load %struct.line*, %struct.line** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.line, %struct.line* %50, i64 %52
  store %struct.line* %53, %struct.line** %6, align 8
  %54 = load %struct.line*, %struct.line** %6, align 8
  %55 = load %struct.line*, %struct.line** %5, align 8
  %56 = icmp ult %struct.line* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %123

58:                                               ; preds = %49
  %59 = load %struct.line*, %struct.line** %6, align 8
  %60 = getelementptr inbounds %struct.line, %struct.line* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.line*, %struct.line** %5, align 8
  %63 = getelementptr inbounds %struct.line, %struct.line* %62, i64 0
  %64 = getelementptr inbounds %struct.line, %struct.line* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %61, %65
  br i1 %66, label %85, label %67

67:                                               ; preds = %58
  %68 = load %struct.line*, %struct.line** %6, align 8
  %69 = getelementptr inbounds %struct.line, %struct.line* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.line*, %struct.line** %5, align 8
  %72 = getelementptr inbounds %struct.line, %struct.line* %71, i64 0
  %73 = getelementptr inbounds %struct.line, %struct.line* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load %struct.line*, %struct.line** %6, align 8
  %78 = getelementptr inbounds %struct.line, %struct.line* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.line*, %struct.line** %5, align 8
  %81 = getelementptr inbounds %struct.line, %struct.line* %80, i64 0
  %82 = getelementptr inbounds %struct.line, %struct.line* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %79, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76, %58
  br label %123

86:                                               ; preds = %76, %67
  %87 = load %struct.line*, %struct.line** %5, align 8
  %88 = getelementptr inbounds %struct.line, %struct.line* %87, i64 0
  %89 = getelementptr inbounds %struct.line, %struct.line* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = load %struct.line*, %struct.line** %6, align 8
  %93 = getelementptr inbounds %struct.line, %struct.line* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.line*, %struct.line** %5, align 8
  %96 = getelementptr inbounds %struct.line, %struct.line* %95, i64 0
  %97 = getelementptr inbounds %struct.line, %struct.line* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.line*, %struct.line** %6, align 8
  %101 = getelementptr inbounds %struct.line, %struct.line* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.line*, %struct.line** %5, align 8
  %103 = getelementptr inbounds %struct.line, %struct.line* %102, i64 0
  %104 = getelementptr inbounds %struct.line, %struct.line* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 1
  store i64 %105, i64* %106, align 8
  %107 = load %struct.line*, %struct.line** %6, align 8
  %108 = getelementptr inbounds %struct.line, %struct.line* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.line*, %struct.line** %5, align 8
  %111 = getelementptr inbounds %struct.line, %struct.line* %110, i64 0
  %112 = getelementptr inbounds %struct.line, %struct.line* %111, i32 0, i32 1
  store i64 %109, i64* %112, align 8
  %113 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.line*, %struct.line** %6, align 8
  %116 = getelementptr inbounds %struct.line, %struct.line* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %86
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.line*, %struct.line** %5, align 8
  %120 = sext i32 %118 to i64
  %121 = sub i64 0, %120
  %122 = getelementptr inbounds %struct.line, %struct.line* %119, i64 %121
  store %struct.line* %122, %struct.line** %5, align 8
  br label %45

123:                                              ; preds = %85, %57, %45
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %36

127:                                              ; preds = %36
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = sdiv i32 %129, 2
  store i32 %130, i32* %9, align 4
  br label %29

131:                                              ; preds = %13, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
