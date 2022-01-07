; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_quiesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32 }

@XBD_Q_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbd_softc*)* @xbd_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_quiesce(%struct.xbd_softc* %0) #0 {
  %2 = alloca %struct.xbd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.xbd_softc* %0, %struct.xbd_softc** %2, align 8
  br label %4

4:                                                ; preds = %26, %1
  %5 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %6 = load i32, i32* @XBD_Q_BUSY, align 4
  %7 = call i64 @xbd_queue_length(%struct.xbd_softc* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %11 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @RING_FINAL_CHECK_FOR_RESPONSES(i32* %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %18 = call i32 @xbd_int(%struct.xbd_softc* %17)
  br label %19

19:                                               ; preds = %16, %9
  %20 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %21 = load i32, i32* @XBD_Q_BUSY, align 4
  %22 = call i64 @xbd_queue_length(%struct.xbd_softc* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (...) @HYPERVISOR_yield()
  br label %26

26:                                               ; preds = %24, %19
  br label %4

27:                                               ; preds = %4
  ret void
}

declare dso_local i64 @xbd_queue_length(%struct.xbd_softc*, i32) #1

declare dso_local i32 @RING_FINAL_CHECK_FOR_RESPONSES(i32*, i32) #1

declare dso_local i32 @xbd_int(%struct.xbd_softc*) #1

declare dso_local i32 @HYPERVISOR_yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
