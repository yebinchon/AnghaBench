; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_get_marked_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_get_marked_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vtbuf_get_marked_len(%struct.vt_buf* %0) #0 {
  %2 = alloca %struct.vt_buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %2, align 8
  %8 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %9 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %10 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vtbuf_htw(%struct.vt_buf* %8, i32 %12)
  %14 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %15 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @POS_INDEX(i32 %13, i32 %17)
  %19 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %20 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %21 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vtbuf_htw(%struct.vt_buf* %19, i32 %23)
  %25 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %26 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @POS_INDEX(i32 %24, i32 %28)
  %30 = icmp sgt i64 %18, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %1
  %32 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %33 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %32, i32 0, i32 2
  %34 = bitcast %struct.TYPE_6__* %7 to i64*
  %35 = load i64, i64* %34, align 4
  %36 = bitcast %struct.TYPE_7__* %33 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = call i32 @POS_COPY(i64 %35, i64 %37)
  %39 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %40 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %39, i32 0, i32 1
  %41 = bitcast %struct.TYPE_6__* %6 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = bitcast %struct.TYPE_7__* %40 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = call i32 @POS_COPY(i64 %42, i64 %44)
  br label %61

46:                                               ; preds = %1
  %47 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %48 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %47, i32 0, i32 2
  %49 = bitcast %struct.TYPE_6__* %6 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = bitcast %struct.TYPE_7__* %48 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call i32 @POS_COPY(i64 %50, i64 %52)
  %54 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %55 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_6__* %7 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = bitcast %struct.TYPE_7__* %55 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = call i32 @POS_COPY(i64 %57, i64 %59)
  br label %61

61:                                               ; preds = %46, %31
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %65 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %63, %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %68, %70
  store i32 %71, i32* %4, align 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %75 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %73, %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %78, %80
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %86, %88
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %84, %90
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  ret i32 %95
}

declare dso_local i64 @POS_INDEX(i32, i32) #1

declare dso_local i32 @vtbuf_htw(%struct.vt_buf*, i32) #1

declare dso_local i32 @POS_COPY(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
