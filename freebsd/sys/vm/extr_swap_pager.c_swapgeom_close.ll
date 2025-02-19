; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapgeom_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapgeom_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.swdevt = type { %struct.g_consumer* }
%struct.g_consumer = type { i32 }

@sw_dev_mtx = common dso_local global i32 0, align 4
@swapgeom_close_ev = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.swdevt*)* @swapgeom_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapgeom_close(%struct.thread* %0, %struct.swdevt* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.swdevt*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.swdevt* %1, %struct.swdevt** %4, align 8
  %6 = call i32 @mtx_lock(i32* @sw_dev_mtx)
  %7 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %8 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %7, i32 0, i32 0
  %9 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  store %struct.g_consumer* %9, %struct.g_consumer** %5, align 8
  %10 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %11 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %10, i32 0, i32 0
  store %struct.g_consumer* null, %struct.g_consumer** %11, align 8
  %12 = call i32 @mtx_unlock(i32* @sw_dev_mtx)
  %13 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %14 = icmp ne %struct.g_consumer* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @swapgeom_close_ev, align 4
  %17 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = call i32 @g_waitfor_event(i32 %16, %struct.g_consumer* %17, i32 %18, i32* null)
  br label %20

20:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_waitfor_event(i32, %struct.g_consumer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
