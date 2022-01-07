; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.vmbus_softc*, i32*, i32 }
%struct.vmbus_softc = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@HYPERCALL_PARAM_ALIGN = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"monprm alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"vmbus subchan\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"vmbus chorphan\00", align 1
@vmbus_chan_poll_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmbus_channel* (%struct.vmbus_softc*)* @vmbus_chan_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmbus_channel* @vmbus_chan_alloc(%struct.vmbus_softc* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %3, align 8
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.vmbus_channel* @malloc(i32 56, i32 %5, i32 %8)
  store %struct.vmbus_channel* %9, %struct.vmbus_channel** %4, align 8
  %10 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bus_get_dma_tag(i32 %12)
  %14 = load i32, i32* @HYPERCALL_PARAM_ALIGN, align 4
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %16 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 10
  %17 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %18 = load i32, i32* @BUS_DMA_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i32* @hyperv_dmamem_alloc(i32 %13, i32 %14, i32 0, i32 4, i32* %16, i32 %19)
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %22 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %21, i32 0, i32 9
  store i32* %20, i32** %22, align 8
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %24 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %23, i32 0, i32 9
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %29 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(%struct.vmbus_channel* %32, i32 %33)
  store %struct.vmbus_channel* null, %struct.vmbus_channel** %2, align 8
  br label %66

35:                                               ; preds = %1
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %39 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %40 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %39, i32 0, i32 8
  store %struct.vmbus_softc* %38, %struct.vmbus_softc** %40, align 8
  %41 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %42 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %41, i32 0, i32 7
  %43 = load i32, i32* @MTX_DEF, align 4
  %44 = call i32 @mtx_init(i32* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %43)
  %45 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %46 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %45, i32 0, i32 6
  %47 = call i32 @sx_init(i32* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %49 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %48, i32 0, i32 5
  %50 = call i32 @TAILQ_INIT(i32* %49)
  %51 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %52 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %51, i32 0, i32 4
  %53 = call i32 @vmbus_rxbr_init(i32* %52)
  %54 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %54, i32 0, i32 3
  %56 = call i32 @vmbus_txbr_init(i32* %55)
  %57 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %58 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %57, i32 0, i32 2
  %59 = load i32, i32* @vmbus_chan_poll_task, align 4
  %60 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %61 = call i32 @TASK_INIT(i32* %58, i32 0, i32 %59, %struct.vmbus_channel* %60)
  %62 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %63 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %62, i32 0, i32 1
  %64 = call i32 @callout_init(i32* %63, i32 1)
  %65 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  store %struct.vmbus_channel* %65, %struct.vmbus_channel** %2, align 8
  br label %66

66:                                               ; preds = %35, %27
  %67 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  ret %struct.vmbus_channel* %67
}

declare dso_local %struct.vmbus_channel* @malloc(i32, i32, i32) #1

declare dso_local i32* @hyperv_dmamem_alloc(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @vmbus_rxbr_init(i32*) #1

declare dso_local i32 @vmbus_txbr_init(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.vmbus_channel*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
