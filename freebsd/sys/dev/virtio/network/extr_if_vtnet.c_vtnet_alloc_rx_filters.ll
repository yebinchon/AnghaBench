; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_alloc_rx_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_alloc_rx_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32*, i32* }

@VTNET_FLAG_CTRL_RX = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VTNET_FLAG_VLAN_FILTER = common dso_local global i32 0, align 4
@VTNET_VLAN_FILTER_NWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_softc*)* @vtnet_alloc_rx_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_alloc_rx_filters(%struct.vtnet_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_softc*, align 8
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %3, align 8
  %4 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %5 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @VTNET_FLAG_CTRL_RX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i8* @malloc(i32 4, i32 %11, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %20 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %28 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VTNET_FLAG_VLAN_FILTER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load i32, i32* @VTNET_VLAN_FILTER_NWORDS, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @M_DEVBUF, align 4
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = load i32, i32* @M_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = call i8* @malloc(i32 %37, i32 %38, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %45 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %47 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %26
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %23
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
