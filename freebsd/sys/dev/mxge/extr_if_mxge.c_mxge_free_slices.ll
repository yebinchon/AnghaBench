; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_free_slices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_free_slices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.mxge_slice_state* }
%struct.mxge_slice_state = type { %struct.TYPE_6__, %struct.TYPE_5__, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @mxge_free_slices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_free_slices(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.mxge_slice_state*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %8 = icmp eq %struct.mxge_slice_state* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %53, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %11
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %20, i64 %22
  store %struct.mxge_slice_state* %23, %struct.mxge_slice_state** %3, align 8
  %24 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %25 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %30 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %29, i32 0, i32 3
  %31 = call i32 @mxge_dma_free(i32* %30)
  %32 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %33 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %35 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @mtx_destroy(i32* %36)
  br label %38

38:                                               ; preds = %28, %17
  %39 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %40 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %46 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = call i32 @mxge_dma_free(i32* %47)
  %49 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %50 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %44, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %11

56:                                               ; preds = %11
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %58, align 8
  %60 = load i32, i32* @M_DEVBUF, align 4
  %61 = call i32 @free(%struct.mxge_slice_state* %59, i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store %struct.mxge_slice_state* null, %struct.mxge_slice_state** %63, align 8
  br label %64

64:                                               ; preds = %56, %9
  ret void
}

declare dso_local i32 @mxge_dma_free(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.mxge_slice_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
