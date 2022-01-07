; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_free_pci_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_free_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i32, i32*, i32, %struct.ix_rx_queue* }
%struct.ix_rx_queue = type { i32 }

@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_free_pci_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_free_pci_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ix_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 4
  %11 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %10, align 8
  store %struct.ix_rx_queue* %11, %struct.ix_rx_queue** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 3
  %23 = call i32 @iflib_irq_free(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %4, align 8
  %26 = icmp ne %struct.ix_rx_queue* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %4, align 8
  %37 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %36, i32 0, i32 0
  %38 = call i32 @iflib_irq_free(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %4, align 8
  %43 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %42, i32 1
  store %struct.ix_rx_queue* %43, %struct.ix_rx_queue** %4, align 8
  br label %28

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @rman_get_rid(i32* %55)
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @bus_release_resource(i32 %51, i32 %52, i32 %56, i32* %59)
  br label %61

61:                                               ; preds = %50, %45
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

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
