; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3cdrom.c_ps3cdrom_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3cdrom.c_ps3cdrom_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3cdrom_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PS3CDROM_MAX_XFERS = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ps3cdrom_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3cdrom_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3cdrom_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ps3cdrom_softc* @device_get_softc(i32 %5)
  store %struct.ps3cdrom_softc* %6, %struct.ps3cdrom_softc** %3, align 8
  %7 = load i32, i32* @AC_LOST_DEVICE, align 4
  %8 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @xpt_async(i32 %7, i32 %10, i32* null)
  %12 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xpt_free_path(i32 %14)
  %16 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @cam_sim_path(i32 %18)
  %20 = call i32 @xpt_bus_deregister(i32 %19)
  %21 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @cam_sim_free(i32 %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %43, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PS3CDROM_MAX_XFERS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bus_dmamap_destroy(i32 %33, i32 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bus_dma_tag_destroy(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bus_teardown_intr(i32 %51, i32 %54, i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @SYS_RES_IRQ, align 4
  %61 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bus_release_resource(i32 %59, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %3, align 8
  %69 = call i32 @PS3CDROM_LOCK_DESTROY(%struct.ps3cdrom_softc* %68)
  ret i32 0
}

declare dso_local %struct.ps3cdrom_softc* @device_get_softc(i32) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @PS3CDROM_LOCK_DESTROY(%struct.ps3cdrom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
