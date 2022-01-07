; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubt_softc = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@taskqueue_swi = common dso_local global i32 0, align 4
@UBT_N_TRANSFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubt_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubt_softc*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ubt_softc* @device_get_softc(i32 %5)
  store %struct.ubt_softc* %6, %struct.ubt_softc** %3, align 8
  %7 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %7, i32 0, i32 7
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %13, i32 0, i32 7
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @NG_NODE_REALLY_DIE(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @ng_rmnode_self(i32* %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @taskqueue_swi, align 4
  %21 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %21, i32 0, i32 6
  %23 = call i32 @taskqueue_drain(i32 %20, i32* %22)
  %24 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UBT_N_TRANSFER, align 4
  %28 = call i32 @usbd_transfer_unsetup(i32 %26, i32 %27)
  %29 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %30 = call i32 @UBT_NG_LOCK(%struct.ubt_softc* %29)
  %31 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %31, i32 0, i32 4
  %33 = call i32 @NG_BT_MBUFQ_DESTROY(i32* %32)
  %34 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %34, i32 0, i32 3
  %36 = call i32 @NG_BT_MBUFQ_DESTROY(i32* %35)
  %37 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %37, i32 0, i32 2
  %39 = call i32 @NG_BT_MBUFQ_DESTROY(i32* %38)
  %40 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %41 = call i32 @UBT_NG_UNLOCK(%struct.ubt_softc* %40)
  %42 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %42, i32 0, i32 1
  %44 = call i32 @mtx_destroy(i32* %43)
  %45 = load %struct.ubt_softc*, %struct.ubt_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %45, i32 0, i32 0
  %47 = call i32 @mtx_destroy(i32* %46)
  ret i32 0
}

declare dso_local %struct.ubt_softc* @device_get_softc(i32) #1

declare dso_local i32 @NG_NODE_REALLY_DIE(i32*) #1

declare dso_local i32 @ng_rmnode_self(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @UBT_NG_LOCK(%struct.ubt_softc*) #1

declare dso_local i32 @NG_BT_MBUFQ_DESTROY(i32*) #1

declare dso_local i32 @UBT_NG_UNLOCK(%struct.ubt_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
