; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_enclosure = type { i32, i32, i64, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AHCI_NUM_LEDS = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_em_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_em_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_enclosure*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ahci_enclosure* @device_get_softc(i32 %5)
  store %struct.ahci_enclosure* %6, %struct.ahci_enclosure** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %10 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %7
  %16 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %17 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %27 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %26, i32 0, i32 7
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @led_destroy(i64 %33)
  br label %35

35:                                               ; preds = %25, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %41 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %40, i32 0, i32 1
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = load i32, i32* @AC_LOST_DEVICE, align 4
  %44 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %45 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xpt_async(i32 %43, i32 %46, i32* null)
  %48 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %49 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xpt_free_path(i32 %50)
  %52 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %53 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cam_sim_path(i32 %54)
  %56 = call i32 @xpt_bus_deregister(i32 %55)
  %57 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %58 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @cam_sim_free(i32 %59, i32 %60)
  %62 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %63 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %62, i32 0, i32 1
  %64 = call i32 @mtx_unlock(i32* %63)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @SYS_RES_MEMORY, align 4
  %67 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %68 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @bus_release_resource(i32 %65, i32 %66, i32 0, i64 %69)
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @SYS_RES_MEMORY, align 4
  %73 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %74 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @bus_release_resource(i32 %71, i32 %72, i32 1, i64 %75)
  %77 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %78 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %39
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @SYS_RES_MEMORY, align 4
  %84 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %85 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @bus_release_resource(i32 %82, i32 %83, i32 2, i64 %86)
  br label %88

88:                                               ; preds = %81, %39
  %89 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %3, align 8
  %90 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %89, i32 0, i32 1
  %91 = call i32 @mtx_destroy(i32* %90)
  ret i32 0
}

declare dso_local %struct.ahci_enclosure* @device_get_softc(i32) #1

declare dso_local i32 @led_destroy(i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
