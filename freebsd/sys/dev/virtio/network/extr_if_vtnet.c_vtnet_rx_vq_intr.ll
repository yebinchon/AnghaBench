; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_rx_vq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_rx_vq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.vtnet_rxq = type { i64, i32, i32, %struct.TYPE_2__, %struct.vtnet_softc* }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@VTNET_INTR_DISABLE_RETRIES = common dso_local global i32 0, align 4
@NM_IRQ_PASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtnet_rx_vq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_rx_vq_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca %struct.vtnet_rxq*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.vtnet_rxq*
  store %struct.vtnet_rxq* %9, %struct.vtnet_rxq** %4, align 8
  %10 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %11 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %10, i32 0, i32 4
  %12 = load %struct.vtnet_softc*, %struct.vtnet_softc** %11, align 8
  store %struct.vtnet_softc* %12, %struct.vtnet_softc** %3, align 8
  %13 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %13, i32 0, i32 1
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %17 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %20 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @__predict_false(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %28 = call i32 @vtnet_rxq_disable_intr(%struct.vtnet_rxq* %27)
  br label %80

29:                                               ; preds = %1
  %30 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %31 = call i32 @VTNET_RXQ_LOCK(%struct.vtnet_rxq* %30)
  br label %32

32:                                               ; preds = %62, %29
  %33 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %41 = call i32 @VTNET_RXQ_UNLOCK(%struct.vtnet_rxq* %40)
  br label %80

42:                                               ; preds = %32
  %43 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %44 = call i32 @vtnet_rxq_eof(%struct.vtnet_rxq* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %49 = call i64 @vtnet_rxq_enable_intr(%struct.vtnet_rxq* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %56 = call i32 @vtnet_rxq_disable_intr(%struct.vtnet_rxq* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @VTNET_INTR_DISABLE_RETRIES, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %32

63:                                               ; preds = %57
  %64 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %65 = call i32 @VTNET_RXQ_UNLOCK(%struct.vtnet_rxq* %64)
  %66 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %67 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %72 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %75 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %74, i32 0, i32 1
  %76 = call i32 @taskqueue_enqueue(i32 %73, i32* %75)
  br label %80

77:                                               ; preds = %47
  %78 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %79 = call i32 @VTNET_RXQ_UNLOCK(%struct.vtnet_rxq* %78)
  br label %80

80:                                               ; preds = %26, %39, %77, %63
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @vtnet_rxq_disable_intr(%struct.vtnet_rxq*) #1

declare dso_local i32 @VTNET_RXQ_LOCK(%struct.vtnet_rxq*) #1

declare dso_local i32 @VTNET_RXQ_UNLOCK(%struct.vtnet_rxq*) #1

declare dso_local i32 @vtnet_rxq_eof(%struct.vtnet_rxq*) #1

declare dso_local i64 @vtnet_rxq_enable_intr(%struct.vtnet_rxq*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
