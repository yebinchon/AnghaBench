; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axidma.c_axidma_desc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axidma.c_axidma_desc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axidma_softc = type { i32 }
%struct.axidma_channel = type { i32, i32, i32, i32, i32, i32, %struct.xdma_channel* }
%struct.xdma_channel = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axidma_softc*, %struct.axidma_channel*)* @axidma_desc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axidma_desc_free(%struct.axidma_softc* %0, %struct.axidma_channel* %1) #0 {
  %3 = alloca %struct.axidma_softc*, align 8
  %4 = alloca %struct.axidma_channel*, align 8
  %5 = alloca %struct.xdma_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.axidma_softc* %0, %struct.axidma_softc** %3, align 8
  store %struct.axidma_channel* %1, %struct.axidma_channel** %4, align 8
  %7 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %8 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %11 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %10, i32 0, i32 6
  %12 = load %struct.xdma_channel*, %struct.xdma_channel** %11, align 8
  store %struct.xdma_channel* %12, %struct.xdma_channel** %5, align 8
  %13 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %14 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = call i32 @free(i32 %15, i32 %16)
  %18 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %19 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = call i32 @free(i32 %20, i32 %21)
  %23 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %24 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %27 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pmap_kremove_device(i32 %25, i32 %28)
  %30 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %31 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %34 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kva_free(i32 %32, i32 %35)
  %37 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %38 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %41 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.axidma_channel*, %struct.axidma_channel** %4, align 8
  %44 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vmem_free(i32 %39, i32 %42, i32 %45)
  ret i32 0
}

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @pmap_kremove_device(i32, i32) #1

declare dso_local i32 @kva_free(i32, i32) #1

declare dso_local i32 @vmem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
