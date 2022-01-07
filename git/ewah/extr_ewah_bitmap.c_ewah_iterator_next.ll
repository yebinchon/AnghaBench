; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_iterator_next.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_iterator_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_iterator = type { i64, i64, i64, i64, i64, i64, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ewah_iterator_next(i32* %0, %struct.ewah_iterator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ewah_iterator*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ewah_iterator* %1, %struct.ewah_iterator** %5, align 8
  %6 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %7 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %10 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

14:                                               ; preds = %2
  %15 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %16 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %19 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %24 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %28 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 -1, i32 0
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %70

34:                                               ; preds = %14
  %35 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %36 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %39 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %45 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %49 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %53 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %56 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %62 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %65 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %4, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %34, %22
  %71 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %72 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %75 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %70
  %79 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %80 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %83 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %78
  %87 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %88 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %92 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.ewah_iterator*, %struct.ewah_iterator** %5, align 8
  %97 = call i32 @read_new_rlw(%struct.ewah_iterator* %96)
  br label %98

98:                                               ; preds = %95, %86
  br label %99

99:                                               ; preds = %98, %78, %70
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %13
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_new_rlw(%struct.ewah_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
