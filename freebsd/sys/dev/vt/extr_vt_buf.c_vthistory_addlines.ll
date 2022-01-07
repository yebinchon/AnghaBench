; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vthistory_addlines.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vthistory_addlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VBF_HISTORY_FULL = common dso_local global i32 0, align 4
@VBF_SCROLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vthistory_addlines(%struct.vt_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.vt_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %9 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %13 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %16 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %14, %18
  %20 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %21 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @VBF_HISTORY_FULL, align 4
  %26 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %27 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %31 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %34 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %24, %2
  %38 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %39 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VBF_SCROLL, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %46 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %49 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %52 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %55 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %58 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %56, %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %67 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @vtbuf_in_this_range(i32 %65, i32 %69, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %50
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %79 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @vtbuf_in_this_range(i32 %77, i32 %81, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %76, %50
  %89 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %90 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %94 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %97 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %101 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %88, %76
  ret void
}

declare dso_local i64 @vtbuf_in_this_range(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
