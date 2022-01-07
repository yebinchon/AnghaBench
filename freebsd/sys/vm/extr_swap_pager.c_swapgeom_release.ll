; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapgeom_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapgeom_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i64 }
%struct.swdevt = type { i32* }

@sw_dev_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@swapgeom_close_ev = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*, %struct.swdevt*)* @swapgeom_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapgeom_release(%struct.g_consumer* %0, %struct.swdevt* %1) #0 {
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.swdevt*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  store %struct.swdevt* %1, %struct.swdevt** %4, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @sw_dev_mtx, i32 %5)
  %7 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %8 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @swapgeom_close_ev, align 4
  %17 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = call i64 @g_post_event(i32 %16, %struct.g_consumer* %17, i32 %18, i32* null)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %23 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @g_post_event(i32, %struct.g_consumer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
