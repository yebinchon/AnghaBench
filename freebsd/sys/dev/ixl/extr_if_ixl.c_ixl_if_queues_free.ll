; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_queues_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_queues_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { i32, %struct.ixl_tx_queue*, %struct.ixl_tx_queue*, i32 }
%struct.ixl_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { %struct.ixl_tx_queue* }

@M_IXL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixl_if_queues_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_if_queues_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.ixl_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_ring*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ixl_pf* @iflib_get_softc(i32 %8)
  store %struct.ixl_pf* %9, %struct.ixl_pf** %3, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %4, align 8
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %18 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %17, i32 0, i32 2
  %19 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %18, align 8
  store %struct.ixl_tx_queue* %19, %struct.ixl_tx_queue** %5, align 8
  br label %20

20:                                               ; preds = %42, %16
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %5, align 8
  %28 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %27, i32 0, i32 0
  store %struct.tx_ring* %28, %struct.tx_ring** %7, align 8
  %29 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %30 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %29, i32 0, i32 0
  %31 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %30, align 8
  %32 = icmp ne %struct.ixl_tx_queue* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %35 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %34, i32 0, i32 0
  %36 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %35, align 8
  %37 = load i32, i32* @M_IXL, align 4
  %38 = call i32 @free(%struct.ixl_tx_queue* %36, i32 %37)
  %39 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %40 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %39, i32 0, i32 0
  store %struct.ixl_tx_queue* null, %struct.ixl_tx_queue** %40, align 8
  br label %41

41:                                               ; preds = %33, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %5, align 8
  %46 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %45, i32 1
  store %struct.ixl_tx_queue* %46, %struct.ixl_tx_queue** %5, align 8
  br label %20

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %50 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %49, i32 0, i32 2
  %51 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %50, align 8
  %52 = icmp ne %struct.ixl_tx_queue* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %55 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %54, i32 0, i32 2
  %56 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %55, align 8
  %57 = load i32, i32* @M_IXL, align 4
  %58 = call i32 @free(%struct.ixl_tx_queue* %56, i32 %57)
  %59 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %60 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %59, i32 0, i32 2
  store %struct.ixl_tx_queue* null, %struct.ixl_tx_queue** %60, align 8
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %63 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %62, i32 0, i32 1
  %64 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %63, align 8
  %65 = icmp ne %struct.ixl_tx_queue* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %68 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %67, i32 0, i32 1
  %69 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %68, align 8
  %70 = load i32, i32* @M_IXL, align 4
  %71 = call i32 @free(%struct.ixl_tx_queue* %69, i32 %70)
  %72 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %73 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %72, i32 0, i32 1
  store %struct.ixl_tx_queue* null, %struct.ixl_tx_queue** %73, align 8
  br label %74

74:                                               ; preds = %66, %61
  ret void
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @free(%struct.ixl_tx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
