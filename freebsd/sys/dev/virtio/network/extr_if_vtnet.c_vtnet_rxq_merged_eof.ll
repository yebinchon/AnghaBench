; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_rxq_merged_eof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_rxq_merged_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_rxq = type { %struct.TYPE_4__, %struct.virtqueue*, %struct.vtnet_softc* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.virtqueue = type { i32 }
%struct.vtnet_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_rxq*, %struct.mbuf*, i32)* @vtnet_rxq_merged_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_rxq_merged_eof(%struct.vtnet_rxq* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vtnet_rxq*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vtnet_softc*, align 8
  %9 = alloca %struct.virtqueue*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  store %struct.vtnet_rxq* %0, %struct.vtnet_rxq** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %5, align 8
  %14 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %13, i32 0, i32 2
  %15 = load %struct.vtnet_softc*, %struct.vtnet_softc** %14, align 8
  store %struct.vtnet_softc* %15, %struct.vtnet_softc** %8, align 8
  %16 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %5, align 8
  %17 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %16, i32 0, i32 1
  %18 = load %struct.virtqueue*, %struct.virtqueue** %17, align 8
  store %struct.virtqueue* %18, %struct.virtqueue** %9, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %19, %struct.mbuf** %11, align 8
  br label %20

20:                                               ; preds = %65, %3
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %85

24:                                               ; preds = %20
  %25 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %26 = call %struct.mbuf* @virtqueue_dequeue(%struct.virtqueue* %25, i32* %12)
  store %struct.mbuf* %26, %struct.mbuf** %10, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %28 = icmp eq %struct.mbuf* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %5, align 8
  %31 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %86

35:                                               ; preds = %24
  %36 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %5, align 8
  %37 = call i64 @vtnet_rxq_new_buf(%struct.vtnet_rxq* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %5, align 8
  %41 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %5, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %47 = call i32 @vtnet_rxq_discard_buf(%struct.vtnet_rxq* %45, %struct.mbuf* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @vtnet_rxq_discard_merged_bufs(%struct.vtnet_rxq* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %39
  br label %86

55:                                               ; preds = %35
  %56 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @M_PKTHDR, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %75
  store i32 %80, i32* %78, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 1
  store %struct.mbuf* %81, %struct.mbuf** %83, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %84, %struct.mbuf** %11, align 8
  br label %20

85:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %94

86:                                               ; preds = %54, %29
  %87 = load %struct.vtnet_softc*, %struct.vtnet_softc** %8, align 8
  %88 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %93 = call i32 @m_freem(%struct.mbuf* %92)
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %86, %85
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.mbuf* @virtqueue_dequeue(%struct.virtqueue*, i32*) #1

declare dso_local i64 @vtnet_rxq_new_buf(%struct.vtnet_rxq*) #1

declare dso_local i32 @vtnet_rxq_discard_buf(%struct.vtnet_rxq*, %struct.mbuf*) #1

declare dso_local i32 @vtnet_rxq_discard_merged_bufs(%struct.vtnet_rxq*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
