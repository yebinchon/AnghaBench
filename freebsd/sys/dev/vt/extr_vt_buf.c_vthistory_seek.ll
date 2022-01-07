; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vthistory_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vthistory_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VBF_SCROLL = common dso_local global i32 0, align 4
@VBF_HISTORY_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vthistory_seek(%struct.vt_buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %13 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VBF_SCROLL, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %20 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %23 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %28 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %31 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  store i32 65535, i32* %4, align 4
  br label %118

32:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %118

33:                                               ; preds = %3
  %34 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %35 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %38 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VBF_HISTORY_FULL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %46 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %44, %48
  %50 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %51 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  br label %55

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %43
  %56 = phi i32 [ %53, %43 ], [ 0, %54 ]
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %107 [
    i32 128, label %58
    i32 130, label %66
    i32 129, label %103
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %11, align 4
  br label %107

66:                                               ; preds = %55
  %67 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %68 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %73 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %71, %75
  %77 = icmp sge i32 %70, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %80 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %78, %66
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @MAX(i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @MIN(i32 %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %98 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %96, %84
  br label %107

103:                                              ; preds = %55
  %104 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %105 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %55, %103, %102, %62
  %108 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %109 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %110, %111
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %116 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %107, %32, %26
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
