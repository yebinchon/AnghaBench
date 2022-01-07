; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_mq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_mq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.ena_adapter* }
%struct.ena_adapter = type { i64, %struct.ena_ring*, i32 }
%struct.ena_ring = type { i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@curcpu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_mq_start(%struct.TYPE_7__* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca %struct.ena_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %12, align 8
  store %struct.ena_adapter* %13, %struct.ena_adapter** %6, align 8
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @if_getdrvflags(i32 %16)
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  store i32 %25, i32* %3, align 4
  br label %96

26:                                               ; preds = %2
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %27)
  %29 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = urem i64 %35, %38
  store i64 %39, i64* %10, align 8
  br label %46

40:                                               ; preds = %26
  %41 = load i64, i64* @curcpu, align 8
  %42 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = urem i64 %41, %44
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %47, i32 0, i32 1
  %49 = load %struct.ena_ring*, %struct.ena_ring** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %49, i64 %50
  store %struct.ena_ring* %51, %struct.ena_ring** %7, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %54 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @drbr_empty(%struct.TYPE_7__* %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %59 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %62 = call i32 @drbr_enqueue(%struct.TYPE_7__* %57, i32 %60, %struct.mbuf* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %46
  %69 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %70 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %73 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %72, i32 0, i32 0
  %74 = call i32 @taskqueue_enqueue(i32 %71, i32* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %96

76:                                               ; preds = %46
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %81 = call i64 @ENA_RING_MTX_TRYLOCK(%struct.ena_ring* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %85 = call i32 @ena_start_xmit(%struct.ena_ring* %84)
  %86 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %87 = call i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring* %86)
  br label %95

88:                                               ; preds = %79, %76
  %89 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %90 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %93 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %92, i32 0, i32 0
  %94 = call i32 @taskqueue_enqueue(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %88, %83
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %68, %24
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @drbr_empty(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @drbr_enqueue(%struct.TYPE_7__*, i32, %struct.mbuf*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i64 @ENA_RING_MTX_TRYLOCK(%struct.ena_ring*) #1

declare dso_local i32 @ena_start_xmit(%struct.ena_ring*) #1

declare dso_local i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
