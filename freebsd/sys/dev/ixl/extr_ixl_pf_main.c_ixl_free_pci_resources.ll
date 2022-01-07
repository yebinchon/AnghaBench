; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_free_pci_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_free_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32*, %struct.ixl_vsi }
%struct.ixl_vsi = type { i32, i32, i32, %struct.ixl_rx_queue* }
%struct.ixl_rx_queue = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_free_pci_resources(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixl_rx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %7 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %8 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %7, i32 0, i32 1
  store %struct.ixl_vsi* %8, %struct.ixl_vsi** %3, align 8
  %9 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iflib_get_dev(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %13, i32 0, i32 3
  %15 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %14, align 8
  store %struct.ixl_rx_queue* %15, %struct.ixl_rx_queue** %5, align 8
  %16 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %5, align 8
  %17 = icmp eq %struct.ixl_rx_queue* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %21 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %24 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %23, i32 0, i32 2
  %25 = call i32 @iflib_irq_free(i32 %22, i32* %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %39, %19
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %29 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %34 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %5, align 8
  %37 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %36, i32 0, i32 0
  %38 = call i32 @iflib_irq_free(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %5, align 8
  %43 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %42, i32 1
  store %struct.ixl_rx_queue* %43, %struct.ixl_rx_queue** %5, align 8
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %47 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %54 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @rman_get_rid(i32* %55)
  %57 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %58 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @bus_release_resource(i32 %51, i32 %52, i32 %56, i32* %59)
  br label %61

61:                                               ; preds = %50, %45
  ret void
}

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
