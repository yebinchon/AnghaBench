; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softdma_channel = type { i32 }
%struct.softdma_softc = type { %struct.softdma_channel* }

@A_ONCHIP_FIFO_MEM_CORE_STATUS_REG_EVENT = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_EVENT_OVERFLOW = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_EVENT_UNDERFLOW = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_ERROR_MASK = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_ERROR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @softdma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @softdma_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.softdma_channel*, align 8
  %4 = alloca %struct.softdma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.softdma_softc*
  store %struct.softdma_softc* %8, %struct.softdma_softc** %4, align 8
  %9 = load %struct.softdma_softc*, %struct.softdma_softc** %4, align 8
  %10 = getelementptr inbounds %struct.softdma_softc, %struct.softdma_softc* %9, i32 0, i32 0
  %11 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %12 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %11, i64 0
  store %struct.softdma_channel* %12, %struct.softdma_channel** %3, align 8
  %13 = load %struct.softdma_softc*, %struct.softdma_softc** %4, align 8
  %14 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_STATUS_REG_EVENT, align 4
  %15 = call i32 @softdma_memc_read(%struct.softdma_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_EVENT_OVERFLOW, align 4
  %18 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_EVENT_UNDERFLOW, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_ERROR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_ERROR_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = and i32 %27, 255
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %22, %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.softdma_softc*, %struct.softdma_softc** %4, align 8
  %34 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_STATUS_REG_EVENT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @softdma_memc_write(%struct.softdma_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %38 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %40 = call i32 @wakeup(%struct.softdma_channel* %39)
  br label %41

41:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @softdma_memc_read(%struct.softdma_softc*, i32) #1

declare dso_local i32 @softdma_memc_write(%struct.softdma_softc*, i32, i32) #1

declare dso_local i32 @wakeup(%struct.softdma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
