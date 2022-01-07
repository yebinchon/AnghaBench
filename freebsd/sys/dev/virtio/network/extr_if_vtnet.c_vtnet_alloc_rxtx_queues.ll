; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_alloc_rxtx_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_alloc_rxtx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32*, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_softc*)* @vtnet_alloc_rxtx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_alloc_rxtx_queues(%struct.vtnet_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %3, align 8
  %7 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @malloc(i32 %13, i32 %14, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_DEVBUF, align 4
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @malloc(i32 %25, i32 %26, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %1
  %39 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %1
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %2, align 4
  br label %73

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @vtnet_init_rxq(%struct.vtnet_softc* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %73

58:                                               ; preds = %50
  %59 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @vtnet_init_txq(%struct.vtnet_softc* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %73

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %46

70:                                               ; preds = %46
  %71 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %72 = call i32 @vtnet_setup_queue_sysctl(%struct.vtnet_softc* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %70, %64, %56, %43
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @vtnet_init_rxq(%struct.vtnet_softc*, i32) #1

declare dso_local i32 @vtnet_init_txq(%struct.vtnet_softc*, i32) #1

declare dso_local i32 @vtnet_setup_queue_sysctl(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
