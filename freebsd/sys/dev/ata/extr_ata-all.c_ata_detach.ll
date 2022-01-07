; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, i32, %struct.TYPE_2__, i32*, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@ENXIO = common dso_local global i32 0, align 4
@ATA_STALL_QUEUE = common dso_local global i32 0, align 4
@ATA_PERIODIC_POLL = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ata_channel* @device_get_softc(i32 %5)
  store %struct.ata_channel* %6, %struct.ata_channel** %4, align 8
  %7 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %8 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %100

13:                                               ; preds = %1
  %14 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 1
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load i32, i32* @ATA_STALL_QUEUE, align 4
  %18 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %23 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %22, i32 0, i32 1
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ATA_PERIODIC_POLL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %13
  %32 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %32, i32 0, i32 8
  %34 = call i32 @callout_drain(i32* %33)
  br label %35

35:                                               ; preds = %31, %13
  %36 = load i32, i32* @taskqueue_thread, align 4
  %37 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %38 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %37, i32 0, i32 7
  %39 = call i32 @taskqueue_drain(i32 %36, i32* %38)
  %40 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %41 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %40, i32 0, i32 1
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = load i32, i32* @AC_LOST_DEVICE, align 4
  %44 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %45 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @xpt_async(i32 %43, i32 %46, i32* null)
  %48 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %49 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @xpt_free_path(i32 %50)
  %52 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @cam_sim_path(i32* %54)
  %56 = call i32 @xpt_bus_deregister(i32 %55)
  %57 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %58 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @cam_sim_free(i32* %59, i32 %60)
  %62 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %63 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %62, i32 0, i32 5
  store i32* null, i32** %63, align 8
  %64 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %65 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %64, i32 0, i32 1
  %66 = call i32 @mtx_unlock(i32* %65)
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %69 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %72 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bus_teardown_intr(i32 %67, i32* %70, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SYS_RES_IRQ, align 4
  %77 = load i32, i32* @ATA_IRQ_RID, align 4
  %78 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %79 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @bus_release_resource(i32 %75, i32 %76, i32 %77, i32* %80)
  %82 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %83 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %85 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (i32)*, i32 (i32)** %86, align 8
  %88 = icmp ne i32 (i32)* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %35
  %90 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %91 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i32)*, i32 (i32)** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 %93(i32 %94)
  br label %96

96:                                               ; preds = %89, %35
  %97 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %98 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %97, i32 0, i32 1
  %99 = call i32 @mtx_destroy(i32* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %11
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
