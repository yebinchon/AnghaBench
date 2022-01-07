; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_iscursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_iscursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@VBF_CURSOR = common dso_local global i32 0, align 4
@VBF_SCROLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vtbuf_iscursor(%struct.vt_buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %15 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VBF_CURSOR, align 4
  %18 = load i32, i32* @VBF_SCROLL, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @VBF_CURSOR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %3
  %24 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %25 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %32 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %123

38:                                               ; preds = %30, %23, %3
  %39 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %40 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %44 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %38
  %49 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %50 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %54 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %123

59:                                               ; preds = %48, %38
  %60 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %61 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %65 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %69 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %73 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  %76 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %77 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = srem i32 %83, %84
  store i32 %85, i32* %13, align 4
  %86 = load %struct.vt_buf*, %struct.vt_buf** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @vtbuf_wth(%struct.vt_buf* %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %13, align 4
  %90 = mul nsw i32 2, %89
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %59
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96, %59
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %100, %96, %93
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @POS_INDEX(i32 %108, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @POS_INDEX(i32 %111, i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @POS_INDEX(i32 %114, i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @POS_INDEX(i32 0, i32 %117)
  %119 = call i64 @vtbuf_in_this_range(i32 %110, i32 %113, i32 %116, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  store i32 1, i32* %4, align 4
  br label %123

122:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %121, %58, %37
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @vtbuf_wth(%struct.vt_buf*, i32) #1

declare dso_local i64 @vtbuf_in_this_range(i32, i32, i32, i32) #1

declare dso_local i32 @POS_INDEX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
