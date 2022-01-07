; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_ch_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_ch_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ahci_channel* @device_get_softc(i32 %4)
  store %struct.ahci_channel* %5, %struct.ahci_channel** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_get_parent(i32 %6)
  %8 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %9 = call i32 @ahci_detached(i32 %7, %struct.ahci_channel* %8)
  %10 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %11 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %10, i32 0, i32 1
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load i32, i32* @AC_LOST_DEVICE, align 4
  %14 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %15 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xpt_async(i32 %13, i32 %16, i32* null)
  %18 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @xpt_release_simq(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xpt_free_path(i32 %33)
  %35 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %36 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @cam_sim_path(i32 %37)
  %39 = call i32 @xpt_bus_deregister(i32 %38)
  %40 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @cam_sim_free(i32 %42, i32 %43)
  %45 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %45, i32 0, i32 1
  %47 = call i32 @mtx_unlock(i32* %46)
  %48 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %49 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %56

52:                                               ; preds = %30
  %53 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %54 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %53, i32 0, i32 7
  %55 = call i32 @callout_drain(i32* %54)
  br label %56

56:                                               ; preds = %52, %30
  %57 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %58 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %57, i32 0, i32 6
  %59 = call i32 @callout_drain(i32* %58)
  %60 = load i32, i32* %2, align 4
  %61 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %62 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %65 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bus_teardown_intr(i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @SYS_RES_IRQ, align 4
  %70 = load i32, i32* @ATA_IRQ_RID, align 4
  %71 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %72 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bus_release_resource(i32 %68, i32 %69, i32 %70, i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @ahci_ch_deinit(i32 %75)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @ahci_slotsfree(i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @ahci_dmafini(i32 %79)
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @SYS_RES_MEMORY, align 4
  %83 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %84 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %87 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bus_release_resource(i32 %81, i32 %82, i32 %85, i32 %88)
  %90 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %91 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %90, i32 0, i32 1
  %92 = call i32 @mtx_destroy(i32* %91)
  ret i32 0
}

declare dso_local %struct.ahci_channel* @device_get_softc(i32) #1

declare dso_local i32 @ahci_detached(i32, %struct.ahci_channel*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @ahci_ch_deinit(i32) #1

declare dso_local i32 @ahci_slotsfree(i32) #1

declare dso_local i32 @ahci_dmafini(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
