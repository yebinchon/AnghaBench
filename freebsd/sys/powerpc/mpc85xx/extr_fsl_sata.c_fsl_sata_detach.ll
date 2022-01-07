; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_sata_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sata_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_sata_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.fsl_sata_channel* @device_get_softc(i32 %4)
  store %struct.fsl_sata_channel* %5, %struct.fsl_sata_channel** %3, align 8
  %6 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load i32, i32* @AC_LOST_DEVICE, align 4
  %10 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %11 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xpt_async(i32 %9, i32 %12, i32* null)
  %14 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xpt_free_path(i32 %16)
  %18 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %19 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cam_sim_path(i32 %20)
  %22 = call i32 @xpt_bus_deregister(i32 %21)
  %23 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @cam_sim_free(i32 %25, i32 %26)
  %28 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %29 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %28, i32 0, i32 1
  %30 = call i32 @mtx_unlock(i32* %29)
  %31 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %32 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %36, i32 0, i32 6
  %38 = call i32 @callout_drain(i32* %37)
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %42 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_teardown_intr(i32 %40, i32 %43, i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @SYS_RES_IRQ, align 4
  %50 = load i32, i32* @ATA_IRQ_RID, align 4
  %51 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %52 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bus_release_resource(i32 %48, i32 %49, i32 %50, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @fsl_sata_deinit(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @fsl_sata_slotsfree(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @fsl_sata_dmafini(i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @SYS_RES_MEMORY, align 4
  %63 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %64 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %67 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bus_release_resource(i32 %61, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %71 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %70, i32 0, i32 1
  %72 = call i32 @mtx_destroy(i32* %71)
  ret i32 0
}

declare dso_local %struct.fsl_sata_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @fsl_sata_deinit(i32) #1

declare dso_local i32 @fsl_sata_slotsfree(i32) #1

declare dso_local i32 @fsl_sata_dmafini(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
