; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_tt_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_tt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, i32, %struct.TYPE_4__*, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_4__ = type { i32 (%struct.ttm_tt*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ttm_tt*)* }

@tt_bound = common dso_local global i64 0, align 8
@TTM_PAGE_FLAG_PERSISTENT_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_tt_destroy(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  %3 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %4 = icmp eq %struct.ttm_tt* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %63

9:                                                ; preds = %1
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %11 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @tt_bound, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %17 = call i32 @ttm_tt_unbind(%struct.ttm_tt* %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %20 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %28 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %27, i32 0, i32 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %32, align 8
  %34 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %35 = call i32 %33(%struct.ttm_tt* %34)
  br label %36

36:                                               ; preds = %26, %18
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %38 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TTM_PAGE_FLAG_PERSISTENT_SWAP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %36
  %44 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %45 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %50 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @vm_object_deallocate(i32* %51)
  br label %53

53:                                               ; preds = %48, %43, %36
  %54 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %55 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %57 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %59, align 8
  %61 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %62 = call i32 %60(%struct.ttm_tt* %61)
  br label %63

63:                                               ; preds = %53, %8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_tt_unbind(%struct.ttm_tt*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
