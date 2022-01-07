; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_ch_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_ch_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @siis_ch_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_ch_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.siis_channel* @device_get_softc(i32 %4)
  store %struct.siis_channel* %5, %struct.siis_channel** %3, align 8
  %6 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %7 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @led_destroy(i32 %8)
  %10 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %11 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load i32, i32* @AC_LOST_DEVICE, align 4
  %14 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %15 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xpt_async(i32 %13, i32 %16, i32* null)
  %18 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %19 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xpt_free_path(i32 %20)
  %22 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %23 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cam_sim_path(i32 %24)
  %26 = call i32 @xpt_bus_deregister(i32 %25)
  %27 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %28 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @cam_sim_free(i32 %29, i32 %30)
  %32 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %33 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %32, i32 0, i32 0
  %34 = call i32 @mtx_unlock(i32* %33)
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %37 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %40 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bus_teardown_intr(i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load i32, i32* @ATA_IRQ_RID, align 4
  %46 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %47 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @siis_ch_deinit(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @siis_slotsfree(i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @siis_dmafini(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SYS_RES_MEMORY, align 4
  %58 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %59 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %62 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bus_release_resource(i32 %56, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %66 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %65, i32 0, i32 0
  %67 = call i32 @mtx_destroy(i32* %66)
  ret i32 0
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @led_destroy(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @siis_ch_deinit(i32) #1

declare dso_local i32 @siis_slotsfree(i32) #1

declare dso_local i32 @siis_dmafini(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
