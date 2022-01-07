; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_free_pci_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_free_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i32, i32*, i32*, i32*, i32, %struct.em_rx_queue* }
%struct.em_rx_queue = type { i32 }

@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_free_pci_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_free_pci_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.em_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 6
  %11 = load %struct.em_rx_queue*, %struct.em_rx_queue** %10, align 8
  store %struct.em_rx_queue* %11, %struct.em_rx_queue** %4, align 8
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
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 5
  %23 = call i32 @iflib_irq_free(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %1
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %34 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %33, i32 0, i32 0
  %35 = call i32 @iflib_irq_free(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %40 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %39, i32 1
  store %struct.em_rx_queue* %40, %struct.em_rx_queue** %4, align 8
  br label %25

41:                                               ; preds = %25
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SYS_RES_MEMORY, align 4
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @rman_get_rid(i32* %51)
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_release_resource(i32 %47, i32 %48, i32 %52, i32* %55)
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 4
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %46, %41
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SYS_RES_MEMORY, align 4
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @rman_get_rid(i32* %69)
  %71 = load %struct.adapter*, %struct.adapter** %3, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_release_resource(i32 %65, i32 %66, i32 %70, i32* %73)
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %64, %59
  %78 = load %struct.adapter*, %struct.adapter** %3, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SYS_RES_IOPORT, align 4
  %85 = load %struct.adapter*, %struct.adapter** %3, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @rman_get_rid(i32* %87)
  %89 = load %struct.adapter*, %struct.adapter** %3, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @bus_release_resource(i32 %83, i32 %84, i32 %88, i32* %91)
  %93 = load %struct.adapter*, %struct.adapter** %3, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %82, %77
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
