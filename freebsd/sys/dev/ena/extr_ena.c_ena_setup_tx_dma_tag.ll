; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_setup_tx_dma_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_setup_tx_dma_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i64, i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@ENA_TSO_MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_setup_tx_dma_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_setup_tx_dma_tag(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %4 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @bus_get_dma_tag(i32 %6)
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ENA_DMA_BIT_MASK(i32 %10)
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %13 = load i32, i32* @ENA_TSO_MAXSIZE, align 4
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = load i32, i32* @ENA_TSO_MAXSIZE, align 4
  %19 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %19, i32 0, i32 0
  %21 = call i32 @bus_dma_tag_create(i32 %7, i32 1, i32 0, i32 %11, i32 %12, i32* null, i32* null, i32 %13, i64 %17, i32 %18, i32 0, i32* null, i32* null, i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @ENA_DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
