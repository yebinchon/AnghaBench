; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_queues_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_queues_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { %struct.ixl_tx_queue*, %struct.ixl_tx_queue*, %struct.TYPE_2__*, i32 }
%struct.ixl_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { %struct.ixl_tx_queue* }
%struct.TYPE_2__ = type { i32 }

@M_IAVF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @iavf_if_queues_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_if_queues_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_sc*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.ixl_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_ring*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.iavf_sc* @iflib_get_softc(i32 %8)
  store %struct.iavf_sc* %9, %struct.iavf_sc** %3, align 8
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %11 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %10, i32 0, i32 0
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %4, align 8
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %18 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %17, i32 0, i32 1
  %19 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %18, align 8
  store %struct.ixl_tx_queue* %19, %struct.ixl_tx_queue** %5, align 8
  br label %20

20:                                               ; preds = %44, %16
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %5, align 8
  %30 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %29, i32 0, i32 0
  store %struct.tx_ring* %30, %struct.tx_ring** %7, align 8
  %31 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %32 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %31, i32 0, i32 0
  %33 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %32, align 8
  %34 = icmp ne %struct.ixl_tx_queue* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %37 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %36, i32 0, i32 0
  %38 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %37, align 8
  %39 = load i32, i32* @M_IAVF, align 4
  %40 = call i32 @free(%struct.ixl_tx_queue* %38, i32 %39)
  %41 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %42 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %41, i32 0, i32 0
  store %struct.ixl_tx_queue* null, %struct.ixl_tx_queue** %42, align 8
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %5, align 8
  %48 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %47, i32 1
  store %struct.ixl_tx_queue* %48, %struct.ixl_tx_queue** %5, align 8
  br label %20

49:                                               ; preds = %20
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %52 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %51, i32 0, i32 1
  %53 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %52, align 8
  %54 = icmp ne %struct.ixl_tx_queue* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %57 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %56, i32 0, i32 1
  %58 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %57, align 8
  %59 = load i32, i32* @M_IAVF, align 4
  %60 = call i32 @free(%struct.ixl_tx_queue* %58, i32 %59)
  %61 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %62 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %61, i32 0, i32 1
  store %struct.ixl_tx_queue* null, %struct.ixl_tx_queue** %62, align 8
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %65 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %64, i32 0, i32 0
  %66 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %65, align 8
  %67 = icmp ne %struct.ixl_tx_queue* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %70 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %69, i32 0, i32 0
  %71 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %70, align 8
  %72 = load i32, i32* @M_IAVF, align 4
  %73 = call i32 @free(%struct.ixl_tx_queue* %71, i32 %72)
  %74 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %75 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %74, i32 0, i32 0
  store %struct.ixl_tx_queue* null, %struct.ixl_tx_queue** %75, align 8
  br label %76

76:                                               ; preds = %68, %63
  ret void
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i32 @free(%struct.ixl_tx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
