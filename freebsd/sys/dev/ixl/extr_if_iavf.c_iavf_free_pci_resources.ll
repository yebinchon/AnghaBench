; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_free_pci_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_free_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32*, i32, %struct.ixl_vsi }
%struct.ixl_vsi = type { i32, i32, i32, %struct.ixl_rx_queue* }
%struct.ixl_rx_queue = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_sc*)* @iavf_free_pci_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_free_pci_resources(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca %struct.ixl_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %7 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %8 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %7, i32 0, i32 2
  store %struct.ixl_vsi* %8, %struct.ixl_vsi** %3, align 8
  %9 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %9, i32 0, i32 3
  %11 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %10, align 8
  store %struct.ixl_rx_queue* %11, %struct.ixl_rx_queue** %4, align 8
  %12 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %13 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %16 = icmp eq %struct.ixl_rx_queue* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 2
  %24 = call i32 @iflib_irq_free(i32 %21, i32* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %38, %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %28 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %33 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %36 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %35, i32 0, i32 0
  %37 = call i32 @iflib_irq_free(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %41, i32 1
  store %struct.ixl_rx_queue* %42, %struct.ixl_rx_queue** %4, align 8
  br label %25

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43, %17
  %45 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %46 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %53 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rman_get_rid(i32* %54)
  %56 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %57 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 %55, i32* %58)
  br label %60

60:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
