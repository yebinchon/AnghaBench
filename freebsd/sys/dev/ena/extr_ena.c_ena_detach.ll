; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ena_com_dev* }
%struct.TYPE_4__ = type { i32* }
%struct.ena_com_dev = type { %struct.ena_com_dev* }

@.str = private unnamed_addr constant [30 x i8] c"VLAN is in use, detach first\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unmapped RX DMA tag associations\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unmapped TX DMA tag associations\0A\00", align 1
@ENA_FLAG_RSS_ACTIVE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ena_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ena_adapter* @device_get_softc(i32 %7)
  store %struct.ena_adapter* %8, %struct.ena_adapter** %4, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 9
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  store %struct.ena_com_dev* %11, %struct.ena_com_dev** %5, align 8
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EBUSY, align 4
  store i32 %23, i32* %2, align 4
  br label %141

24:                                               ; preds = %1
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @ether_ifdetach(%struct.TYPE_4__* %27)
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %29, i32 0, i32 8
  %31 = call i32 @callout_drain(i32* %30)
  br label %32

32:                                               ; preds = %40, %24
  %33 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %36, i32 0, i32 7
  %38 = call i64 @taskqueue_cancel(i32 %35, i32* %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %44, i32 0, i32 7
  %46 = call i32 @taskqueue_drain(i32 %43, i32* %45)
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @taskqueue_free(i32 %50)
  %52 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %52, i32 0, i32 1
  %54 = call i32 @sx_xlock(i32* %53)
  %55 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %56 = call i32 @ena_down(%struct.ena_adapter* %55)
  %57 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %58 = call i32 @ena_destroy_device(%struct.ena_adapter* %57, i32 1)
  %59 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %59, i32 0, i32 1
  %61 = call i32 @sx_unlock(i32* %60)
  %62 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %63 = call i32 @ena_free_all_io_rings_resources(%struct.ena_adapter* %62)
  %64 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %64, i32 0, i32 5
  %66 = call i32 @ena_free_counters(i32* %65, i32 4)
  %67 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %67, i32 0, i32 4
  %69 = call i32 @ena_free_counters(i32* %68, i32 4)
  %70 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %71 = call i32 @ena_free_rx_dma_tag(%struct.ena_adapter* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %47
  %78 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %47
  %83 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %84 = call i32 @ena_free_tx_dma_tag(%struct.ena_adapter* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %82
  %96 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %97 = call i32 @ena_free_irqs(%struct.ena_adapter* %96)
  %98 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %99 = call i32 @ena_free_pci_resources(%struct.ena_adapter* %98)
  %100 = load i32, i32* @ENA_FLAG_RSS_ACTIVE, align 4
  %101 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %102 = call i32 @ENA_FLAG_ISSET(i32 %100, %struct.ena_adapter* %101)
  %103 = call i64 @likely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %107 = call i32 @ena_com_rss_destroy(%struct.ena_com_dev* %106)
  br label %108

108:                                              ; preds = %105, %95
  %109 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %110 = call i32 @ena_com_delete_host_info(%struct.ena_com_dev* %109)
  %111 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %111, i32 0, i32 2
  %113 = call i32 @mtx_destroy(i32* %112)
  %114 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %114, i32 0, i32 1
  %116 = call i32 @sx_destroy(i32* %115)
  %117 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = call i32 @if_free(%struct.TYPE_4__* %119)
  %121 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %122 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %121, i32 0, i32 0
  %123 = load %struct.ena_com_dev*, %struct.ena_com_dev** %122, align 8
  %124 = icmp ne %struct.ena_com_dev* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %108
  %126 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %127 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %126, i32 0, i32 0
  %128 = load %struct.ena_com_dev*, %struct.ena_com_dev** %127, align 8
  %129 = load i32, i32* @M_DEVBUF, align 4
  %130 = call i32 @free(%struct.ena_com_dev* %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %108
  %132 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %133 = icmp ne %struct.ena_com_dev* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %136 = load i32, i32* @M_DEVBUF, align 4
  %137 = call i32 @free(%struct.ena_com_dev* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @bus_generic_detach(i32 %139)
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %18
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.ena_adapter* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ether_ifdetach(%struct.TYPE_4__*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i64 @taskqueue_cancel(i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ena_down(%struct.ena_adapter*) #1

declare dso_local i32 @ena_destroy_device(%struct.ena_adapter*, i32) #1

declare dso_local i32 @sx_unlock(i32*) #1

declare dso_local i32 @ena_free_all_io_rings_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_counters(i32*, i32) #1

declare dso_local i32 @ena_free_rx_dma_tag(%struct.ena_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_free_tx_dma_tag(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_irqs(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_pci_resources(%struct.ena_adapter*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_com_rss_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_delete_host_info(%struct.ena_com_dev*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @if_free(%struct.TYPE_4__*) #1

declare dso_local i32 @free(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
