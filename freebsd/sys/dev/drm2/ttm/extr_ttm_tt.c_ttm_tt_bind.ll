; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_tt_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_tt_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ttm_tt*)* }
%struct.ttm_mem_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@tt_bound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_bind(%struct.ttm_tt* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %8 = icmp ne %struct.ttm_tt* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %14 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @tt_bound, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %54

19:                                               ; preds = %12
  %20 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %21 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %25, align 8
  %27 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %28 = call i32 %26(%struct.ttm_tt* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %19
  %34 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %35 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)**
  %39 = load i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)** %38, align 8
  %40 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %41 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %42 = call i32 %39(%struct.ttm_tt* %40, %struct.ttm_mem_reg* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %33
  %51 = load i64, i64* @tt_bound, align 8
  %52 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %53 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %48, %31, %18, %9
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
