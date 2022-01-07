; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_queue_evt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_queue_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32 }
%struct.mfi_evt_detail = type { i32 }
%struct.mfi_evt_queue_elm = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@taskqueue_swi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_softc*, %struct.mfi_evt_detail*)* @mfi_queue_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_queue_evt(%struct.mfi_softc* %0, %struct.mfi_evt_detail* %1) #0 {
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca %struct.mfi_evt_detail*, align 8
  %5 = alloca %struct.mfi_evt_queue_elm*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store %struct.mfi_evt_detail* %1, %struct.mfi_evt_detail** %4, align 8
  %6 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %6, i32 0, i32 2
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load i32, i32* @M_MFIBUF, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.mfi_evt_queue_elm* @malloc(i32 4, i32 %10, i32 %13)
  store %struct.mfi_evt_queue_elm* %14, %struct.mfi_evt_queue_elm** %5, align 8
  %15 = load %struct.mfi_evt_queue_elm*, %struct.mfi_evt_queue_elm** %5, align 8
  %16 = icmp eq %struct.mfi_evt_queue_elm* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.mfi_evt_queue_elm*, %struct.mfi_evt_queue_elm** %5, align 8
  %20 = getelementptr inbounds %struct.mfi_evt_queue_elm, %struct.mfi_evt_queue_elm* %19, i32 0, i32 0
  %21 = load %struct.mfi_evt_detail*, %struct.mfi_evt_detail** %4, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.mfi_evt_detail* %21, i32 4)
  %23 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %23, i32 0, i32 1
  %25 = load %struct.mfi_evt_queue_elm*, %struct.mfi_evt_queue_elm** %5, align 8
  %26 = load i32, i32* @link, align 4
  %27 = call i32 @TAILQ_INSERT_TAIL(i32* %24, %struct.mfi_evt_queue_elm* %25, i32 %26)
  %28 = load i32, i32* @taskqueue_swi, align 4
  %29 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %29, i32 0, i32 0
  %31 = call i32 @taskqueue_enqueue(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mfi_evt_queue_elm* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mfi_evt_detail*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mfi_evt_queue_elm*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
